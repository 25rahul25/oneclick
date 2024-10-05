const BaseController = require("./BaseController");
const NotFound = require("../errors/NotFound");
const UserSchema = require("../model/UserSchema");
const jwt = require("jsonwebtoken");
const fs = require("fs");

module.exports = class UserController extends BaseController {
  async postuser(req, res) {
    try {
      const data = {
        name: req.body.userName,
        contact: req.body.contact,
        email: req.body.email,
        password: req.body.password,
        address: req.body.address,
        city: req.body.city,
        state: req.body.state,
        pincode: req.body.pincode,
        profilePicture: req.file.filename || "",
      };

      const userdata = new UserSchema(data);
      const user = await userdata.save();

      return this.sendJSONResponse(
        res,
        "data saved",
        {
          length: user.length,
        },
        user
      );
    } catch (error) {
      if (error instanceof NotFound) {
        throw error;
      }
      return this.sendErrorResponse(req, res, error);
    }
  }

  // async loguser(req, res) {
  //     try {
  //         const username = req.body.email
  //         const password = req.body.password

  //         const user = await UserSchema.findOne({email: username})

  //         if(user) {
  //             if(user.password === password) {

  //                 const token = jwt.sign({
  //                     _id: user._id,
  //                     name: user.name,
  //                     contact: user.contact,
  //                     email: username,
  //                     password: password,
  //                     address: user.address,
  //                     city: user.city,
  //                     state: user.state,
  //                     pincode: user.pincode,
  //                     status: user.status
  //                 }, process.env.SECRET_KEY);

  //                 user.token = token;

  //             }

  //             return this.sendJSONResponse(
  //                 res,
  //                 "Logged In",
  //                 {
  //                     length: 1
  //                 },
  //                 user.token
  //             );
  //         }

  //     } catch (error) {

  //         if(error instanceof NotFound){
  //             throw error;
  //         }
  //         return this.sendErrorResponse(req, res, error);
  //     }
  // }

  async user_login(req, res) {
    try {
      const useremail = req.body.email;
      const password = req.body.password;

      const user = await UserSchema.find({
        email: useremail,
        password: password,
      });
      // console.log(user);

      if (user.length === 0) {
        throw new Forbidden("email id is not registered");
      }

      const required_data = {
        email: user[0].email,
        id: user[0]._id,
      };

      const token = jwt.sign(required_data, "asd", { expiresIn: "365d" });

      const result = {
        token: token,
      };

      return this.sendJSONResponse(
        res,
        "successfully login",
        {
          length: 1,
        },
        result
      );
    } catch (error) {
      if (error instanceof NotFound) {
        throw error;
      }
      return this.sendErrorResponse(req, res, error);
    }
  }

  async user_display(req, res) {
    try {
      const tokenData = req.userdata;

      const user = await UserSchema.find({ _id: tokenData.id });
      console.log(user);

      if (user.length === 0) {
        throw new Forbidden("You are not a user");
      }

      const user_data = await UserSchema.find({ _id: tokenData.id });

      return this.sendJSONResponse(
        res,
        "user data",
        {
          length: user_data.length,
        },
        user_data
      );
    } catch (error) {
      if (error instanceof NotFound) {
        throw error;
      }
      return this.sendErrorResponse(req, res, error);
    }
  }

  // async displayuser(req, res) {
  //     try {

  //         const tokenData = req.userdata;

  //         res.json({
  //             _id: tokenData._id,
  //             name: tokenData.name,
  //             contact: tokenData.contact,
  //             email: tokenData.email,
  //             password: tokenData.password,
  //             address: tokenData.address,
  //             city: tokenData.city,
  //             state: tokenData.state,
  //             pincode: tokenData.pincode,
  //             status: tokenData.status
  //         });

  //     } catch (error) {
  //         if(error instanceof NotFound){
  //             throw error;
  //         }
  //         return this.sendErrorResponse(req, res, error);
  //     }
  // }

  async edituser(req, res) {
    try {
      const tokenData = req.userdata;

      const user = await UserSchema.findOne({
        _id: tokenData.id,
      });

      if (!user) {
        return res.status(400).json({
          message: "User not found",
        });
      }

      if (user.profilePicture) {
        fs.unlinkSync("./storage/images/profile/" + user.profilePicture);
      }

      const newValues = {
        name: req.body.name,
        contact: req.body.contact,
        email: req.body.email,
        // password: req.body.password,        updated password
        address: req.body.address,
        city: req.body.city,
        state: req.body.state,
        pincode: req.body.pincode,
        profilePicture: req.file ? req.file.filename : "",
      };

      const updatedUser = await UserSchema.updateOne(
        { _id: tokenData.id },
        {
          $set: {
            name: newValues.name,
            contact: newValues.contact,
            email: newValues.email,
            // password: newValues.password,
            address: newValues.address,
            city: newValues.city,
            state: newValues.state,
            pincode: newValues.pincode,
            profilePicture: newValues.profilePicture,
          },
        }
      );

      return this.sendJSONResponse(
        res,
        "User updated",
        {
          length: "1",
        },
        updatedUser
      );
    } catch (error) {
      if (error instanceof NotFound) {
        throw error;
      }
      return this.sendErrorResponse(req, res, error);
    }
  }

  async changepassword(req, res) {
    try {
      const tokenData = req.userdata;
      const oldPassword = req.body.oldpassword;
      const newPassword = req.body.newpassword;

      console.log(oldPassword, newPassword);

      const user = await UserSchema.findOne({ _id: tokenData.id });
      if (!user) {
        return this.sendErrorResponse(req, res, "User not found");
      }
      console.log("not found", user);

      if (oldPassword !== user.password) {
        return this.sendErrorResponse(req, res, "Old password is not correct");
      }
      console.log("not matched");
      user.password = newPassword;
      await user.save();
      console.log("password updated", user.password);

      return this.sendJSONResponse(
        res,
        "Password updated successfully",
        {
          length: 1,
        },
        user
      );
    } catch (error) {
      if (error instanceof NotFound) {
        throw error;
      }
      return this.sendErrorResponse(req, res, error);
    }
  }
};
