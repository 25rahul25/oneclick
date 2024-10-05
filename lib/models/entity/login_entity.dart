// import 'dart:convert';
//
// import 'package:equatable/equatable.dart';
//
// LoginEntity loginEntityFromJson(String str) => LoginEntity.fromJson(json.decode(str));
//
// String loginEntityToJson(LoginEntity? data) => json.encode(data!.toJson());
//
// class LoginEntity extends Equatable{
//   const LoginEntity({
//     required this.code,
//     required this.status,
//     required this.message,
//     required this.data,
//   });
//
//   final int code;
//   final String status;
//   final String message;
//   final String data;
//
//   LoginEntity copyWith({
//     int? code,
//     String? status,
//     String? message,
//     String? data,
//   }) =>
//       LoginEntity(
//         code: code ?? this.code,
//         status: status ?? this.status,
//         message: message ?? this.message,
//         data: data ?? this.data,
//       );
//
//   factory LoginEntity.fromJson(Map<String, dynamic> json) => LoginEntity(
//     code: json["code"],
//     status: json["status"],
//     message: json["message"],
//     data: json["data"],
//   );
//
//   Map<String, dynamic> toJson() => {
//     "code": code,
//     "status": status,
//     "message": message,
//     "data": data,
//   };
//   @override
//   List<Object?> get props => [
//     code,
//     status,
//     message,
//     data,
//   ];
// }
