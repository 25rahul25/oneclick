const mongoose = require("mongoose");

const inquirySchema = new mongoose.Schema(
  {
    userId: {
      type: mongoose.Schema.Types.ObjectId,
      ref: "User",
    },

    productId: {
      type: mongoose.Schema.Types.ObjectId,
      ref: "Product",
    },
    sellerId: {
      type: mongoose.Schema.Types.ObjectId,
      ref: "Startup",
    },
    name: {
      type: String,
      required: true,
    },
    email: {
      type: String,
      required: true,
    },
    contact: {
      type: String,
      required: true,
    },
    productname: {
      type: String,
      required: true,
    },
    country: {
      type: String,
      required: true,
    },
    state: {
      type: String,
      required: true,
    },
    address: {
      type: String,
      required: true,
    },
    permanentaddress: {
      type: String,
      required: true,
    },
    quantity: {
      type: String,
      required: true,
    },
  },
  {
    timestamps: true,
  }
);

const inquiry = mongoose.model("Inquiry", inquirySchema);

module.exports = inquiry;
