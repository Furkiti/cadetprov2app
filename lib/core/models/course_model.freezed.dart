// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'course_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CourseModel _$CourseModelFromJson(Map<String, dynamic> json) {
  return _CourseModel.fromJson(json);
}

/// @nodoc
mixin _$CourseModel {
  String get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  String get airline => throw _privateConstructorUsedError;
  String get category => throw _privateConstructorUsedError;
  double get price => throw _privateConstructorUsedError;
  List<CourseStepModel> get steps => throw _privateConstructorUsedError;
  String? get imageUrl => throw _privateConstructorUsedError;
  String? get videoUrl => throw _privateConstructorUsedError;
  int? get duration => throw _privateConstructorUsedError; // in minutes
  String? get difficulty =>
      throw _privateConstructorUsedError; // beginner, intermediate, advanced
  List<String>? get prerequisites => throw _privateConstructorUsedError;
  List<String>? get learningObjectives => throw _privateConstructorUsedError;
  Map<String, dynamic>? get metadata => throw _privateConstructorUsedError;
  DateTime? get createdAt => throw _privateConstructorUsedError;
  DateTime? get updatedAt => throw _privateConstructorUsedError;
  bool? get isActive => throw _privateConstructorUsedError;
  bool? get isFeatured => throw _privateConstructorUsedError;

  /// Serializes this CourseModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CourseModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CourseModelCopyWith<CourseModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CourseModelCopyWith<$Res> {
  factory $CourseModelCopyWith(
          CourseModel value, $Res Function(CourseModel) then) =
      _$CourseModelCopyWithImpl<$Res, CourseModel>;
  @useResult
  $Res call(
      {String id,
      String title,
      String description,
      String airline,
      String category,
      double price,
      List<CourseStepModel> steps,
      String? imageUrl,
      String? videoUrl,
      int? duration,
      String? difficulty,
      List<String>? prerequisites,
      List<String>? learningObjectives,
      Map<String, dynamic>? metadata,
      DateTime? createdAt,
      DateTime? updatedAt,
      bool? isActive,
      bool? isFeatured});
}

/// @nodoc
class _$CourseModelCopyWithImpl<$Res, $Val extends CourseModel>
    implements $CourseModelCopyWith<$Res> {
  _$CourseModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CourseModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? description = null,
    Object? airline = null,
    Object? category = null,
    Object? price = null,
    Object? steps = null,
    Object? imageUrl = freezed,
    Object? videoUrl = freezed,
    Object? duration = freezed,
    Object? difficulty = freezed,
    Object? prerequisites = freezed,
    Object? learningObjectives = freezed,
    Object? metadata = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? isActive = freezed,
    Object? isFeatured = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      airline: null == airline
          ? _value.airline
          : airline // ignore: cast_nullable_to_non_nullable
              as String,
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
      steps: null == steps
          ? _value.steps
          : steps // ignore: cast_nullable_to_non_nullable
              as List<CourseStepModel>,
      imageUrl: freezed == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      videoUrl: freezed == videoUrl
          ? _value.videoUrl
          : videoUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      duration: freezed == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as int?,
      difficulty: freezed == difficulty
          ? _value.difficulty
          : difficulty // ignore: cast_nullable_to_non_nullable
              as String?,
      prerequisites: freezed == prerequisites
          ? _value.prerequisites
          : prerequisites // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      learningObjectives: freezed == learningObjectives
          ? _value.learningObjectives
          : learningObjectives // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      metadata: freezed == metadata
          ? _value.metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      isActive: freezed == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool?,
      isFeatured: freezed == isFeatured
          ? _value.isFeatured
          : isFeatured // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CourseModelImplCopyWith<$Res>
    implements $CourseModelCopyWith<$Res> {
  factory _$$CourseModelImplCopyWith(
          _$CourseModelImpl value, $Res Function(_$CourseModelImpl) then) =
      __$$CourseModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String title,
      String description,
      String airline,
      String category,
      double price,
      List<CourseStepModel> steps,
      String? imageUrl,
      String? videoUrl,
      int? duration,
      String? difficulty,
      List<String>? prerequisites,
      List<String>? learningObjectives,
      Map<String, dynamic>? metadata,
      DateTime? createdAt,
      DateTime? updatedAt,
      bool? isActive,
      bool? isFeatured});
}

