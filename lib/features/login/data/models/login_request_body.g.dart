// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_request_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LoginRequstBody _$LoginRequstBodyFromJson(Map<String, dynamic> json) =>
    LoginRequstBody(
      email: json['email'] as String,
      password: json['password'] as String,
    );

Map<String, dynamic> _$LoginRequstBodyToJson(LoginRequstBody instance) =>
    <String, dynamic>{
      'email': instance.email,
      'password': instance.password,
    };
