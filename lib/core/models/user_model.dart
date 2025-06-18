import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_model.freezed.dart';
part 'user_model.g.dart';

/// User model for the application
@freezed
class UserModel with _$UserModel {
  const factory UserModel({
    required String id,
    required String email,
    required String firstName,
    required String lastName,
    String? profileImageUrl,
    String? phoneNumber,
    DateTime? dateOfBirth,
    String? nationality,
    String? educationLevel,
    String? currentOccupation,
    List<String>? enrolledCourses,
    List<String>? completedTests,
    Map<String, dynamic>? testResults,
    DateTime? createdAt,
    DateTime? updatedAt,
    bool? isActive,
    String? role, // user, admin, instructor
  }) = _UserModel;

  factory UserModel.fromJson(Map<String, dynamic> json) =>
      _$UserModelFromJson(json);
}

/// User profile data for registration
@freezed
class UserRegistrationData with _$UserRegistrationData {
  const factory UserRegistrationData({
    required String email,
    required String password,
    required String firstName,
    required String lastName,
    String? phoneNumber,
    DateTime? dateOfBirth,
    String? nationality,
    String? educationLevel,
    String? currentOccupation,
  }) = _UserRegistrationData;

  factory UserRegistrationData.fromJson(Map<String, dynamic> json) =>
      _$UserRegistrationDataFromJson(json);
}

/// User login data
@freezed
class UserLoginData with _$UserLoginData {
  const factory UserLoginData({
    required String email,
    required String password,
  }) = _UserLoginData;

  factory UserLoginData.fromJson(Map<String, dynamic> json) =>
      _$UserLoginDataFromJson(json);
} 