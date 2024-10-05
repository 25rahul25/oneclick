const BaseController = require("./BaseController");
const BadRequest = require("../errors/BadRequest");
const NotFound = require("../errors/NotFound");
const StartupSchema = require("../model/StartupSchema");
const categorySchema = require("../model/CategorySchema");
const subCategorySchema = require("../model/SubcategorySchema");
const inqubatoincenterschema = require("../model/InqubationcenterSchema");
const jwt = require("jsonwebtoken");
const fs = require("fs");
const mongoose = require("mongoose");
const user = require("../model/UserSchema");
const { constants } = require("crypto");

module.exports = class StartupController extends BaseController {
  async insert(req, res) {
    try {
      const tokenData = req.userdata;

      var imgUrl = "";

      if (req.file) imgUrl = `${req.file.filename}`;

      req.body.startupLogo = imgUrl || "";

      const data = {
        userId: tokenData.id,
        startupName: req.body.startupName,
        address: req.body.address,
        contactNumber: req.body.contactNumber,
        contactPerson: req.body.contactPerson,
        email: req.body.email,
        city: req.body.city,
        state: req.body.state,
        country: req.body.country,
        inqubationCenterId: req.body.inqubationCenterId,
        inqubationCenterCity: req.body.inqubationCenterCity,
        categoryId: req.body.categoryId,
        subcategoryId: req.body.subcategoryId,
        startupLogo: req.body.startupLogo,
        yearOfEstablished: req.body.yearOfEstablished,
        registeredAs: req.body.registeredAs,
        pincode: req.body.pincode,
      };

      const startupData = new StartupSchema(data);

      const startup = await startupData.save();

      return this.sendJSONResponse(
        res,
        "data saved",
        {
          length: 1,
        },
        startup
      );
    } catch (error) {
      if (error instanceof NotFound) {
        throw error;
      }
      return this.sendErrorResponse(req, res, error);
    }
  }

  async displayBasic(req, res) {
    try {
      console.log("suceesss displayBasic");
      const tokenData = req.userdata;

      const data = await StartupSchema.find({ userId: tokenData.id });
      // const filteredData = data.filter((el) => el.startupName === "NC");
      const basicData = data;
      console.log("basicData", basicData);

      return this.sendJSONResponse(
        res,
        "Startup basic information",
        {
          length: 1,
        },
        basicData
      );
    } catch (error) {
      if (error instanceof NotFound) {
        throw error;
      }
      return this.sendErrorResponse(req, res, error);
    }
  }

  async displayDetail(req, res) {
    try {
      const tokenData = req.userdata;
      const startupId = req.query.startupId;

      const data = await StartupSchema.find({ _id: startupId });
      // console.log("data", data);

      console.log("tokenData", tokenData.id);

      let detailData;

      if (data.length !== 0) {
        detailData = await StartupSchema.aggregate([
          {
            $match: {
              _id: mongoose.Types.ObjectId(startupId),
            },
          },
          {
            $addFields: {
              categoryId: { $toObjectId: "$categoryId" },
              subcategoryId: { $toObjectId: "$subcategoryId" },
              inqubationCenterId: { $toObjectId: "$inqubationCenterId" },
            },
          },
          {
            $lookup: {
              from: "categories",
              localField: "categoryId",
              foreignField: "_id",
              as: "category",
            },
          },
          {
            $lookup: {
              from: "subcategories",
              localField: "subcategoryId",
              foreignField: "_id",
              as: "subcategory",
            },
          },
          {
            $lookup: {
              from: "inqubationcenters",
              localField: "inqubationCenterId",
              foreignField: "_id",
              as: "inqubation",
            },
          },
          {
            $lookup: {
              from: "products",
              localField: "_id",
              foreignField: "startupId",
              as: "product",
              pipeline: [
                {
                  $lookup: {
                    from: "reviews",
                    localField: "_id",
                    foreignField: "productId",
                    as: "review",
                    pipeline: [
                      {
                        $lookup: {
                          from: "users",
                          localField: "userId",
                          foreignField: "_id",
                          as: "user",
                        },
                      },
                    ],
                  },
                },
              ],
            },
          },
          {
            $lookup: {
              from: "certificates",
              localField: "_id",
              foreignField: "startupId",
              as: "certificate",
            },
          },
          {
            $lookup: {
              from: "awards",
              localField: "_id",
              foreignField: "startupId",
              as: "award",
            },
          },
        ]);
      }
      console.log("detailData", detailData);
      return this.sendJSONResponse(
        res,
        "Startup detail information",
        {
          length: 1,
        },
        detailData
      );
    } catch (error) {
      if (error instanceof NotFound) {
        throw error;
      }
      return this.sendErrorResponse(req, res, error);
    }
  }

  async edit(req, res) {
    try {
      const tokenData = req.userdata;
      const startup_id = req.query.startup_id;

      const startup = await StartupSchema.findOne({
        userId: tokenData.id,
        _id: startup_id,
      });

      if (!startup) {
        return res.status(400).json({
          message: "Startup not found",
        });
      }

      if (startup.startupLogo) {
        fs.unlinkSync("./storage/images/startup/" + startup.startupLogo);
      }

      const updatedStartup = await StartupSchema.updateOne(
        { _id: startup_id, user_id: tokenData.id },
        {
          $set: {
            startupName: req.body.startupName,
            description: req.body.description,
            startupLogo: req.body.startupLogo,
            address: req.body.address,
            contactNumber: req.body.contactNumber,
            contactPerson: req.body.contactPerson,
            email: req.body.email,
            city: req.body.city,
            state: req.body.state,
            country: req.body.country,
            inqubationCenterId: req.body.inqubationCenterId,
            categoryId: req.body.categoryId,
            subcategoryId: req.body.subcategoryId,
            yearOfEstablished: req.body.yearOfEstablished,
            registeredAs: req.body.registeredAs,
            pincode: req.body.pincode,
          },
        },
        { new: true } // Return the updated document
      );

      return this.sendJSONResponse(
        res,
        "Updated data",
        {
          length: 1,
        },
        updatedStartup
      );
    } catch (error) {
      // Assuming NotFound error is defined elsewhere
      if (error instanceof NotFound) {
        throw error;
      }
      // Assuming sendErrorResponse is defined elsewhere
      return this.sendErrorResponse(req, res, error);
    }
  }

  async display_by_filter(req, res) {
    try {
      const category_id = req.query.category_id;
      const subcategory_id = req.query.subcategory_id;

      const startup = await StartupSchema.find({
        categoryId: category_id,
        subcategoryId: subcategory_id,
      });

      return this.sendJSONResponse(
        res,
        "Updated data",
        {
          length: 1,
        },
        startup
      );
    } catch (error) {
      if (error instanceof NotFound) {
        throw error;
      }
      return this.sendErrorResponse(req, res, error);
    }
  }

  // async displayDetail(req, res) {
  //   try {
  //     const tokenData = req.userdata;
  //     // const product_id = req.query.product_id;

  //     const data = await StartupSchema.find({ userId: tokenData.id });
  //     // console.log("data", data);

  //     console.log("tokenData", tokenData.id);

  //     let detailData;

  //     if (data.length !== 0) {
  //       detailData = await StartupSchema.aggregate([
  //         {
  //           $match: {
  //             userId: mongoose.Types.ObjectId(tokenData.id),
  //           },
  //         },
  //         {
  //           $lookup: {
  //             from: "categories",
  //             localField: "categoryId",
  //             foreignField: "_id",
  //             as: "category",
  //           },
  //         },
  //         {
  //           $lookup: {
  //             from: "subcategories",
  //             localField: "subcategoryId",
  //             foreignField: "_id",
  //             as: "subcategory",
  //           },
  //         },
  //         {
  //           $lookup: {
  //             from: "inqubationcenters",
  //             localField: "inqubationCenterId",
  //             foreignField: "_id",
  //             as: "inqubation",
  //           },
  //         },
  //         {
  //           $lookup: {
  //             from: "products",
  //             localField: "_id",
  //             foreignField: "startupId",
  //             as: "product",
  //             pipeline: [
  //               {
  //                 $lookup: {
  //                   from: "reviews",
  //                   localField: "_id",
  //                   foreignField: "productId",
  //                   as: "review",
  //                   pipeline: [
  //                     {
  //                       $lookup: {
  //                         from: "users",
  //                         localField: "userId",
  //                         foreignField: "_id",
  //                         as: "user",
  //                       },
  //                     },
  //                   ],
  //                 },
  //               },
  //             ],
  //           },
  //         },
  //         {
  //           $lookup: {
  //             from: "certificates",
  //             localField: "_id",
  //             foreignField: "startupId",
  //             as: "certificate",
  //           },
  //         },
  //         {
  //           $lookup: {
  //             from: "awards",
  //             localField: "_id",
  //             foreignField: "startupId",
  //             as: "award",
  //           },
  //         },
  //       ]);
  //     }
  //     console.log("detailData", detailData);
  //     return this.sendJSONResponse(
  //       res,
  //       "Startup detail information",
  //       {
  //         length: 1,
  //       },
  //       detailData
  //     );
  //   } catch (error) {
  //     if (error instanceof NotFound) {
  //       throw error;
  //     }
  //     return this.sendErrorResponse(req, res, error);
  //   }
  // }

  async startup_delete(req, res) {
    try {
      // const tokenData = req.userdata;
      const startup_id = req.query.startup_id;

      const startup = await StartupSchema.findOne({
        _id: startup_id,
      });
      if (!startup) {
        return res.status(400).json({
          message: "Incorrect code",
        });
      }
      const deletestartup = await StartupSchema.deleteOne({ _id: startup_id });

      return this.sendJSONResponse(
        res,
        "Deleted data",
        {
          length: 1,
        },
        deletestartup
      );
    } catch (error) {
      if (error instanceof NotFound) {
        throw error;
      }
      return this.sendErrorResponse(req, res, error);
    }
  }

  async displaycenterId(req, res) {
    try {
      const categories = await categorySchema.find();
      const subcategories = await subCategorySchema.find();
      const inqubationCenters = await inqubatoincenterschema.find();
      return this.sendJSONResponse(
        res,
        "Data found",
        {
          length: 1,
        },
        { categories, subcategories, inqubationCenters }
      );
    } catch (err) {
      if (error instanceof NotFound) {
        throw error;
      }
      return this.sendErrorResponse(req, res, error);
    }
  }
};
