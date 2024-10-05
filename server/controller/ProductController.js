const BaseController = require("./BaseController");
const BadRequest = require("../errors/BadRequest");
const NotFound = require("../errors/NotFound");
const ProductSchema = require("../model/ProductSchema");
const jwt = require("jsonwebtoken");
const mongoose = require("mongoose");
const fs = require("fs");
const { lookup } = require("dns");
const product = require("../model/ProductSchema");

module.exports = class ProductController extends BaseController {
  async insert(req, res) {
    try {
      // const tokenData = req.userdata;

      const data = {
        startupId: req.body.startupId,
        categoryId: req.body.categoryId,
        subcategoryId: req.body.subcategoryId,
        occasion: req.body.occasion,
        shoesname: req.body.shoesname,
        description: req.body.description,
        shoesphotos: req.files ? req.files.map((el) => el.filename) : [],
        productprice: req.body.productprice,
        productcolor: req.body.productcolor,
        productstatus: req.body.productstatus,

        //detailSpecification
        productmodel: req.body.productmodel,
        manufacturerdetail: req.body.manufacturerdetail,
        productweight: req.body.productweight,
        productbrand: req.body.productbrand,
        productsize: req.body.productsize,
        producttype: req.body.producttype,
      };

      var productData = new ProductSchema(data);

      const newProduct = await productData.save();

      return this.sendJSONResponse(
        res,
        "data saved",
        {
          length: 1,
        },
        newProduct
      );
    } catch (error) {
      if (error instanceof NotFound) {
        throw error;
      }
      return this.sendErrorResponse(req, res, error);
    }
  }

  async product_edit(req, res) {
    try {
      const tokenData = req.userdata;

      const product_id = req.query.product_id;
      console.log("product_id", product_id);

      const product = await ProductSchema.findOne({ _id: product_id });

      if (!product) {
        return res.status(400).json({
          message: "Incorrect code",
        });
      }
      console.log("me");

      if (product.photos && Array.isArray(product.photos)) {
        product.photos.forEach((el) => {
          const filePath = path.join(
            __dirname,
            "./storage/images/product/",
            el
          );
          if (fs.existsSync(filePath)) {
            fs.unlinkSync(filePath);
          }
        });
      }

      const newProduct = await ProductSchema.updateOne(
        { _id: product_id },
        {
          $set: {
            startupId: req.body.startupId,
            categoryId: req.body.categoryId,
            subcategoryId: req.body.subcategoryId,
            occasion: req.body.occasion,
            shoesname: req.body.shoesname,
            description: req.body.description,
            shoesphotos: req.files ? req.files.map((el) => el.filename) : [],
            productprice: req.body.productprice,
            productcolor: req.body.productcolor,
            productstatus: req.body.productstatus,

            productmodel: req.body.productmodel,
            manufacturerdetail: req.body.manufacturerdetail,
            productweight: req.body.productweight,
            productbrand: req.body.productbrand,
            productsize: req.body.productsize,
            producttype: req.body.producttype,
          },
        }
      );

      return this.sendJSONResponse(
        res,
        "Category updated",
        {
          length: 1,
        },
        newProduct
      );
    } catch (error) {
      if (error instanceof NotFound) {
        throw error;
      }
      return this.sendErrorResponse(req, res, error);
    }
  }

  async product_delete(req, res) {
    try {
      const tokenData = req.userdata;
      const product_id = req.query.product_id;

      const product = await ProductSchema.findOne({ _id: product_id });

      if (!product) {
        return res.status(400).json({
          message: "Incorrect code",
        });
      }

      if (product.photos && Array.isArray(product.photos)) {
        product.photos.forEach((el) => {
          const filePath = path.join(
            __dirname,
            "./storage/images/product/",
            el
          );
          if (fs.existsSync(filePath)) {
            fs.unlinkSync(filePath);
          }
        });
      }

      const newProduct = await ProductSchema.deleteOne({ _id: product_id });

      return this.sendJSONResponse(
        res,
        "Product deleted",
        {
          length: 1,
        },
        newProduct
      );
    } catch (error) {
      if (error instanceof NotFound) {
        throw error;
      }
      return this.sendErrorResponse(req, res, error);
    }
  }

  async product_displaydetail(req, res) {
    try {
      const tokenData = req.userdata;
      const product_id = req.query.product_id;

      const product = await ProductSchema.aggregate([
        { $match: { _id: mongoose.Types.ObjectId(product_id) } },
        {
          $lookup: {
            from: "reviews",
            localField: "_id",
            foreignField: "productId",
            as: "reviews",
          },
        },
        {
          $lookup: {
            from: "startups",
            localField: "startupId",
            foreignField: "_id",
            as: "startup",
          },
        },
        {
          $unwind: {
            path: "$startup",
            preserveNullAndEmptyArrays: true,
          },
        },
        {
          $lookup: {
            from: "products",
            let: { startupId: "$startupId" },
            pipeline: [
              {
                $match: {
                  $expr: {
                    $and: [
                      { $eq: ["$$startupId", "$startupId"] },
                      { $ne: ["$_id", mongoose.Types.ObjectId(product_id)] },
                    ],
                  },
                },
              },
            ],
            as: "otherProducts",
          },
        },
      ]);

      if (!product || product.length === 0) {
        return res.status(400).json({
          message: "Incorrect code",
        });
      }

      return this.sendJSONResponse(
        res,
        "Product",
        {
          length: 1,
        },
        product
      );
    } catch (error) {
      if (error instanceof NotFound) {
        throw error;
      }
      return this.sendErrorResponse(req, res, error);
    }
  }
  //api for /home2 route on frontend
  async productdisplay_ByCategory(req, res) {
    try {
      const tokenData = req.userdata;
      const categoryId = req.query.categoryId;
      const subcategoryId = req.query.subcategoryId;

      const product = await ProductSchema.find({
        categoryId: categoryId,
        subcategoryId: subcategoryId,
      });
      return this.sendJSONResponse(
        res,
        "Product",
        {
          length: 1,
        },
        product
      );
    } catch (error) {
      if (error instanceof NotFound) {
        throw error;
      }
      return this.sendErrorResponse(req, res, error);
    }
  }
};
