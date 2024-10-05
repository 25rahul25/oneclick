var express = require('express');
var router = express.Router();
const AdminController = require('../controller/AdminController');
const admincontroller = new AdminController();

router.post('/register', (req, res) => admincontroller.postadmin(req, res));
router.post('/login', (req, res) => admincontroller.logadmin(req, res));
router.post('/changePassword', (req, res) => admincontroller.changePassword(req, res));
router.post('/forgetPassword', (req, res) => admincontroller.forgetPassword(req, res));


module.exports = router;