class RegistrationModel {
  int? code;
  String? status;
  String? message;
  Metadata? metadata;
  Data? data;

  RegistrationModel({this.code, this.status, this.message, this.metadata, this.data});
  

  RegistrationModel.fromJson(Map<String, dynamic> json) {
    code = json['code'];
    status = json['status'];
    message = json['message'];
    metadata = json['metadata'] != null ? Metadata.fromJson(json['metadata']) : null;
    data = json['data'] != null ? Data.fromJson(json['data']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['code'] = code;
    data['status'] = status;
    data['message'] = message;
    if (metadata != null) {
      data['metadata'] = metadata!.toJson();
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
    final Map<String, dynamic> data = <String, dynamic>{};
    data['length'] = length;
    return data;
  }
}

class Data {
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
  String? sId;
  String? createdAt;
  String? updatedAt;
  int? iV;

  Data(
      {this.name,
      this.contact,
      this.email,
      this.password,
      this.address,
      this.city,
      this.state,
      this.profilePicture,
      this.pincode,
      this.status,
      this.sId,
      this.createdAt,
      this.updatedAt,
      this.iV});

  Data.fromJson(Map<String, dynamic> json) {
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
    sId = json['_id'];
    createdAt = json['createdAt'];
    updatedAt = json['updatedAt'];
    iV = json['__v'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['name'] = name;
    data['contact'] = contact;
    data['email'] = email;
    data['password'] = password;
    data['address'] = address;
    data['city'] = city;
    data['state'] = state;
    data['profilePicture'] = profilePicture;
    data['pincode'] = pincode;
    data['status'] = status;
    data['_id'] = sId;
    data['createdAt'] = createdAt;
    data['updatedAt'] = updatedAt;
    data['__v'] = iV;
    return data;
  }
}
