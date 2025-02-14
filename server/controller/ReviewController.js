const BaseController = require("./BaseController");
const BadRequest = require("../errors/BadRequest");
const NotFound = require("../errors/NotFound");
const ReviewSchema = require("../model/ReviewSchema");
const jwt = require("jsonwebtoken");

module.exports = class ReviewController extends BaseController {
  async insert(req, res) {
    try {
      const tokenData = req.userdata;

      const data = {
        userId: tokenData.id,
        detail: req.body.detail,
        startupId: req.body.startupId,
        stars: req.body.stars,
        productId: req.body.productId,
      };

      var reviewData = new ReviewSchema(data);

      const newReview = await reviewData.save();

      return this.sendJSONResponse(
        res,
        "data saved",
        {
          length: 1,
        },
        newReview
      );
    } catch (error) {
      if (error instanceof NotFound) {
        throw error;
      }
      return this.sendErrorResponse(req, res, error);
    }
  }

  async review_edit(req, res) {
    try {
      const tokenData = req.userdata;

      const review_id = req.query.review_id;

      const newReview = await ReviewSchema.updateOne(
        { userId: tokenData._id, _id: review_id },
        req.body
      );

      return this.sendJSONResponse(
        res,
        "Updated data",
        {
          length: 1,
        },
        newReview
      );
    } catch (error) {
      if (error instanceof NotFound) {
        throw error;
      }
      return this.sendErrorResponse(req, res, error);
    }
  }

  async review_delete(req, res) {
    try {
      const tokenData = req.userdata;

      const review_id = req.query.review_id;

      const newReview = await ReviewSchema.deleteOne({
        userId: tokenData._id,
        _id: review_id,
      });

      return this.sendJSONResponse(
        res,
        "Review deleted",
        {
          length: 1,
        },
        newReview
      );
    } catch (error) {
      if (error instanceof NotFound) {
        throw error;
      }
      return this.sendErrorResponse(req, res, error);
    }
  }

  async display(req, res) {
    try {
      const tokenData = req.userdata;

      const allReview = await ReviewSchema.find({ userId: tokenData.id });

      return this.sendJSONResponse(
        res,
        "All Reviews",
        {
          length: 1,
        },
        allReview
      );
    } catch (error) {
      if (error instanceof NotFound) {
        throw error;
      }
      return this.sendErrorResponse(req, res, error);
    }
  }
};
