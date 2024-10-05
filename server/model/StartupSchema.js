const mongoose = require("mongoose");

const startupschema = new mongoose.Schema(
  {
    userId: {
      type: mongoose.Schema.Types.ObjectId,
      required: true,
    },
    startupName: {
      type: String,
      required: true,
    },

    address: {
      type: String,
      required: true,
    },

    contactNumber: {
      type: Number,
      required: true,
    },

    contactPerson: {
      type: String,
      required: true,
    },

    email: {
      type: String,
      required: true,
    },

    city: {
      type: String,
      required: true,
    },

    state: {
      type: String,
      required: true,
    },

    country: {
      type: String,
      required: true,
    },

    inqubationCenterId: {
      type: String,
      required: true,
    },

    inqubationCenterCity: {
      type: String,
      required: true,
    },

    categoryId: {
      type: String,
      required: true,
    },
    subcategoryId: {
      type: String,
      required: true,
    },

    startupLogo: {
      type: String,
      required: true,
    },

    yearOfEstablished: {
      type: Number,
      required: true,
    },

    registeredAs: {
      type: String,
      required: true,
    },

    pincode: {
      type: Number,
      required: true,
    },

    status: {
      type: String,
      enum: ["active", "deactive", "block"],
    },
  },
  { timestamps: true }
);

const startup = new mongoose.model("startup", startupschema);

module.exports = startup;