/// @nodoc
class __$$CourseModelImplCopyWithImpl<$Res>
    extends _$CourseModelCopyWithImpl<$Res, _$CourseModelImpl>
    implements _$$CourseModelImplCopyWith<$Res> {
  __$$CourseModelImplCopyWithImpl(
      _$CourseModelImpl _value, $Res Function(_$CourseModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of CourseModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? description = null,
    Object? airline = null,
    Object? category = null,
    Object? price = null,
    Object? steps = null,
    Object? imageUrl = freezed,
    Object? videoUrl = freezed,
    Object? duration = freezed,
    Object? difficulty = freezed,
    Object? prerequisites = freezed,
    Object? learningObjectives = freezed,
    Object? metadata = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? isActive = freezed,
    Object? isFeatured = freezed,
  }) {
    return _then(_$CourseModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      airline: null == airline
          ? _value.airline
          : airline // ignore: cast_nullable_to_non_nullable
              as String,
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
      steps: null == steps
          ? _value._steps
          : steps // ignore: cast_nullable_to_non_nullable
              as List<CourseStepModel>,
      imageUrl: freezed == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      videoUrl: freezed == videoUrl
          ? _value.videoUrl
          : videoUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      duration: freezed == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as int?,
      difficulty: freezed == difficulty
          ? _value.difficulty
          : difficulty // ignore: cast_nullable_to_non_nullable
              as String?,
      prerequisites: freezed == prerequisites
          ? _value._prerequisites
          : prerequisites // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      learningObjectives: freezed == learningObjectives
          ? _value._learningObjectives
          : learningObjectives // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      metadata: freezed == metadata
          ? _value._metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      isActive: freezed == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool?,
      isFeatured: freezed == isFeatured
          ? _value.isFeatured
          : isFeatured // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CourseModelImpl implements _CourseModel {
  const _$CourseModelImpl(
      {required this.id,
      required this.title,
      required this.description,
      required this.airline,
      required this.category,
      required this.price,
      required final List<CourseStepModel> steps,
      this.imageUrl,
      this.videoUrl,
      this.duration,
      this.difficulty,
      final List<String>? prerequisites,
      final List<String>? learningObjectives,
      final Map<String, dynamic>? metadata,
      this.createdAt,
      this.updatedAt,
      this.isActive,
      this.isFeatured})
      : _steps = steps,
        _prerequisites = prerequisites,
        _learningObjectives = learningObjectives,
        _metadata = metadata;

  factory _$CourseModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$CourseModelImplFromJson(json);

  @override
  final String id;
  @override
  final String title;
  @override
  final String description;
  @override
  final String airline;
  @override
  final String category;
  @override
  final double price;
  final List<CourseStepModel> _steps;
  @override
  List<CourseStepModel> get steps {
    if (_steps is EqualUnmodifiableListView) return _steps;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_steps);
  }

  @override
  final String? imageUrl;
  @override
  final String? videoUrl;
  @override
  final int? duration;
// in minutes
  @override
  final String? difficulty;
// beginner, intermediate, advanced
  final List<String>? _prerequisites;
// beginner, intermediate, advanced
  @override
  List<String>? get prerequisites {
    final value = _prerequisites;
    if (value == null) return null;
    if (_prerequisites is EqualUnmodifiableListView) return _prerequisites;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<String>? _learningObjectives;
  @override
  List<String>? get learningObjectives {
    final value = _learningObjectives;
    if (value == null) return null;
    if (_learningObjectives is EqualUnmodifiableListView)
      return _learningObjectives;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final Map<String, dynamic>? _metadata;
  @override
  Map<String, dynamic>? get metadata {
    final value = _metadata;
    if (value == null) return null;
    if (_metadata is EqualUnmodifiableMapView) return _metadata;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  final DateTime? createdAt;
  @override
  final DateTime? updatedAt;
  @override
  final bool? isActive;
  @override
  final bool? isFeatured;

  @override
  String toString() {
    return 'CourseModel(id: $id, title: $title, description: $description, airline: $airline, category: $category, price: $price, steps: $steps, imageUrl: $imageUrl, videoUrl: $videoUrl, duration: $duration, difficulty: $difficulty, prerequisites: $prerequisites, learningObjectives: $learningObjectives, metadata: $metadata, createdAt: $createdAt, updatedAt: $updatedAt, isActive: $isActive, isFeatured: $isFeatured)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CourseModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.airline, airline) || other.airline == airline) &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.price, price) || other.price == price) &&
            const DeepCollectionEquality().equals(other._steps, _steps) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl) &&
            (identical(other.videoUrl, videoUrl) ||
                other.videoUrl == videoUrl) &&
            (identical(other.duration, duration) ||
                other.duration == duration) &&
            (identical(other.difficulty, difficulty) ||
                other.difficulty == difficulty) &&
            const DeepCollectionEquality()
                .equals(other._prerequisites, _prerequisites) &&
            const DeepCollectionEquality()
                .equals(other._learningObjectives, _learningObjectives) &&
            const DeepCollectionEquality().equals(other._metadata, _metadata) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.isActive, isActive) ||
                other.isActive == isActive) &&
            (identical(other.isFeatured, isFeatured) ||
                other.isFeatured == isFeatured));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      title,
      description,
      airline,
      category,
      price,
      const DeepCollectionEquality().hash(_steps),
      imageUrl,
      videoUrl,
      duration,
      difficulty,
      const DeepCollectionEquality().hash(_prerequisites),
      const DeepCollectionEquality().hash(_learningObjectives),
      const DeepCollectionEquality().hash(_metadata),
      createdAt,
      updatedAt,
      isActive,
      isFeatured);

  /// Create a copy of CourseModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CourseModelImplCopyWith<_$CourseModelImpl> get copyWith =>
      __$$CourseModelImplCopyWithImpl<_$CourseModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CourseModelImplToJson(
      this,
    );
  }
}

