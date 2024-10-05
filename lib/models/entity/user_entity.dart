// import 'dart:convert';
//
// import 'package:equatable/equatable.dart';
//
// UserEntity userEntityFromJson(String str) =>
//     UserEntity.fromJson(json.decode(str));
//
// String userEntityToJson(UserEntity? data) => json.encode(data!.toJson());
//
// class UserEntity extends Equatable {
//   const UserEntity({
//     required this.id,
//     required this.name,
//     required this.contact,
//     required this.email,
//     required this.password,
//     required this.address,
//     required this.city,
//     required this.state,
//     required this.pincode,
//     required this.status,
//   });
//
//   final String id;
//   final String name;
//   final String contact;
//   final String email;
//   final String password;
//   final String address;
//   final String city;
//   final String state;
//   final String pincode;
//   final String status;
//
//   factory UserEntity.fromJson(Map<String, dynamic> json) => UserEntity(
//         id: json['_id'] as String,
//         name: json['name'] as String,
//         contact: json['contact'] as String,
//         email: json['email'] as String,
//         password: json['password'] as String,
//         address: json['address'] as String,
//         city: json['city'] as String,
//         state: json['state'] as String,
//         pincode: json['pincode'] as String,
//         status: json['status'] as String,
//       );
//
//   Map<String, dynamic> toJson() => {
//         '_id': id,
//         'name': name,
//         'contact': contact,
//         'email': email,
//         'password': password,
//         'address': address,
//         'city': city,
//         'state': state,
//         'pincode': pincode,
//         'status': status,
//       };
//
//   UserEntity copyWith({
//     String? id,
//     String? name,
//     String? contact,
//     String? email,
//     String? password,
//     String? address,
//     String? city,
//     String? state,
//     String? pincode,
//     String? status,
//   }) =>
//       UserEntity(
//         id: id ?? this.id,
//         name: name ?? this.name,
//         contact: contact ?? this.contact,
//         email: email ?? this.email,
//         password: password ?? this.password,
//         address: address ?? this.address,
//         city: city ?? this.city,
//         state: state ?? this.state,
//         pincode: pincode ?? this.pincode,
//         status: status ?? this.status,
//       );
//
//   @override
//   List<Object?> get props => [
//         id,
//         name,
//         contact,
//         email,
//         password,
//         address,
//         city,
//         state,
//         pincode,
//         status,
//       ];
// }
