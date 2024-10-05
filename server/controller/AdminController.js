const BaseController = require('./BaseController');
const BadRequest = require('../errors/BadRequest');
const NotFound = require('../errors/NotFound');
const AdminSchema = require('../model/AdminSchema');
const jwt = require("jsonwebtoken");


module.exports = class AdminController extends BaseController{

    async postadmin(req,res) {
        try {
            const data = {
                username: req.body.username,
                password: req.body.password
            };
            
            const admindata = new AdminSchema(data)
            const admin = await admindata.save();

            return this.sendJSONResponse(
                res,
                "data saved",
                {
                    length: 1
                },
                admin
            );
        } catch (error) {
            if(error instanceof NotFound){
                throw error;
            }
            return this.sendErrorResponse(req, res, error);
        }
    }

    async logadmin(req,res) {
        try {
            
            const username = req.body.username;
            const password = req.body.password;
          
            const admin = await AdminSchema.findOne({username: username})

            if(admin) {
                if(admin.password === password) {
                    const token = jwt.sign({
                        _id: admin._id,
                        username: admin.username,
                        password: admin.password
                    },  process.env.SECRET_KEY);

                    admin.token = token;
                }
            }

            return this.sendJSONResponse(
                res,
                "Logged In",
                {
                    length: 1
                },
                admin.token
            );
            
        } catch (error) {
            if(error instanceof NotFound){
                throw error;
            }
            return this.sendErrorResponse(req, res, error);
        }
    }

    async changePassword(req,res) {
        try {
            
            const username = req.body.username;
            const oPassword = req.body.password;
            const nPassword = req.body.newPassword;
          
            const admin = await AdminSchema.findOne({username: username})
            
            if(admin) {
                if(admin.password === oPassword) {
                    const newAdmin = await AdminSchema.updateOne({username: username}, {$set: {password: nPassword}});

                    if(newAdmin) {
                        return this.sendJSONResponse(
                            res,
                            "Password changed",
                            {
                                length: 1
                            },
                            newAdmin
                        );
                    }
                }
            }

        } catch (error) {
            if(error instanceof NotFound){
                throw error;
            }
            return this.sendErrorResponse(req, res, error);
        }
    }

    async forgetPassword(req,res) {
        try {
            
            const username = req.body.username;
          
            const admin = await AdminSchema.findOne({username: username})
            
            if(admin) {
                return this.sendJSONResponse(
                    res,
                    "Mail sent",
                    {
                        length: 1
                    },
                    admin
                );
            }

        } catch (error) {
            if(error instanceof NotFound){
                throw error;
            }
            return this.sendErrorResponse(req, res, error);
        }
    }
}