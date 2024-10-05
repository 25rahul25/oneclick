class UserDisplayModel {
  int? code;
  String? status;
  String? message;
  Metadata? metadata;
  List<Data>? data;

  UserDisplayModel(
      {this.code, this.status, this.message, this.metadata, this.data});

  UserDisplayModel.fromJson(Map<String, dynamic> json) {
    code = json['code'];
    status = json['status'];
    message = json['message'];
    metadata = json['metadata'] != null
        ? new Metadata.fromJson(json['metadata'])
        : null;
    if (json['data'] != null) {
      data = <Data>[];
      json['data'].forEach((v) {
        data!.add(new Data.fromJson(v));
      });
    }
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
      data['data'] = this.data!.map((v) => v.toJson()).toList();
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
  String? sId;
  String? name;
  int? contact;
  String? email;
  String? password;
  String? address;
  String? city;
  String? state;
  String? profilePicture;
  int? pincode;
  String? status;
  String? createdAt;
  String? updatedAt;
  int? iV;

  Data(
      {this.sId,
        this.name,
        this.contact,
        this.email,
        this.password,
        this.address,
        this.city,
        this.state,
        this.profilePicture,
        this.pincode,
        this.status,
        this.createdAt,
        this.updatedAt,
        this.iV});

  Data.fromJson(Map<String, dynamic> json) {
    sId = json['_id'];
    name = json['name'];
    contact = json['contact'];
    email = json['email'];
    password = json['password'];
    address = json['address'];
    city = json['city'];
    state = json['state'];
    profilePicture = json['profilePicture'];
    pincode = json['pincode'];
    status = json['status'];
    createdAt = json['createdAt'];
    updatedAt = json['updatedAt'];
    iV = json['__v'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['_id'] = this.sId;
    data['name'] = this.name;
    data['contact'] = this.contact;
    data['email'] = this.email;
    data['password'] = this.password;
    data['address'] = this.address;
    data['city'] = this.city;
    data['state'] = this.state;
    data['profilePicture'] = this.profilePicture;
    data['pincode'] = this.pincode;
    data['status'] = this.status;
    data['createdAt'] = this.createdAt;
    data['updatedAt'] = this.updatedAt;
    data['__v'] = this.iV;
    return data;
  }
}