abstract class _CourseModel implements CourseModel {
  const factory _CourseModel(
      {required final String id,
      required final String title,
      required final String description,
      required final String airline,
      required final String category,
      required final double price,
      required final List<CourseStepModel> steps,
      final String? imageUrl,
      final String? videoUrl,
      final int? duration,
      final String? difficulty,
      final List<String>? prerequisites,
      final List<String>? learningObjectives,
      final Map<String, dynamic>? metadata,
      final DateTime? createdAt,
      final DateTime? updatedAt,
      final bool? isActive,
      final bool? isFeatured}) = _$CourseModelImpl;

  factory _CourseModel.fromJson(Map<String, dynamic> json) =
      _$CourseModelImpl.fromJson;

  @override
  String get id;
  @override
  String get title;
  @override
  String get description;
  @override
  String get airline;
  @override
  String get category;
  @override
  double get price;
  @override
  List<CourseStepModel> get steps;
  @override
  String? get imageUrl;
  @override
  String? get videoUrl;
  @override
  int? get duration; // in minutes
  @override
  String? get difficulty; // beginner, intermediate, advanced
  @override
  List<String>? get prerequisites;
  @override
  List<String>? get learningObjectives;
  @override
  Map<String, dynamic>? get metadata;
  @override
  DateTime? get createdAt;
  @override
  DateTime? get updatedAt;
  @override
  bool? get isActive;
  @override
  bool? get isFeatured;

