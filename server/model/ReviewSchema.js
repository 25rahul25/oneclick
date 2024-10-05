const mongoose = require("mongoose");

const reviewschema = new mongoose.Schema({
    stars: {
        type: Number,
        required: true
    },

    userId: {
        type:mongoose.Schema.Types.ObjectId,
        required: true
    },

    detail: {
        type: String
    },

    startupId: {
        // type: String
        type:mongoose.Schema.Types.ObjectId
    },

    productId: {
        // type: String
        type:mongoose.Schema.Types.ObjectId
    },

},{timestamps: true})

const review = new mongoose.model('review', reviewschema);

module.exports = review;