var createError = require("http-errors");
var express = require("express");
var path = require("path");
var app = express();
var logger = require("morgan");
var mongoCon = require("./config/db");
var bodyParser = require("body-parser");
var cors = require("cors");

// Routers
var admin_router = require("./router/AdminRouter");
var user_router = require("./router/UserRouter");
var category_router = require("./router/CategoryRouter");
var subcategory_router = require("./router/SubcategoryRouter");
var feedback_router = require("./router/FeedbackRouter");
var startup_router = require("./router/StartupRouter");
var product_router = require("./router/ProductRouter");
var review_router = require("./router/ReviewRouter");
var inqubation_router = require("./router/InqubationRouter");
var inquiry_router = require("./router/InquiriesRouter");
var award_router = require("./router/AwardRouter");
var certificate_router = require("./router/CertificateRouter");

var app = express();
var logger = require("morgan");
var mongoCon = require("./config/db");

app.use(cors());

// view engine setup
app.set("views", path.join(__dirname, "views"));
app.set("view engine", "ejs");

//set view image
app.use("/", express.static("public/"));

app.use(logger("dev"));
app.use(express.json());
app.use(express.urlencoded({ extended: true }));
// app.use(cookieParser());
app.use(express.static(path.join(__dirname, "public")));
app.use(bodyParser.json());

app.use("/api/admin", admin_router);
app.use("/api/user", user_router);
app.use("/api/category", category_router);
app.use("/api/subcategory", subcategory_router);
app.use("/api/feedback", feedback_router);
app.use("/api/startup", startup_router);
app.use("/api/product", product_router);
app.use("/api/review", review_router);
app.use("/api/inqubation", inqubation_router);
app.use("/api/inquiry", inquiry_router);
app.use("/api/award", award_router);
app.use("/api/certificate", certificate_router);
// catch 404 and forward to error handler

app.use(function (req, res, next) {
  next(createError(404));
});

// error handler
app.use(function (err, req, res, next) {
  // set locals, only providing error in development
  res.locals.message = err.message;
  res.locals.error = req.app.get("env") === "development" ? err : {};

  // render the error page
  res.status(err.status || 500);
  console.log(err.message);
  // res.render('error');
});

module.exports = app;