  /// Create a copy of CourseModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CourseModelImplCopyWith<_$CourseModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

CourseStepModel _$CourseStepModelFromJson(Map<String, dynamic> json) {
  return _CourseStepModel.fromJson(json);
}

/// @nodoc
mixin _$CourseStepModel {
  String get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  String get type =>
      throw _privateConstructorUsedError; // test, video, reading, game
  int get order => throw _privateConstructorUsedError;
  double? get price => throw _privateConstructorUsedError;
  String? get content => throw _privateConstructorUsedError;
  String? get videoUrl => throw _privateConstructorUsedError;
  String? get imageUrl => throw _privateConstructorUsedError;
  Map<String, dynamic>? get gameConfig => throw _privateConstructorUsedError;
  List<String>? get questions => throw _privateConstructorUsedError;
  int? get timeLimit => throw _privateConstructorUsedError; // in seconds
  int? get passingScore => throw _privateConstructorUsedError;
  Map<String, dynamic>? get metadata => throw _privateConstructorUsedError;

  /// Serializes this CourseStepModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CourseStepModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CourseStepModelCopyWith<CourseStepModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CourseStepModelCopyWith<$Res> {
  factory $CourseStepModelCopyWith(
          CourseStepModel value, $Res Function(CourseStepModel) then) =
      _$CourseStepModelCopyWithImpl<$Res, CourseStepModel>;
  @useResult
  $Res call(
      {String id,
      String title,
      String description,
      String type,
      int order,
      double? price,
      String? content,
      String? videoUrl,
      String? imageUrl,
      Map<String, dynamic>? gameConfig,
      List<String>? questions,
      int? timeLimit,
      int? passingScore,
      Map<String, dynamic>? metadata});
}

/// @nodoc
class _$CourseStepModelCopyWithImpl<$Res, $Val extends CourseStepModel>
    implements $CourseStepModelCopyWith<$Res> {
  _$CourseStepModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CourseStepModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? description = null,
    Object? type = null,
    Object? order = null,
    Object? price = freezed,
    Object? content = freezed,
    Object? videoUrl = freezed,
    Object? imageUrl = freezed,
    Object? gameConfig = freezed,
    Object? questions = freezed,
    Object? timeLimit = freezed,
    Object? passingScore = freezed,
    Object? metadata = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      order: null == order
          ? _value.order
          : order // ignore: cast_nullable_to_non_nullable
              as int,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double?,
      content: freezed == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String?,
      videoUrl: freezed == videoUrl
          ? _value.videoUrl
          : videoUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      imageUrl: freezed == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      gameConfig: freezed == gameConfig
          ? _value.gameConfig
          : gameConfig // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      questions: freezed == questions
          ? _value.questions
          : questions // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      timeLimit: freezed == timeLimit
          ? _value.timeLimit
          : timeLimit // ignore: cast_nullable_to_non_nullable
              as int?,
      passingScore: freezed == passingScore
          ? _value.passingScore
          : passingScore // ignore: cast_nullable_to_non_nullable
              as int?,
      metadata: freezed == metadata
          ? _value.metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CourseStepModelImplCopyWith<$Res>
    implements $CourseStepModelCopyWith<$Res> {
  factory _$$CourseStepModelImplCopyWith(_$CourseStepModelImpl value,
          $Res Function(_$CourseStepModelImpl) then) =
      __$$CourseStepModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String title,
      String description,
      String type,
      int order,
      double? price,
      String? content,
      String? videoUrl,
      String? imageUrl,
      Map<String, dynamic>? gameConfig,
      List<String>? questions,
      int? timeLimit,
      int? passingScore,
      Map<String, dynamic>? metadata});
}

