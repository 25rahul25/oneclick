const mongoose = require("mongoose");

const userSchema = new mongoose.Schema(
  {
    name: {
      type: String,
      required: true,
      maxlength: 100,
    },

    contact: {
      type: Number,
      required: true,
      maxlength: 10,
      unique: 1,
    },

    email: {
      type: String,
      required: true,
      trim: true,
    },

    password: {
      type: String,
      // required: true,
      minlength: 8,
    },

    address: {
      type: String,
      required: true,
      maxlength: 300,
    },

    city: {
      type: String,
      required: true,
      maxlength: 100,
    },

    state: {
      type: String,
      required: true,
      maxlength: 100,
    },

    profilePicture: {
      type: String,
      default:
        "https://t3.ftcdn.net/jpg/03/64/62/36/240_F_364623624_eTeYrOr8oM08nsPPEmV8gGb60E0MK5vp.webp",
    },

    pincode: {
      type: Number,
    },

    status: {
      type: String,
      enum: ["active", "deactive", "block", "pending"],
      default: "active",
    },
  },
  { timestamps: true }
);

const user = new mongoose.model("user", userSchema);

module.exports = user;
