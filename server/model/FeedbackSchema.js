const mongoose = require("mongoose");

const feedbackschema = new mongoose.Schema(
  {
    userId: {
      type: String,
      required: true,
    },

    feedbackType: {
      type: String,
      required: true,
    },

    feedbackDecription: {
      type: String,
      required: true,
    },
  },
  { timestamps: true }
);

const feedback = new mongoose.model("feedback", feedbackschema);

module.exports = feedback;