/// @nodoc
class __$$CourseStepModelImplCopyWithImpl<$Res>
    extends _$CourseStepModelCopyWithImpl<$Res, _$CourseStepModelImpl>
    implements _$$CourseStepModelImplCopyWith<$Res> {
  __$$CourseStepModelImplCopyWithImpl(
      _$CourseStepModelImpl _value, $Res Function(_$CourseStepModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of CourseStepModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? description = null,
    Object? type = null,
    Object? order = null,
    Object? price = freezed,
    Object? content = freezed,
    Object? videoUrl = freezed,
    Object? imageUrl = freezed,
    Object? gameConfig = freezed,
    Object? questions = freezed,
    Object? timeLimit = freezed,
    Object? passingScore = freezed,
    Object? metadata = freezed,
  }) {
    return _then(_$CourseStepModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      order: null == order
          ? _value.order
          : order // ignore: cast_nullable_to_non_nullable
              as int,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double?,
      content: freezed == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String?,
      videoUrl: freezed == videoUrl
          ? _value.videoUrl
          : videoUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      imageUrl: freezed == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      gameConfig: freezed == gameConfig
          ? _value._gameConfig
          : gameConfig // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      questions: freezed == questions
          ? _value._questions
          : questions // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      timeLimit: freezed == timeLimit
          ? _value.timeLimit
          : timeLimit // ignore: cast_nullable_to_non_nullable
              as int?,
      passingScore: freezed == passingScore
          ? _value.passingScore
          : passingScore // ignore: cast_nullable_to_non_nullable
              as int?,
      metadata: freezed == metadata
          ? _value._metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CourseStepModelImpl implements _CourseStepModel {
  const _$CourseStepModelImpl(
      {required this.id,
      required this.title,
      required this.description,
      required this.type,
      required this.order,
      this.price,
      this.content,
      this.videoUrl,
      this.imageUrl,
      final Map<String, dynamic>? gameConfig,
      final List<String>? questions,
      this.timeLimit,
      this.passingScore,
      final Map<String, dynamic>? metadata})
      : _gameConfig = gameConfig,
        _questions = questions,
        _metadata = metadata;

  factory _$CourseStepModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$CourseStepModelImplFromJson(json);

  @override
  final String id;
  @override
  final String title;
  @override
  final String description;
  @override
  final String type;
// test, video, reading, game
  @override
  final int order;
  @override
  final double? price;
  @override
  final String? content;
  @override
  final String? videoUrl;
  @override
  final String? imageUrl;
  final Map<String, dynamic>? _gameConfig;
  @override
  Map<String, dynamic>? get gameConfig {
    final value = _gameConfig;
    if (value == null) return null;
    if (_gameConfig is EqualUnmodifiableMapView) return _gameConfig;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  final List<String>? _questions;
  @override
  List<String>? get questions {
    final value = _questions;
    if (value == null) return null;
    if (_questions is EqualUnmodifiableListView) return _questions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final int? timeLimit;
// in seconds
  @override
  final int? passingScore;
  final Map<String, dynamic>? _metadata;
  @override
  Map<String, dynamic>? get metadata {
    final value = _metadata;
    if (value == null) return null;
    if (_metadata is EqualUnmodifiableMapView) return _metadata;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  String toString() {
    return 'CourseStepModel(id: $id, title: $title, description: $description, type: $type, order: $order, price: $price, content: $content, videoUrl: $videoUrl, imageUrl: $imageUrl, gameConfig: $gameConfig, questions: $questions, timeLimit: $timeLimit, passingScore: $passingScore, metadata: $metadata)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CourseStepModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.order, order) || other.order == order) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.videoUrl, videoUrl) ||
                other.videoUrl == videoUrl) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl) &&
            const DeepCollectionEquality()
                .equals(other._gameConfig, _gameConfig) &&
            const DeepCollectionEquality()
                .equals(other._questions, _questions) &&
            (identical(other.timeLimit, timeLimit) ||
                other.timeLimit == timeLimit) &&
            (identical(other.passingScore, passingScore) ||
                other.passingScore == passingScore) &&
            const DeepCollectionEquality().equals(other._metadata, _metadata));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      title,
      description,
      type,
      order,
      price,
      content,
      videoUrl,
      imageUrl,
      const DeepCollectionEquality().hash(_gameConfig),
      const DeepCollectionEquality().hash(_questions),
      timeLimit,
      passingScore,
      const DeepCollectionEquality().hash(_metadata));

  /// Create a copy of CourseStepModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CourseStepModelImplCopyWith<_$CourseStepModelImpl> get copyWith =>
      __$$CourseStepModelImplCopyWithImpl<_$CourseStepModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CourseStepModelImplToJson(
      this,
    );
  }
}

abstract class _CourseStepModel implements CourseStepModel {
  const factory _CourseStepModel(
      {required final String id,
      required final String title,
      required final String description,
      required final String type,
      required final int order,
      final double? price,
      final String? content,
      final String? videoUrl,
      final String? imageUrl,
      final Map<String, dynamic>? gameConfig,
      final List<String>? questions,
      final int? timeLimit,
      final int? passingScore,
      final Map<String, dynamic>? metadata}) = _$CourseStepModelImpl;

  factory _CourseStepModel.fromJson(Map<String, dynamic> json) =
      _$CourseStepModelImpl.fromJson;

  @override
  String get id;
  @override
  String get title;
  @override
  String get description;
  @override
  String get type; // test, video, reading, game
  @override
  int get order;
  @override
  double? get price;
  @override
  String? get content;
  @override
  String? get videoUrl;
  @override
  String? get imageUrl;
  @override
  Map<String, dynamic>? get gameConfig;
  @override
  List<String>? get questions;
  @override
  int? get timeLimit; // in seconds
  @override
  int? get passingScore;
  @override
  Map<String, dynamic>? get metadata;

  /// Create a copy of CourseStepModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CourseStepModelImplCopyWith<_$CourseStepModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

CartItemModel _$CartItemModelFromJson(Map<String, dynamic> json) {
  return _CartItemModel.fromJson(json);
}

/// @nodoc
mixin _$CartItemModel {
  String get id => throw _privateConstructorUsedError;
  String get courseId => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  double get price => throw _privateConstructorUsedError;
  String get airline => throw _privateConstructorUsedError;
  String? get imageUrl => throw _privateConstructorUsedError;
  DateTime? get addedAt => throw _privateConstructorUsedError;

  /// Serializes this CartItemModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CartItemModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CartItemModelCopyWith<CartItemModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CartItemModelCopyWith<$Res> {
  factory $CartItemModelCopyWith(
          CartItemModel value, $Res Function(CartItemModel) then) =
      _$CartItemModelCopyWithImpl<$Res, CartItemModel>;
  @useResult
  $Res call(
      {String id,
      String courseId,
      String title,
      double price,
      String airline,
      String? imageUrl,
      DateTime? addedAt});
}

/// @nodoc
class _$CartItemModelCopyWithImpl<$Res, $Val extends CartItemModel>
    implements $CartItemModelCopyWith<$Res> {
  _$CartItemModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CartItemModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? courseId = null,
    Object? title = null,
    Object? price = null,
    Object? airline = null,
    Object? imageUrl = freezed,
    Object? addedAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      courseId: null == courseId
          ? _value.courseId
          : courseId // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
      airline: null == airline
          ? _value.airline
          : airline // ignore: cast_nullable_to_non_nullable
              as String,
      imageUrl: freezed == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      addedAt: freezed == addedAt
          ? _value.addedAt
          : addedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CartItemModelImplCopyWith<$Res>
    implements $CartItemModelCopyWith<$Res> {
  factory _$$CartItemModelImplCopyWith(
          _$CartItemModelImpl value, $Res Function(_$CartItemModelImpl) then) =
      __$$CartItemModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String courseId,
      String title,
      double price,
      String airline,
      String? imageUrl,
      DateTime? addedAt});
}

/// @nodoc
class __$$CartItemModelImplCopyWithImpl<$Res>
    extends _$CartItemModelCopyWithImpl<$Res, _$CartItemModelImpl>
    implements _$$CartItemModelImplCopyWith<$Res> {
  __$$CartItemModelImplCopyWithImpl(
      _$CartItemModelImpl _value, $Res Function(_$CartItemModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of CartItemModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? courseId = null,
    Object? title = null,
    Object? price = null,
    Object? airline = null,
    Object? imageUrl = freezed,
    Object? addedAt = freezed,
  }) {
    return _then(_$CartItemModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      courseId: null == courseId
          ? _value.courseId
          : courseId // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
      airline: null == airline
          ? _value.airline
          : airline // ignore: cast_nullable_to_non_nullable
              as String,
      imageUrl: freezed == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      addedAt: freezed == addedAt
          ? _value.addedAt
          : addedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CartItemModelImpl implements _CartItemModel {
  const _$CartItemModelImpl(
      {required this.id,
      required this.courseId,
      required this.title,
      required this.price,
      required this.airline,
      this.imageUrl,
      this.addedAt});

  factory _$CartItemModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$CartItemModelImplFromJson(json);

  @override
  final String id;
  @override
  final String courseId;
  @override
  final String title;
  @override
  final double price;
  @override
  final String airline;
  @override
  final String? imageUrl;
  @override
  final DateTime? addedAt;

  @override
  String toString() {
    return 'CartItemModel(id: $id, courseId: $courseId, title: $title, price: $price, airline: $airline, imageUrl: $imageUrl, addedAt: $addedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CartItemModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.courseId, courseId) ||
                other.courseId == courseId) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.airline, airline) || other.airline == airline) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl) &&
            (identical(other.addedAt, addedAt) || other.addedAt == addedAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, courseId, title, price, airline, imageUrl, addedAt);

  /// Create a copy of CartItemModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CartItemModelImplCopyWith<_$CartItemModelImpl> get copyWith =>
      __$$CartItemModelImplCopyWithImpl<_$CartItemModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CartItemModelImplToJson(
      this,
    );
  }
}

abstract class _CartItemModel implements CartItemModel {
  const factory _CartItemModel(
      {required final String id,
      required final String courseId,
      required final String title,
      required final double price,
      required final String airline,
      final String? imageUrl,
      final DateTime? addedAt}) = _$CartItemModelImpl;

  factory _CartItemModel.fromJson(Map<String, dynamic> json) =
      _$CartItemModelImpl.fromJson;

  @override
  String get id;
  @override
  String get courseId;
  @override
  String get title;
  @override
  double get price;
  @override
  String get airline;
  @override
  String? get imageUrl;
  @override
  DateTime? get addedAt;

  /// Create a copy of CartItemModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CartItemModelImplCopyWith<_$CartItemModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

CourseCategoryModel _$CourseCategoryModelFromJson(Map<String, dynamic> json) {
  return _CourseCategoryModel.fromJson(json);
}

/// @nodoc
mixin _$CourseCategoryModel {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get airline => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  String? get imageUrl => throw _privateConstructorUsedError;
  int? get courseCount => throw _privateConstructorUsedError;
  bool? get isActive => throw _privateConstructorUsedError;

  /// Serializes this CourseCategoryModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CourseCategoryModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CourseCategoryModelCopyWith<CourseCategoryModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CourseCategoryModelCopyWith<$Res> {
  factory $CourseCategoryModelCopyWith(
          CourseCategoryModel value, $Res Function(CourseCategoryModel) then) =
      _$CourseCategoryModelCopyWithImpl<$Res, CourseCategoryModel>;
  @useResult
  $Res call(
      {String id,
      String name,
      String airline,
      String? description,
      String? imageUrl,
      int? courseCount,
      bool? isActive});
}

/// @nodoc
class _$CourseCategoryModelCopyWithImpl<$Res, $Val extends CourseCategoryModel>
    implements $CourseCategoryModelCopyWith<$Res> {
  _$CourseCategoryModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CourseCategoryModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? airline = null,
    Object? description = freezed,
    Object? imageUrl = freezed,
    Object? courseCount = freezed,
    Object? isActive = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      airline: null == airline
          ? _value.airline
          : airline // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      imageUrl: freezed == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      courseCount: freezed == courseCount
          ? _value.courseCount
          : courseCount // ignore: cast_nullable_to_non_nullable
              as int?,
      isActive: freezed == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CourseCategoryModelImplCopyWith<$Res>
    implements $CourseCategoryModelCopyWith<$Res> {
  factory _$$CourseCategoryModelImplCopyWith(_$CourseCategoryModelImpl value,
          $Res Function(_$CourseCategoryModelImpl) then) =
      __$$CourseCategoryModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String name,
      String airline,
      String? description,
      String? imageUrl,
      int? courseCount,
      bool? isActive});
}

/// @nodoc
class __$$CourseCategoryModelImplCopyWithImpl<$Res>
    extends _$CourseCategoryModelCopyWithImpl<$Res, _$CourseCategoryModelImpl>
    implements _$$CourseCategoryModelImplCopyWith<$Res> {
  __$$CourseCategoryModelImplCopyWithImpl(_$CourseCategoryModelImpl _value,
      $Res Function(_$CourseCategoryModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of CourseCategoryModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? airline = null,
    Object? description = freezed,
    Object? imageUrl = freezed,
    Object? courseCount = freezed,
    Object? isActive = freezed,
  }) {
    return _then(_$CourseCategoryModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      airline: null == airline
          ? _value.airline
          : airline // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      imageUrl: freezed == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      courseCount: freezed == courseCount
          ? _value.courseCount
          : courseCount // ignore: cast_nullable_to_non_nullable
              as int?,
      isActive: freezed == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CourseCategoryModelImpl implements _CourseCategoryModel {
  const _$CourseCategoryModelImpl(
      {required this.id,
      required this.name,
      required this.airline,
      this.description,
      this.imageUrl,
      this.courseCount,
      this.isActive});

  factory _$CourseCategoryModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$CourseCategoryModelImplFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final String airline;
  @override
  final String? description;
  @override
  final String? imageUrl;
  @override
  final int? courseCount;
  @override
  final bool? isActive;

  @override
  String toString() {
    return 'CourseCategoryModel(id: $id, name: $name, airline: $airline, description: $description, imageUrl: $imageUrl, courseCount: $courseCount, isActive: $isActive)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CourseCategoryModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.airline, airline) || other.airline == airline) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl) &&
            (identical(other.courseCount, courseCount) ||
                other.courseCount == courseCount) &&
            (identical(other.isActive, isActive) ||
                other.isActive == isActive));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, airline, description,
      imageUrl, courseCount, isActive);

  /// Create a copy of CourseCategoryModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CourseCategoryModelImplCopyWith<_$CourseCategoryModelImpl> get copyWith =>
      __$$CourseCategoryModelImplCopyWithImpl<_$CourseCategoryModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CourseCategoryModelImplToJson(
      this,
    );
  }
}

abstract class _CourseCategoryModel implements CourseCategoryModel {
  const factory _CourseCategoryModel(
      {required final String id,
      required final String name,
      required final String airline,
      final String? description,
      final String? imageUrl,
      final int? courseCount,
      final bool? isActive}) = _$CourseCategoryModelImpl;

  factory _CourseCategoryModel.fromJson(Map<String, dynamic> json) =
      _$CourseCategoryModelImpl.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  String get airline;
  @override
  String? get description;
  @override
  String? get imageUrl;
  @override
  int? get courseCount;
  @override
  bool? get isActive;

  /// Create a copy of CourseCategoryModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CourseCategoryModelImplCopyWith<_$CourseCategoryModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
