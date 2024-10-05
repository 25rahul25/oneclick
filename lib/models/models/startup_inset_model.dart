class StartUpInsertModel {
  int? code;
  String? status;
  String? message;
  Metadata? metadata;
  Data? data;

  StartUpInsertModel(
      {this.code, this.status, this.message, this.metadata, this.data});

  StartUpInsertModel.fromJson(Map<String, dynamic> json) {
    code = json['code'];
    status = json['status'];
    message = json['message'];
    metadata = json['metadata'] != null
        ? new Metadata.fromJson(json['metadata'])
        : null;
    data = json['data'] != null ? new Data.fromJson(json['data']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['code'] = this.code;
    data['status'] = this.status;
    data['message'] = this.message;
    if (this.metadata != null) {
      data['metadata'] = this.metadata!.toJson();
    }
    if (this.data != null) {
      data['data'] = this.data!.toJson();
    }
    return data;
  }
}

class Metadata {
  int? length;

  Metadata({this.length});

  Metadata.fromJson(Map<String, dynamic> json) {
    length = json['length'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['length'] = this.length;
    return data;
  }
}

class Data {
  String? userId;
  String? startupName;
  String? address;
  int? contactNumber;
  String? contactPerson;
  String? email;
  String? city;
  String? state;
  String? country;
  String? inqubationCenterId;
  String? inqubationCenterCity;
  String? categoryId;
  String? subcategoryId;
  String? startupLogo;
  int? yearOfEstablished;
  String? registeredAs;
  int? pincode;
  String? sId;
  String? createdAt;
  String? updatedAt;
  int? iV;

  Data(
      {this.userId,
        this.startupName,
        this.address,
        this.contactNumber,
        this.contactPerson,
        this.email,
        this.city,
        this.state,
        this.country,
        this.inqubationCenterId,
        this.inqubationCenterCity,
        this.categoryId,
        this.subcategoryId,
        this.startupLogo,
        this.yearOfEstablished,
        this.registeredAs,
        this.pincode,
        this.sId,
        this.createdAt,
        this.updatedAt,
        this.iV});

  Data.fromJson(Map<String, dynamic> json) {
    userId = json['userId'];
    startupName = json['startupName'];
    address = json['address'];
    contactNumber = json['contactNumber'];
    contactPerson = json['contactPerson'];
    email = json['email'];
    city = json['city'];
    state = json['state'];
    country = json['country'];
    inqubationCenterId = json['inqubationCenterId'];
    inqubationCenterCity = json['inqubationCenterCity'];
    categoryId = json['categoryId'];
    subcategoryId = json['subcategoryId'];
    startupLogo = json['startupLogo'];
    yearOfEstablished = json['yearOfEstablished'];
    registeredAs = json['registeredAs'];
    pincode = json['pincode'];
    sId = json['_id'];
    createdAt = json['createdAt'];
    updatedAt = json['updatedAt'];
    iV = json['__v'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['userId'] = this.userId;
    data['startupName'] = this.startupName;
    data['address'] = this.address;
    data['contactNumber'] = this.contactNumber;
    data['contactPerson'] = this.contactPerson;
    data['email'] = this.email;
    data['city'] = this.city;
    data['state'] = this.state;
    data['country'] = this.country;
    data['inqubationCenterId'] = this.inqubationCenterId;
    data['inqubationCenterCity'] = this.inqubationCenterCity;
    data['categoryId'] = this.categoryId;
    data['subcategoryId'] = this.subcategoryId;
    data['startupLogo'] = this.startupLogo;
    data['yearOfEstablished'] = this.yearOfEstablished;
    data['registeredAs'] = this.registeredAs;
    data['pincode'] = this.pincode;
    data['_id'] = this.sId;
    data['createdAt'] = this.createdAt;
    data['updatedAt'] = this.updatedAt;
    data['__v'] = this.iV;
    return data;
  }
}
