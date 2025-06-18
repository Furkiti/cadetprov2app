// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'course_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CourseModelImpl _$$CourseModelImplFromJson(Map<String, dynamic> json) =>
    _$CourseModelImpl(
      id: json['id'] as String,
      title: json['title'] as String,
      description: json['description'] as String,
      airline: json['airline'] as String,
      category: json['category'] as String,
      price: (json['price'] as num).toDouble(),
      steps: (json['steps'] as List<dynamic>)
          .map((e) => CourseStepModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      imageUrl: json['imageUrl'] as String?,
      videoUrl: json['videoUrl'] as String?,
      duration: (json['duration'] as num?)?.toInt(),
      difficulty: json['difficulty'] as String?,
      prerequisites: (json['prerequisites'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      learningObjectives: (json['learningObjectives'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      metadata: json['metadata'] as Map<String, dynamic>?,
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
      isActive: json['isActive'] as bool?,
      isFeatured: json['isFeatured'] as bool?,
    );

Map<String, dynamic> _$$CourseModelImplToJson(_$CourseModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'description': instance.description,
      'airline': instance.airline,
      'category': instance.category,
      'price': instance.price,
      'steps': instance.steps,
      'imageUrl': instance.imageUrl,
      'videoUrl': instance.videoUrl,
      'duration': instance.duration,
      'difficulty': instance.difficulty,
      'prerequisites': instance.prerequisites,
      'learningObjectives': instance.learningObjectives,
      'metadata': instance.metadata,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
      'isActive': instance.isActive,
      'isFeatured': instance.isFeatured,
    };

_$CourseStepModelImpl _$$CourseStepModelImplFromJson(
        Map<String, dynamic> json) =>
    _$CourseStepModelImpl(
      id: json['id'] as String,
      title: json['title'] as String,
      description: json['description'] as String,
      type: json['type'] as String,
      order: (json['order'] as num).toInt(),
      price: (json['price'] as num?)?.toDouble(),
      content: json['content'] as String?,
      videoUrl: json['videoUrl'] as String?,
      imageUrl: json['imageUrl'] as String?,
      gameConfig: json['gameConfig'] as Map<String, dynamic>?,
      questions: (json['questions'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      timeLimit: (json['timeLimit'] as num?)?.toInt(),
      passingScore: (json['passingScore'] as num?)?.toInt(),
      metadata: json['metadata'] as Map<String, dynamic>?,
    );

Map<String, dynamic> _$$CourseStepModelImplToJson(
        _$CourseStepModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'description': instance.description,
      'type': instance.type,
      'order': instance.order,
      'price': instance.price,
      'content': instance.content,
      'videoUrl': instance.videoUrl,
      'imageUrl': instance.imageUrl,
      'gameConfig': instance.gameConfig,
      'questions': instance.questions,
      'timeLimit': instance.timeLimit,
      'passingScore': instance.passingScore,
      'metadata': instance.metadata,
    };

_$CartItemModelImpl _$$CartItemModelImplFromJson(Map<String, dynamic> json) =>
    _$CartItemModelImpl(
      id: json['id'] as String,
      courseId: json['courseId'] as String,
      title: json['title'] as String,
      price: (json['price'] as num).toDouble(),
      airline: json['airline'] as String,
      imageUrl: json['imageUrl'] as String?,
      addedAt: json['addedAt'] == null
          ? null
          : DateTime.parse(json['addedAt'] as String),
    );

Map<String, dynamic> _$$CartItemModelImplToJson(_$CartItemModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'courseId': instance.courseId,
      'title': instance.title,
      'price': instance.price,
      'airline': instance.airline,
      'imageUrl': instance.imageUrl,
      'addedAt': instance.addedAt?.toIso8601String(),
    };

_$CourseCategoryModelImpl _$$CourseCategoryModelImplFromJson(
        Map<String, dynamic> json) =>
    _$CourseCategoryModelImpl(
      id: json['id'] as String,
      name: json['name'] as String,
      airline: json['airline'] as String,
      description: json['description'] as String?,
      imageUrl: json['imageUrl'] as String?,
      courseCount: (json['courseCount'] as num?)?.toInt(),
      isActive: json['isActive'] as bool?,
    );

Map<String, dynamic> _$$CourseCategoryModelImplToJson(
        _$CourseCategoryModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'airline': instance.airline,
      'description': instance.description,
      'imageUrl': instance.imageUrl,
      'courseCount': instance.courseCount,
      'isActive': instance.isActive,
    };
