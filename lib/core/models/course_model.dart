import 'package:freezed_annotation/freezed_annotation.dart';

part 'course_model.freezed.dart';
part 'course_model.g.dart';

/// Course model for the application
@freezed
class CourseModel with _$CourseModel {
  const factory CourseModel({
    required String id,
    required String title,
    required String description,
    required String airline,
    required String category,
    required double price,
    required List<CourseStepModel> steps,
    String? imageUrl,
    String? videoUrl,
    int? duration, // in minutes
    String? difficulty, // beginner, intermediate, advanced
    List<String>? prerequisites,
    List<String>? learningObjectives,
    Map<String, dynamic>? metadata,
    DateTime? createdAt,
    DateTime? updatedAt,
    bool? isActive,
    bool? isFeatured,
  }) = _CourseModel;

  factory CourseModel.fromJson(Map<String, dynamic> json) =>
      _$CourseModelFromJson(json);
}

/// Course step model
@freezed
class CourseStepModel with _$CourseStepModel {
  const factory CourseStepModel({
    required String id,
    required String title,
    required String description,
    required String type, // test, video, reading, game
    required int order,
    double? price,
    String? content,
    String? videoUrl,
    String? imageUrl,
    Map<String, dynamic>? gameConfig,
    List<String>? questions,
    int? timeLimit, // in seconds
    int? passingScore,
    Map<String, dynamic>? metadata,
  }) = _CourseStepModel;

  factory CourseStepModel.fromJson(Map<String, dynamic> json) =>
      _$CourseStepModelFromJson(json);
}

/// Cart item model
@freezed
class CartItemModel with _$CartItemModel {
  const factory CartItemModel({
    required String id,
    required String courseId,
    required String title,
    required double price,
    required String airline,
    String? imageUrl,
    DateTime? addedAt,
  }) = _CartItemModel;

  factory CartItemModel.fromJson(Map<String, dynamic> json) =>
      _$CartItemModelFromJson(json);
}

/// Course category model
@freezed
class CourseCategoryModel with _$CourseCategoryModel {
  const factory CourseCategoryModel({
    required String id,
    required String name,
    required String airline,
    String? description,
    String? imageUrl,
    int? courseCount,
    bool? isActive,
  }) = _CourseCategoryModel;

  factory CourseCategoryModel.fromJson(Map<String, dynamic> json) =>
      _$CourseCategoryModelFromJson(json);
}

// TODO: Implement CourseModel for course data structure.
// class CourseModel {
//   final String title;
//   // Add other properties as needed
//   CourseModel({required this.title});
// } 