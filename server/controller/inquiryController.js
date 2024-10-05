const BaseController = require("./BaseController");
const NotFound = require("../errors/NotFound");
const inquirySchema = require("../model/inquirySchema");
const jwt = require("jsonwebtoken");
const mongoose = require("mongoose");

module.exports = class UserController extends BaseController {
  // async insert(req, res) {
  //   try {
  //     const tokenData = req.userdata;
  //     const data = {
  //       userId: tokenData.id,
  //       companyId: req.body.companyId,
  //       date: req.body.date,
  //       time: req.body.time,
  //       details: req.body.details,
  //     };

  //     const inquirydata = new inquirySchema(data);
  //     const inquiry = await inquirydata.save();

  //     return this.sendJSONResponse(
  //       res,
  //       "inquiry",
  //       {
  //         length: 1,
  //       },
  //       inquiry
  //     );
  //   } catch (error) {
  //     if (error instanceof NotFound) {
  //       throw error;
  //     }
  //     return this.sendErrorResponse(req, res, error);
  //   }
  // }

  async buying_inquiry(req, res) {
    try {
      const tokenData = req.userdata;
      const data = {
        userId: tokenData.id,
        productId: req.body.productId,
        sellerId: req.body.sellerId, //in collection of startup, there is a field of userId
        name: req.body.name,
        email: req.body.email,
        contact: req.body.contact,
        productname: req.body.productname,
        country: req.body.country,
        state: req.body.state,
        address: req.body.address,
        permanentaddress: req.body.permanentaddress,
        quantity: req.body.quantity,
      };

      const inquirydata = new inquirySchema(data);
      const buyinginquiry = await inquirydata.save();

      return this.sendJSONResponse(
        res,
        "All inquiries",
        {
          length: 1,
        },
        buyinginquiry
      );
    } catch (error) {
      if (error instanceof NotFound) {
        throw error;
      }
      return this.sendErrorResponse(req, res, error);
    }
  }

  async selling_inquiry(req, res) {
    try {
      const tokenData = req.userdata;
      const sellerId = tokenData.id;

      const inquiries = await inquirySchema.aggregate([
        {
          $match: {
            sellerId: mongoose.Types.ObjectId(sellerId),
          },
        },
        {
          $lookup: {
            from: "products",
            localField: "productId",
            foreignField: "_id",
            as: "productData",
          },
        },
        {
          $unwind: "$productData",
        },
      ]);

      return this.sendJSONResponse(
        res,
        "Inquiries",
        {
          length: 1,
        },
        inquiries
      );
    } catch (error) {
      if (error instanceof NotFound) {
        throw error;
      }
      return this.sendErrorResponse(req, res, error);
    }
  }
};
