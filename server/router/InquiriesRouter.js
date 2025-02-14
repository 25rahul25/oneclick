var express = require("express");
var router = express.Router();
const inquiryController = require("../controller/inquiryController");
const inqurycontroller = new inquiryController();

const auth = require("../middleware/auth");

router.post("/insert", auth, (req, res) => inqurycontroller.insert(req, res));
router.post("/buyingInquiry", auth, (req, res) =>
  inqurycontroller.buying_inquiry(req, res)
);
router.get("/sellingInquiry", auth, (req, res) =>
  inqurycontroller.selling_inquiry(req, res)
);

module.exports = router;
