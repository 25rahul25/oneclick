const BaseController = require("./BaseController");
const NotFound = require("../errors/NotFound");
const certificateSchema = require("../model/certificateSchema");
const jwt = require("jsonwebtoken");
const fs = require("fs");

module.exports = class UserController extends BaseController {
  async insert(req, res) {
    try {
      const tokenData = req.userdata;
      const data = {
        userId: tokenData.id,
        startupId: req.body.startupId,
        certificateName: req.body.certificateName,
        competitionName: req.body.competitionName,
        certificateYear: req.body.certificateYear,
        certificatePlace: req.body.certificatePlace,
        description: req.body.description,
        photos: req.file ? req.file.filename : "",
      };

      const certificatedata = new certificateSchema(data);
      const certificate = await certificatedata.save();

      return this.sendJSONResponse(
        res,
        "certificate",
        {
          length: 1,
        },
        certificate
      );
    } catch (error) {
      if (error instanceof NotFound) {
        throw error;
      }
      return this.sendErrorResponse(req, res, error);
    }
  }

  async cerificate_displaybasic(req, res) {
    try {
      const tokenData = req.userdata;
      // const adminId = tokenData._id;

      const data = await certificateSchema
        .find({ userId: tokenData.id })
        .sort({ updatedAt: -1 });

      return this.sendJSONResponse(
        res,
        "All certificates",
        {
          length: 1,
        },
        data
      );
    } catch (error) {
      if (error instanceof NotFound) {
        throw error;
      }
      return this.sendErrorResponse(req, res, error);
    }
  }

  async certificate_edit(req, res) {
    try {
      const tokenData = req.userdata;

      const certificate_id = req.query.certificate_id;

      const certificate = await certificateSchema.findOne({
        _id: certificate_id,
      });

      if (!certificate) {
        return res.status(400).json({
          message: "Incorrect code",
        });
      }

      if (certificate.photos) {
        fs.unlinkSync("./storage/images/certificate/" + certificate.photos);
      }

      const newCertificate = await certificateSchema.updateOne(
        { _id: certificate_id },
        {
          $set: {
            certicertificateName: req.certificateName,
            competitionName: req.body.competitionName,
            certicertificateYear: req.certificateYear,
            certicertificatePlace: req.certificatePlace,
            description: req.body.description,
            photos: req.file ? req.file.filename : "",
          },
        }
      );

      return this.sendJSONResponse(
        res,
        "certificate",
        {
          length: 1,
        },
        newCertificate
      );
    } catch (error) {
      if (error instanceof NotFound) {
        throw error;
      }
      return this.sendErrorResponse(req, res, error);
    }
  }

  async certificate_delete(req, res) {
    try {
      const tokenData = req.userdata;
      const certificate_id = req.query.certificate_id;

      const certificate = await certificateSchema.findOne({
        _id: certificate_id,
      });

      if (!certificate) {
        return res.status(400).json({
          message: "Incorrect code",
        });
      }

      const photosInfo = certificate.photos.forEach((el) => {
        fs.unlinkSync("./storage/images/certificate/" + el);
      });

      const newCertificate = await certificateSchema.deleteOne({
        _id: certificate_id,
      });

      return this.sendJSONResponse(
        res,
        "certificate",
        {
          length: 1,
        },
        newCertificate
      );
    } catch (error) {
      if (error instanceof NotFound) {
        throw error;
      }
      return this.sendErrorResponse(req, res, error);
    }
  }
  async getCertificateById(req, res) {
    try {
      const certificate_id = req.query.certificate_id;

      const certificate = await certificateSchema.findOne({
        _id: certificate_id,
      });

      if (!certificate) {
        return res.status(400).json({
          message: "Certificate not found",
        });
      }

      return this.sendJSONResponse(
        res,
        "Certificate",
        {
          length: 1,
        },
        certificate
      );
    } catch (error) {
      if (error instanceof NotFound) {
        throw error;
      }
      return this.sendErrorResponse(req, res, error);
    }
  }
};
