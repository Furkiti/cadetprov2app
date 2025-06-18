// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserModelImpl _$$UserModelImplFromJson(Map<String, dynamic> json) =>
    _$UserModelImpl(
      id: json['id'] as String,
      email: json['email'] as String,
      firstName: json['firstName'] as String,
      lastName: json['lastName'] as String,
      profileImageUrl: json['profileImageUrl'] as String?,
      phoneNumber: json['phoneNumber'] as String?,
      dateOfBirth: json['dateOfBirth'] == null
          ? null
          : DateTime.parse(json['dateOfBirth'] as String),
      nationality: json['nationality'] as String?,
      educationLevel: json['educationLevel'] as String?,
      currentOccupation: json['currentOccupation'] as String?,
      enrolledCourses: (json['enrolledCourses'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      completedTests: (json['completedTests'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      testResults: json['testResults'] as Map<String, dynamic>?,
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
      isActive: json['isActive'] as bool?,
      role: json['role'] as String?,
    );

Map<String, dynamic> _$$UserModelImplToJson(_$UserModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'email': instance.email,
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'profileImageUrl': instance.profileImageUrl,
      'phoneNumber': instance.phoneNumber,
      'dateOfBirth': instance.dateOfBirth?.toIso8601String(),
      'nationality': instance.nationality,
      'educationLevel': instance.educationLevel,
      'currentOccupation': instance.currentOccupation,
      'enrolledCourses': instance.enrolledCourses,
      'completedTests': instance.completedTests,
      'testResults': instance.testResults,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
      'isActive': instance.isActive,
      'role': instance.role,
    };

_$UserRegistrationDataImpl _$$UserRegistrationDataImplFromJson(
        Map<String, dynamic> json) =>
    _$UserRegistrationDataImpl(
      email: json['email'] as String,
      password: json['password'] as String,
      firstName: json['firstName'] as String,
      lastName: json['lastName'] as String,
      phoneNumber: json['phoneNumber'] as String?,
      dateOfBirth: json['dateOfBirth'] == null
          ? null
          : DateTime.parse(json['dateOfBirth'] as String),
      nationality: json['nationality'] as String?,
      educationLevel: json['educationLevel'] as String?,
      currentOccupation: json['currentOccupation'] as String?,
    );

Map<String, dynamic> _$$UserRegistrationDataImplToJson(
        _$UserRegistrationDataImpl instance) =>
    <String, dynamic>{
      'email': instance.email,
      'password': instance.password,
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'phoneNumber': instance.phoneNumber,
      'dateOfBirth': instance.dateOfBirth?.toIso8601String(),
      'nationality': instance.nationality,
      'educationLevel': instance.educationLevel,
      'currentOccupation': instance.currentOccupation,
    };

_$UserLoginDataImpl _$$UserLoginDataImplFromJson(Map<String, dynamic> json) =>
    _$UserLoginDataImpl(
      email: json['email'] as String,
      password: json['password'] as String,
    );

Map<String, dynamic> _$$UserLoginDataImplToJson(_$UserLoginDataImpl instance) =>
    <String, dynamic>{
      'email': instance.email,
      'password': instance.password,
    };
