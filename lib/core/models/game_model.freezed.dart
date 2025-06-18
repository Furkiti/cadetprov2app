// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'game_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

GameModel _$GameModelFromJson(Map<String, dynamic> json) {
  return _GameModel.fromJson(json);
}

/// @nodoc
mixin _$GameModel {
  String get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  String get type =>
      throw _privateConstructorUsedError; // attention, memory, spatial, motor, logic, decision
  GameConfigModel get config => throw _privateConstructorUsedError;
  List<GameLevelModel>? get levels => throw _privateConstructorUsedError;
  String? get instructions => throw _privateConstructorUsedError;
  String? get imageUrl => throw _privateConstructorUsedError;
  Map<String, dynamic>? get metadata => throw _privateConstructorUsedError;
  bool? get isActive => throw _privateConstructorUsedError;

  /// Serializes this GameModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of GameModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GameModelCopyWith<GameModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GameModelCopyWith<$Res> {
  factory $GameModelCopyWith(GameModel value, $Res Function(GameModel) then) =
      _$GameModelCopyWithImpl<$Res, GameModel>;
  @useResult
  $Res call(
      {String id,
      String title,
      String description,
      String type,
      GameConfigModel config,
      List<GameLevelModel>? levels,
      String? instructions,
      String? imageUrl,
      Map<String, dynamic>? metadata,
      bool? isActive});

  $GameConfigModelCopyWith<$Res> get config;
}

/// @nodoc
class _$GameModelCopyWithImpl<$Res, $Val extends GameModel>
    implements $GameModelCopyWith<$Res> {
  _$GameModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GameModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? description = null,
    Object? type = null,
    Object? config = null,
    Object? levels = freezed,
    Object? instructions = freezed,
    Object? imageUrl = freezed,
    Object? metadata = freezed,
    Object? isActive = freezed,
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
      config: null == config
          ? _value.config
          : config // ignore: cast_nullable_to_non_nullable
              as GameConfigModel,
      levels: freezed == levels
          ? _value.levels
          : levels // ignore: cast_nullable_to_non_nullable
              as List<GameLevelModel>?,
      instructions: freezed == instructions
          ? _value.instructions
          : instructions // ignore: cast_nullable_to_non_nullable
              as String?,
      imageUrl: freezed == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      metadata: freezed == metadata
          ? _value.metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      isActive: freezed == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }

  /// Create a copy of GameModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $GameConfigModelCopyWith<$Res> get config {
    return $GameConfigModelCopyWith<$Res>(_value.config, (value) {
      return _then(_value.copyWith(config: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$GameModelImplCopyWith<$Res>
    implements $GameModelCopyWith<$Res> {
  factory _$$GameModelImplCopyWith(
          _$GameModelImpl value, $Res Function(_$GameModelImpl) then) =
      __$$GameModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String title,
      String description,
      String type,
      GameConfigModel config,
      List<GameLevelModel>? levels,
      String? instructions,
      String? imageUrl,
      Map<String, dynamic>? metadata,
      bool? isActive});

  @override
  $GameConfigModelCopyWith<$Res> get config;
}

/// @nodoc
class __$$GameModelImplCopyWithImpl<$Res>
    extends _$GameModelCopyWithImpl<$Res, _$GameModelImpl>
    implements _$$GameModelImplCopyWith<$Res> {
  __$$GameModelImplCopyWithImpl(
      _$GameModelImpl _value, $Res Function(_$GameModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of GameModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? description = null,
    Object? type = null,
    Object? config = null,
    Object? levels = freezed,
    Object? instructions = freezed,
    Object? imageUrl = freezed,
    Object? metadata = freezed,
    Object? isActive = freezed,
  }) {
    return _then(_$GameModelImpl(
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
      config: null == config
          ? _value.config
          : config // ignore: cast_nullable_to_non_nullable
              as GameConfigModel,
      levels: freezed == levels
          ? _value._levels
          : levels // ignore: cast_nullable_to_non_nullable
              as List<GameLevelModel>?,
      instructions: freezed == instructions
          ? _value.instructions
          : instructions // ignore: cast_nullable_to_non_nullable
              as String?,
      imageUrl: freezed == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      metadata: freezed == metadata
          ? _value._metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      isActive: freezed == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GameModelImpl implements _GameModel {
  const _$GameModelImpl(
      {required this.id,
      required this.title,
      required this.description,
      required this.type,
      required this.config,
      final List<GameLevelModel>? levels,
      this.instructions,
      this.imageUrl,
      final Map<String, dynamic>? metadata,
      this.isActive})
      : _levels = levels,
        _metadata = metadata;

  factory _$GameModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$GameModelImplFromJson(json);

  @override
  final String id;
  @override
  final String title;
  @override
  final String description;
  @override
  final String type;
// attention, memory, spatial, motor, logic, decision
  @override
  final GameConfigModel config;
  final List<GameLevelModel>? _levels;
  @override
  List<GameLevelModel>? get levels {
    final value = _levels;
    if (value == null) return null;
    if (_levels is EqualUnmodifiableListView) return _levels;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? instructions;
  @override
  final String? imageUrl;
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
  final bool? isActive;

  @override
  String toString() {
    return 'GameModel(id: $id, title: $title, description: $description, type: $type, config: $config, levels: $levels, instructions: $instructions, imageUrl: $imageUrl, metadata: $metadata, isActive: $isActive)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GameModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.config, config) || other.config == config) &&
            const DeepCollectionEquality().equals(other._levels, _levels) &&
            (identical(other.instructions, instructions) ||
                other.instructions == instructions) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl) &&
            const DeepCollectionEquality().equals(other._metadata, _metadata) &&
            (identical(other.isActive, isActive) ||
                other.isActive == isActive));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      title,
      description,
      type,
      config,
      const DeepCollectionEquality().hash(_levels),
      instructions,
      imageUrl,
      const DeepCollectionEquality().hash(_metadata),
      isActive);

  /// Create a copy of GameModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GameModelImplCopyWith<_$GameModelImpl> get copyWith =>
      __$$GameModelImplCopyWithImpl<_$GameModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GameModelImplToJson(
      this,
    );
  }
}

abstract class _GameModel implements GameModel {
  const factory _GameModel(
      {required final String id,
      required final String title,
      required final String description,
      required final String type,
      required final GameConfigModel config,
      final List<GameLevelModel>? levels,
      final String? instructions,
      final String? imageUrl,
      final Map<String, dynamic>? metadata,
      final bool? isActive}) = _$GameModelImpl;

  factory _GameModel.fromJson(Map<String, dynamic> json) =
      _$GameModelImpl.fromJson;

  @override
  String get id;
  @override
  String get title;
  @override
  String get description;
  @override
  String get type; // attention, memory, spatial, motor, logic, decision
  @override
  GameConfigModel get config;
  @override
  List<GameLevelModel>? get levels;
  @override
  String? get instructions;
  @override
  String? get imageUrl;
  @override
  Map<String, dynamic>? get metadata;
  @override
  bool? get isActive;

  /// Create a copy of GameModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GameModelImplCopyWith<_$GameModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

GameConfigModel _$GameConfigModelFromJson(Map<String, dynamic> json) {
  return _GameConfigModel.fromJson(json);
}

/// @nodoc
mixin _$GameConfigModel {
  int get timeLimit => throw _privateConstructorUsedError; // in seconds
  int get minScore => throw _privateConstructorUsedError;
  int get maxScore => throw _privateConstructorUsedError;
  double get difficulty => throw _privateConstructorUsedError;
  Map<String, dynamic>? get parameters => throw _privateConstructorUsedError;
  List<String>? get allowedInputs => throw _privateConstructorUsedError;
  String? get scoringMethod => throw _privateConstructorUsedError;

  /// Serializes this GameConfigModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of GameConfigModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GameConfigModelCopyWith<GameConfigModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GameConfigModelCopyWith<$Res> {
  factory $GameConfigModelCopyWith(
          GameConfigModel value, $Res Function(GameConfigModel) then) =
      _$GameConfigModelCopyWithImpl<$Res, GameConfigModel>;
  @useResult
  $Res call(
      {int timeLimit,
      int minScore,
      int maxScore,
      double difficulty,
      Map<String, dynamic>? parameters,
      List<String>? allowedInputs,
      String? scoringMethod});
}

/// @nodoc
class _$GameConfigModelCopyWithImpl<$Res, $Val extends GameConfigModel>
    implements $GameConfigModelCopyWith<$Res> {
  _$GameConfigModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GameConfigModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? timeLimit = null,
    Object? minScore = null,
    Object? maxScore = null,
    Object? difficulty = null,
    Object? parameters = freezed,
    Object? allowedInputs = freezed,
    Object? scoringMethod = freezed,
  }) {
    return _then(_value.copyWith(
      timeLimit: null == timeLimit
          ? _value.timeLimit
          : timeLimit // ignore: cast_nullable_to_non_nullable
              as int,
      minScore: null == minScore
          ? _value.minScore
          : minScore // ignore: cast_nullable_to_non_nullable
              as int,
      maxScore: null == maxScore
          ? _value.maxScore
          : maxScore // ignore: cast_nullable_to_non_nullable
              as int,
      difficulty: null == difficulty
          ? _value.difficulty
          : difficulty // ignore: cast_nullable_to_non_nullable
              as double,
      parameters: freezed == parameters
          ? _value.parameters
          : parameters // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      allowedInputs: freezed == allowedInputs
          ? _value.allowedInputs
          : allowedInputs // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      scoringMethod: freezed == scoringMethod
          ? _value.scoringMethod
          : scoringMethod // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GameConfigModelImplCopyWith<$Res>
    implements $GameConfigModelCopyWith<$Res> {
  factory _$$GameConfigModelImplCopyWith(_$GameConfigModelImpl value,
          $Res Function(_$GameConfigModelImpl) then) =
      __$$GameConfigModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int timeLimit,
      int minScore,
      int maxScore,
      double difficulty,
      Map<String, dynamic>? parameters,
      List<String>? allowedInputs,
      String? scoringMethod});
}

/// @nodoc
class __$$GameConfigModelImplCopyWithImpl<$Res>
    extends _$GameConfigModelCopyWithImpl<$Res, _$GameConfigModelImpl>
    implements _$$GameConfigModelImplCopyWith<$Res> {
  __$$GameConfigModelImplCopyWithImpl(
      _$GameConfigModelImpl _value, $Res Function(_$GameConfigModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of GameConfigModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? timeLimit = null,
    Object? minScore = null,
    Object? maxScore = null,
    Object? difficulty = null,
    Object? parameters = freezed,
    Object? allowedInputs = freezed,
    Object? scoringMethod = freezed,
  }) {
    return _then(_$GameConfigModelImpl(
      timeLimit: null == timeLimit
          ? _value.timeLimit
          : timeLimit // ignore: cast_nullable_to_non_nullable
              as int,
      minScore: null == minScore
          ? _value.minScore
          : minScore // ignore: cast_nullable_to_non_nullable
              as int,
      maxScore: null == maxScore
          ? _value.maxScore
          : maxScore // ignore: cast_nullable_to_non_nullable
              as int,
      difficulty: null == difficulty
          ? _value.difficulty
          : difficulty // ignore: cast_nullable_to_non_nullable
              as double,
      parameters: freezed == parameters
          ? _value._parameters
          : parameters // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      allowedInputs: freezed == allowedInputs
          ? _value._allowedInputs
          : allowedInputs // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      scoringMethod: freezed == scoringMethod
          ? _value.scoringMethod
          : scoringMethod // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GameConfigModelImpl implements _GameConfigModel {
  const _$GameConfigModelImpl(
      {required this.timeLimit,
      required this.minScore,
      required this.maxScore,
      required this.difficulty,
      final Map<String, dynamic>? parameters,
      final List<String>? allowedInputs,
      this.scoringMethod})
      : _parameters = parameters,
        _allowedInputs = allowedInputs;

  factory _$GameConfigModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$GameConfigModelImplFromJson(json);

  @override
  final int timeLimit;
// in seconds
  @override
  final int minScore;
  @override
  final int maxScore;
  @override
  final double difficulty;
  final Map<String, dynamic>? _parameters;
  @override
  Map<String, dynamic>? get parameters {
    final value = _parameters;
    if (value == null) return null;
    if (_parameters is EqualUnmodifiableMapView) return _parameters;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  final List<String>? _allowedInputs;
  @override
  List<String>? get allowedInputs {
    final value = _allowedInputs;
    if (value == null) return null;
    if (_allowedInputs is EqualUnmodifiableListView) return _allowedInputs;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? scoringMethod;

  @override
  String toString() {
    return 'GameConfigModel(timeLimit: $timeLimit, minScore: $minScore, maxScore: $maxScore, difficulty: $difficulty, parameters: $parameters, allowedInputs: $allowedInputs, scoringMethod: $scoringMethod)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GameConfigModelImpl &&
            (identical(other.timeLimit, timeLimit) ||
                other.timeLimit == timeLimit) &&
            (identical(other.minScore, minScore) ||
                other.minScore == minScore) &&
            (identical(other.maxScore, maxScore) ||
                other.maxScore == maxScore) &&
            (identical(other.difficulty, difficulty) ||
                other.difficulty == difficulty) &&
            const DeepCollectionEquality()
                .equals(other._parameters, _parameters) &&
            const DeepCollectionEquality()
                .equals(other._allowedInputs, _allowedInputs) &&
            (identical(other.scoringMethod, scoringMethod) ||
                other.scoringMethod == scoringMethod));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      timeLimit,
      minScore,
      maxScore,
      difficulty,
      const DeepCollectionEquality().hash(_parameters),
      const DeepCollectionEquality().hash(_allowedInputs),
      scoringMethod);

  /// Create a copy of GameConfigModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GameConfigModelImplCopyWith<_$GameConfigModelImpl> get copyWith =>
      __$$GameConfigModelImplCopyWithImpl<_$GameConfigModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GameConfigModelImplToJson(
      this,
    );
  }
}

abstract class _GameConfigModel implements GameConfigModel {
  const factory _GameConfigModel(
      {required final int timeLimit,
      required final int minScore,
      required final int maxScore,
      required final double difficulty,
      final Map<String, dynamic>? parameters,
      final List<String>? allowedInputs,
      final String? scoringMethod}) = _$GameConfigModelImpl;

  factory _GameConfigModel.fromJson(Map<String, dynamic> json) =
      _$GameConfigModelImpl.fromJson;

  @override
  int get timeLimit; // in seconds
  @override
  int get minScore;
  @override
  int get maxScore;
  @override
  double get difficulty;
  @override
  Map<String, dynamic>? get parameters;
  @override
  List<String>? get allowedInputs;
  @override
  String? get scoringMethod;

  /// Create a copy of GameConfigModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GameConfigModelImplCopyWith<_$GameConfigModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

GameLevelModel _$GameLevelModelFromJson(Map<String, dynamic> json) {
  return _GameLevelModel.fromJson(json);
}

/// @nodoc
mixin _$GameLevelModel {
  String get id => throw _privateConstructorUsedError;
  int get level => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  GameConfigModel get config => throw _privateConstructorUsedError;
  List<GameQuestionModel>? get questions => throw _privateConstructorUsedError;
  Map<String, dynamic>? get assets => throw _privateConstructorUsedError;
  bool? get isUnlocked => throw _privateConstructorUsedError;

  /// Serializes this GameLevelModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of GameLevelModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GameLevelModelCopyWith<GameLevelModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GameLevelModelCopyWith<$Res> {
  factory $GameLevelModelCopyWith(
          GameLevelModel value, $Res Function(GameLevelModel) then) =
      _$GameLevelModelCopyWithImpl<$Res, GameLevelModel>;
  @useResult
  $Res call(
      {String id,
      int level,
      String name,
      GameConfigModel config,
      List<GameQuestionModel>? questions,
      Map<String, dynamic>? assets,
      bool? isUnlocked});

  $GameConfigModelCopyWith<$Res> get config;
}

/// @nodoc
class _$GameLevelModelCopyWithImpl<$Res, $Val extends GameLevelModel>
    implements $GameLevelModelCopyWith<$Res> {
  _$GameLevelModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GameLevelModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? level = null,
    Object? name = null,
    Object? config = null,
    Object? questions = freezed,
    Object? assets = freezed,
    Object? isUnlocked = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      level: null == level
          ? _value.level
          : level // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      config: null == config
          ? _value.config
          : config // ignore: cast_nullable_to_non_nullable
              as GameConfigModel,
      questions: freezed == questions
          ? _value.questions
          : questions // ignore: cast_nullable_to_non_nullable
              as List<GameQuestionModel>?,
      assets: freezed == assets
          ? _value.assets
          : assets // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      isUnlocked: freezed == isUnlocked
          ? _value.isUnlocked
          : isUnlocked // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }

  /// Create a copy of GameLevelModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $GameConfigModelCopyWith<$Res> get config {
    return $GameConfigModelCopyWith<$Res>(_value.config, (value) {
      return _then(_value.copyWith(config: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$GameLevelModelImplCopyWith<$Res>
    implements $GameLevelModelCopyWith<$Res> {
  factory _$$GameLevelModelImplCopyWith(_$GameLevelModelImpl value,
          $Res Function(_$GameLevelModelImpl) then) =
      __$$GameLevelModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      int level,
      String name,
      GameConfigModel config,
      List<GameQuestionModel>? questions,
      Map<String, dynamic>? assets,
      bool? isUnlocked});

  @override
  $GameConfigModelCopyWith<$Res> get config;
}

/// @nodoc
class __$$GameLevelModelImplCopyWithImpl<$Res>
    extends _$GameLevelModelCopyWithImpl<$Res, _$GameLevelModelImpl>
    implements _$$GameLevelModelImplCopyWith<$Res> {
  __$$GameLevelModelImplCopyWithImpl(
      _$GameLevelModelImpl _value, $Res Function(_$GameLevelModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of GameLevelModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? level = null,
    Object? name = null,
    Object? config = null,
    Object? questions = freezed,
    Object? assets = freezed,
    Object? isUnlocked = freezed,
  }) {
    return _then(_$GameLevelModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      level: null == level
          ? _value.level
          : level // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      config: null == config
          ? _value.config
          : config // ignore: cast_nullable_to_non_nullable
              as GameConfigModel,
      questions: freezed == questions
          ? _value._questions
          : questions // ignore: cast_nullable_to_non_nullable
              as List<GameQuestionModel>?,
      assets: freezed == assets
          ? _value._assets
          : assets // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      isUnlocked: freezed == isUnlocked
          ? _value.isUnlocked
          : isUnlocked // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GameLevelModelImpl implements _GameLevelModel {
  const _$GameLevelModelImpl(
      {required this.id,
      required this.level,
      required this.name,
      required this.config,
      final List<GameQuestionModel>? questions,
      final Map<String, dynamic>? assets,
      this.isUnlocked})
      : _questions = questions,
        _assets = assets;

  factory _$GameLevelModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$GameLevelModelImplFromJson(json);

  @override
  final String id;
  @override
  final int level;
  @override
  final String name;
  @override
  final GameConfigModel config;
  final List<GameQuestionModel>? _questions;
  @override
  List<GameQuestionModel>? get questions {
    final value = _questions;
    if (value == null) return null;
    if (_questions is EqualUnmodifiableListView) return _questions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final Map<String, dynamic>? _assets;
  @override
  Map<String, dynamic>? get assets {
    final value = _assets;
    if (value == null) return null;
    if (_assets is EqualUnmodifiableMapView) return _assets;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  final bool? isUnlocked;

  @override
  String toString() {
    return 'GameLevelModel(id: $id, level: $level, name: $name, config: $config, questions: $questions, assets: $assets, isUnlocked: $isUnlocked)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GameLevelModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.level, level) || other.level == level) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.config, config) || other.config == config) &&
            const DeepCollectionEquality()
                .equals(other._questions, _questions) &&
            const DeepCollectionEquality().equals(other._assets, _assets) &&
            (identical(other.isUnlocked, isUnlocked) ||
                other.isUnlocked == isUnlocked));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      level,
      name,
      config,
      const DeepCollectionEquality().hash(_questions),
      const DeepCollectionEquality().hash(_assets),
      isUnlocked);

  /// Create a copy of GameLevelModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GameLevelModelImplCopyWith<_$GameLevelModelImpl> get copyWith =>
      __$$GameLevelModelImplCopyWithImpl<_$GameLevelModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GameLevelModelImplToJson(
      this,
    );
  }
}

abstract class _GameLevelModel implements GameLevelModel {
  const factory _GameLevelModel(
      {required final String id,
      required final int level,
      required final String name,
      required final GameConfigModel config,
      final List<GameQuestionModel>? questions,
      final Map<String, dynamic>? assets,
      final bool? isUnlocked}) = _$GameLevelModelImpl;

  factory _GameLevelModel.fromJson(Map<String, dynamic> json) =
      _$GameLevelModelImpl.fromJson;

  @override
  String get id;
  @override
  int get level;
  @override
  String get name;
  @override
  GameConfigModel get config;
  @override
  List<GameQuestionModel>? get questions;
  @override
  Map<String, dynamic>? get assets;
  @override
  bool? get isUnlocked;

  /// Create a copy of GameLevelModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GameLevelModelImplCopyWith<_$GameLevelModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

GameQuestionModel _$GameQuestionModelFromJson(Map<String, dynamic> json) {
  return _GameQuestionModel.fromJson(json);
}

/// @nodoc
mixin _$GameQuestionModel {
  String get id => throw _privateConstructorUsedError;
  String get question => throw _privateConstructorUsedError;
  String get type =>
      throw _privateConstructorUsedError; // multiple_choice, true_false, drag_drop, click
  List<String> get options => throw _privateConstructorUsedError;
  String get correctAnswer => throw _privateConstructorUsedError;
  String? get explanation => throw _privateConstructorUsedError;
  String? get imageUrl => throw _privateConstructorUsedError;
  String? get audioUrl => throw _privateConstructorUsedError;
  int? get timeLimit => throw _privateConstructorUsedError;
  double? get points => throw _privateConstructorUsedError;

  /// Serializes this GameQuestionModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of GameQuestionModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GameQuestionModelCopyWith<GameQuestionModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GameQuestionModelCopyWith<$Res> {
  factory $GameQuestionModelCopyWith(
          GameQuestionModel value, $Res Function(GameQuestionModel) then) =
      _$GameQuestionModelCopyWithImpl<$Res, GameQuestionModel>;
  @useResult
  $Res call(
      {String id,
      String question,
      String type,
      List<String> options,
      String correctAnswer,
      String? explanation,
      String? imageUrl,
      String? audioUrl,
      int? timeLimit,
      double? points});
}

/// @nodoc
class _$GameQuestionModelCopyWithImpl<$Res, $Val extends GameQuestionModel>
    implements $GameQuestionModelCopyWith<$Res> {
  _$GameQuestionModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GameQuestionModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? question = null,
    Object? type = null,
    Object? options = null,
    Object? correctAnswer = null,
    Object? explanation = freezed,
    Object? imageUrl = freezed,
    Object? audioUrl = freezed,
    Object? timeLimit = freezed,
    Object? points = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      question: null == question
          ? _value.question
          : question // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      options: null == options
          ? _value.options
          : options // ignore: cast_nullable_to_non_nullable
              as List<String>,
      correctAnswer: null == correctAnswer
          ? _value.correctAnswer
          : correctAnswer // ignore: cast_nullable_to_non_nullable
              as String,
      explanation: freezed == explanation
          ? _value.explanation
          : explanation // ignore: cast_nullable_to_non_nullable
              as String?,
      imageUrl: freezed == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      audioUrl: freezed == audioUrl
          ? _value.audioUrl
          : audioUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      timeLimit: freezed == timeLimit
          ? _value.timeLimit
          : timeLimit // ignore: cast_nullable_to_non_nullable
              as int?,
      points: freezed == points
          ? _value.points
          : points // ignore: cast_nullable_to_non_nullable
              as double?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GameQuestionModelImplCopyWith<$Res>
    implements $GameQuestionModelCopyWith<$Res> {
  factory _$$GameQuestionModelImplCopyWith(_$GameQuestionModelImpl value,
          $Res Function(_$GameQuestionModelImpl) then) =
      __$$GameQuestionModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String question,
      String type,
      List<String> options,
      String correctAnswer,
      String? explanation,
      String? imageUrl,
      String? audioUrl,
      int? timeLimit,
      double? points});
}

/// @nodoc
class __$$GameQuestionModelImplCopyWithImpl<$Res>
    extends _$GameQuestionModelCopyWithImpl<$Res, _$GameQuestionModelImpl>
    implements _$$GameQuestionModelImplCopyWith<$Res> {
  __$$GameQuestionModelImplCopyWithImpl(_$GameQuestionModelImpl _value,
      $Res Function(_$GameQuestionModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of GameQuestionModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? question = null,
    Object? type = null,
    Object? options = null,
    Object? correctAnswer = null,
    Object? explanation = freezed,
    Object? imageUrl = freezed,
    Object? audioUrl = freezed,
    Object? timeLimit = freezed,
    Object? points = freezed,
  }) {
    return _then(_$GameQuestionModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      question: null == question
          ? _value.question
          : question // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      options: null == options
          ? _value._options
          : options // ignore: cast_nullable_to_non_nullable
              as List<String>,
      correctAnswer: null == correctAnswer
          ? _value.correctAnswer
          : correctAnswer // ignore: cast_nullable_to_non_nullable
              as String,
      explanation: freezed == explanation
          ? _value.explanation
          : explanation // ignore: cast_nullable_to_non_nullable
              as String?,
      imageUrl: freezed == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      audioUrl: freezed == audioUrl
          ? _value.audioUrl
          : audioUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      timeLimit: freezed == timeLimit
          ? _value.timeLimit
          : timeLimit // ignore: cast_nullable_to_non_nullable
              as int?,
      points: freezed == points
          ? _value.points
          : points // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GameQuestionModelImpl implements _GameQuestionModel {
  const _$GameQuestionModelImpl(
      {required this.id,
      required this.question,
      required this.type,
      required final List<String> options,
      required this.correctAnswer,
      this.explanation,
      this.imageUrl,
      this.audioUrl,
      this.timeLimit,
      this.points})
      : _options = options;

  factory _$GameQuestionModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$GameQuestionModelImplFromJson(json);

  @override
  final String id;
  @override
  final String question;
  @override
  final String type;
// multiple_choice, true_false, drag_drop, click
  final List<String> _options;
// multiple_choice, true_false, drag_drop, click
  @override
  List<String> get options {
    if (_options is EqualUnmodifiableListView) return _options;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_options);
  }

  @override
  final String correctAnswer;
  @override
  final String? explanation;
  @override
  final String? imageUrl;
  @override
  final String? audioUrl;
  @override
  final int? timeLimit;
  @override
  final double? points;

  @override
  String toString() {
    return 'GameQuestionModel(id: $id, question: $question, type: $type, options: $options, correctAnswer: $correctAnswer, explanation: $explanation, imageUrl: $imageUrl, audioUrl: $audioUrl, timeLimit: $timeLimit, points: $points)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GameQuestionModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.question, question) ||
                other.question == question) &&
            (identical(other.type, type) || other.type == type) &&
            const DeepCollectionEquality().equals(other._options, _options) &&
            (identical(other.correctAnswer, correctAnswer) ||
                other.correctAnswer == correctAnswer) &&
            (identical(other.explanation, explanation) ||
                other.explanation == explanation) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl) &&
            (identical(other.audioUrl, audioUrl) ||
                other.audioUrl == audioUrl) &&
            (identical(other.timeLimit, timeLimit) ||
                other.timeLimit == timeLimit) &&
            (identical(other.points, points) || other.points == points));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      question,
      type,
      const DeepCollectionEquality().hash(_options),
      correctAnswer,
      explanation,
      imageUrl,
      audioUrl,
      timeLimit,
      points);

  /// Create a copy of GameQuestionModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GameQuestionModelImplCopyWith<_$GameQuestionModelImpl> get copyWith =>
      __$$GameQuestionModelImplCopyWithImpl<_$GameQuestionModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GameQuestionModelImplToJson(
      this,
    );
  }
}

abstract class _GameQuestionModel implements GameQuestionModel {
  const factory _GameQuestionModel(
      {required final String id,
      required final String question,
      required final String type,
      required final List<String> options,
      required final String correctAnswer,
      final String? explanation,
      final String? imageUrl,
      final String? audioUrl,
      final int? timeLimit,
      final double? points}) = _$GameQuestionModelImpl;

  factory _GameQuestionModel.fromJson(Map<String, dynamic> json) =
      _$GameQuestionModelImpl.fromJson;

  @override
  String get id;
  @override
  String get question;
  @override
  String get type; // multiple_choice, true_false, drag_drop, click
  @override
  List<String> get options;
  @override
  String get correctAnswer;
  @override
  String? get explanation;
  @override
  String? get imageUrl;
  @override
  String? get audioUrl;
  @override
  int? get timeLimit;
  @override
  double? get points;

  /// Create a copy of GameQuestionModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GameQuestionModelImplCopyWith<_$GameQuestionModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

GameResultModel _$GameResultModelFromJson(Map<String, dynamic> json) {
  return _GameResultModel.fromJson(json);
}

/// @nodoc
mixin _$GameResultModel {
  String get id => throw _privateConstructorUsedError;
  String get gameId => throw _privateConstructorUsedError;
  String get userId => throw _privateConstructorUsedError;
  int get score => throw _privateConstructorUsedError;
  int get timeSpent => throw _privateConstructorUsedError; // in seconds
  int get correctAnswers => throw _privateConstructorUsedError;
  int get totalQuestions => throw _privateConstructorUsedError;
  double get accuracy => throw _privateConstructorUsedError;
  DateTime get completedAt => throw _privateConstructorUsedError;
  Map<String, dynamic>? get detailedResults =>
      throw _privateConstructorUsedError;
  String? get feedback => throw _privateConstructorUsedError;
  String? get recommendation => throw _privateConstructorUsedError;

  /// Serializes this GameResultModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of GameResultModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GameResultModelCopyWith<GameResultModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GameResultModelCopyWith<$Res> {
  factory $GameResultModelCopyWith(
          GameResultModel value, $Res Function(GameResultModel) then) =
      _$GameResultModelCopyWithImpl<$Res, GameResultModel>;
  @useResult
  $Res call(
      {String id,
      String gameId,
      String userId,
      int score,
      int timeSpent,
      int correctAnswers,
      int totalQuestions,
      double accuracy,
      DateTime completedAt,
      Map<String, dynamic>? detailedResults,
      String? feedback,
      String? recommendation});
}

/// @nodoc
class _$GameResultModelCopyWithImpl<$Res, $Val extends GameResultModel>
    implements $GameResultModelCopyWith<$Res> {
  _$GameResultModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GameResultModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? gameId = null,
    Object? userId = null,
    Object? score = null,
    Object? timeSpent = null,
    Object? correctAnswers = null,
    Object? totalQuestions = null,
    Object? accuracy = null,
    Object? completedAt = null,
    Object? detailedResults = freezed,
    Object? feedback = freezed,
    Object? recommendation = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      gameId: null == gameId
          ? _value.gameId
          : gameId // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      score: null == score
          ? _value.score
          : score // ignore: cast_nullable_to_non_nullable
              as int,
      timeSpent: null == timeSpent
          ? _value.timeSpent
          : timeSpent // ignore: cast_nullable_to_non_nullable
              as int,
      correctAnswers: null == correctAnswers
          ? _value.correctAnswers
          : correctAnswers // ignore: cast_nullable_to_non_nullable
              as int,
      totalQuestions: null == totalQuestions
          ? _value.totalQuestions
          : totalQuestions // ignore: cast_nullable_to_non_nullable
              as int,
      accuracy: null == accuracy
          ? _value.accuracy
          : accuracy // ignore: cast_nullable_to_non_nullable
              as double,
      completedAt: null == completedAt
          ? _value.completedAt
          : completedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      detailedResults: freezed == detailedResults
          ? _value.detailedResults
          : detailedResults // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      feedback: freezed == feedback
          ? _value.feedback
          : feedback // ignore: cast_nullable_to_non_nullable
              as String?,
      recommendation: freezed == recommendation
          ? _value.recommendation
          : recommendation // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GameResultModelImplCopyWith<$Res>
    implements $GameResultModelCopyWith<$Res> {
  factory _$$GameResultModelImplCopyWith(_$GameResultModelImpl value,
          $Res Function(_$GameResultModelImpl) then) =
      __$$GameResultModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String gameId,
      String userId,
      int score,
      int timeSpent,
      int correctAnswers,
      int totalQuestions,
      double accuracy,
      DateTime completedAt,
      Map<String, dynamic>? detailedResults,
      String? feedback,
      String? recommendation});
}

/// @nodoc
class __$$GameResultModelImplCopyWithImpl<$Res>
    extends _$GameResultModelCopyWithImpl<$Res, _$GameResultModelImpl>
    implements _$$GameResultModelImplCopyWith<$Res> {
  __$$GameResultModelImplCopyWithImpl(
      _$GameResultModelImpl _value, $Res Function(_$GameResultModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of GameResultModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? gameId = null,
    Object? userId = null,
    Object? score = null,
    Object? timeSpent = null,
    Object? correctAnswers = null,
    Object? totalQuestions = null,
    Object? accuracy = null,
    Object? completedAt = null,
    Object? detailedResults = freezed,
    Object? feedback = freezed,
    Object? recommendation = freezed,
  }) {
    return _then(_$GameResultModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      gameId: null == gameId
          ? _value.gameId
          : gameId // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      score: null == score
          ? _value.score
          : score // ignore: cast_nullable_to_non_nullable
              as int,
      timeSpent: null == timeSpent
          ? _value.timeSpent
          : timeSpent // ignore: cast_nullable_to_non_nullable
              as int,
      correctAnswers: null == correctAnswers
          ? _value.correctAnswers
          : correctAnswers // ignore: cast_nullable_to_non_nullable
              as int,
      totalQuestions: null == totalQuestions
          ? _value.totalQuestions
          : totalQuestions // ignore: cast_nullable_to_non_nullable
              as int,
      accuracy: null == accuracy
          ? _value.accuracy
          : accuracy // ignore: cast_nullable_to_non_nullable
              as double,
      completedAt: null == completedAt
          ? _value.completedAt
          : completedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      detailedResults: freezed == detailedResults
          ? _value._detailedResults
          : detailedResults // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      feedback: freezed == feedback
          ? _value.feedback
          : feedback // ignore: cast_nullable_to_non_nullable
              as String?,
      recommendation: freezed == recommendation
          ? _value.recommendation
          : recommendation // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GameResultModelImpl implements _GameResultModel {
  const _$GameResultModelImpl(
      {required this.id,
      required this.gameId,
      required this.userId,
      required this.score,
      required this.timeSpent,
      required this.correctAnswers,
      required this.totalQuestions,
      required this.accuracy,
      required this.completedAt,
      final Map<String, dynamic>? detailedResults,
      this.feedback,
      this.recommendation})
      : _detailedResults = detailedResults;

  factory _$GameResultModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$GameResultModelImplFromJson(json);

  @override
  final String id;
  @override
  final String gameId;
  @override
  final String userId;
  @override
  final int score;
  @override
  final int timeSpent;
// in seconds
  @override
  final int correctAnswers;
  @override
  final int totalQuestions;
  @override
  final double accuracy;
  @override
  final DateTime completedAt;
  final Map<String, dynamic>? _detailedResults;
  @override
  Map<String, dynamic>? get detailedResults {
    final value = _detailedResults;
    if (value == null) return null;
    if (_detailedResults is EqualUnmodifiableMapView) return _detailedResults;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  final String? feedback;
  @override
  final String? recommendation;

  @override
  String toString() {
    return 'GameResultModel(id: $id, gameId: $gameId, userId: $userId, score: $score, timeSpent: $timeSpent, correctAnswers: $correctAnswers, totalQuestions: $totalQuestions, accuracy: $accuracy, completedAt: $completedAt, detailedResults: $detailedResults, feedback: $feedback, recommendation: $recommendation)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GameResultModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.gameId, gameId) || other.gameId == gameId) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.score, score) || other.score == score) &&
            (identical(other.timeSpent, timeSpent) ||
                other.timeSpent == timeSpent) &&
            (identical(other.correctAnswers, correctAnswers) ||
                other.correctAnswers == correctAnswers) &&
            (identical(other.totalQuestions, totalQuestions) ||
                other.totalQuestions == totalQuestions) &&
            (identical(other.accuracy, accuracy) ||
                other.accuracy == accuracy) &&
            (identical(other.completedAt, completedAt) ||
                other.completedAt == completedAt) &&
            const DeepCollectionEquality()
                .equals(other._detailedResults, _detailedResults) &&
            (identical(other.feedback, feedback) ||
                other.feedback == feedback) &&
            (identical(other.recommendation, recommendation) ||
                other.recommendation == recommendation));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      gameId,
      userId,
      score,
      timeSpent,
      correctAnswers,
      totalQuestions,
      accuracy,
      completedAt,
      const DeepCollectionEquality().hash(_detailedResults),
      feedback,
      recommendation);

  /// Create a copy of GameResultModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GameResultModelImplCopyWith<_$GameResultModelImpl> get copyWith =>
      __$$GameResultModelImplCopyWithImpl<_$GameResultModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GameResultModelImplToJson(
      this,
    );
  }
}

abstract class _GameResultModel implements GameResultModel {
  const factory _GameResultModel(
      {required final String id,
      required final String gameId,
      required final String userId,
      required final int score,
      required final int timeSpent,
      required final int correctAnswers,
      required final int totalQuestions,
      required final double accuracy,
      required final DateTime completedAt,
      final Map<String, dynamic>? detailedResults,
      final String? feedback,
      final String? recommendation}) = _$GameResultModelImpl;

  factory _GameResultModel.fromJson(Map<String, dynamic> json) =
      _$GameResultModelImpl.fromJson;

  @override
  String get id;
  @override
  String get gameId;
  @override
  String get userId;
  @override
  int get score;
  @override
  int get timeSpent; // in seconds
  @override
  int get correctAnswers;
  @override
  int get totalQuestions;
  @override
  double get accuracy;
  @override
  DateTime get completedAt;
  @override
  Map<String, dynamic>? get detailedResults;
  @override
  String? get feedback;
  @override
  String? get recommendation;

  /// Create a copy of GameResultModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GameResultModelImplCopyWith<_$GameResultModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

GameSessionModel _$GameSessionModelFromJson(Map<String, dynamic> json) {
  return _GameSessionModel.fromJson(json);
}

/// @nodoc
mixin _$GameSessionModel {
  String get id => throw _privateConstructorUsedError;
  String get gameId => throw _privateConstructorUsedError;
  String get userId => throw _privateConstructorUsedError;
  DateTime get startedAt => throw _privateConstructorUsedError;
  DateTime? get completedAt => throw _privateConstructorUsedError;
  GameStateModel? get currentState => throw _privateConstructorUsedError;
  List<GameActionModel>? get actions => throw _privateConstructorUsedError;
  bool? get isActive => throw _privateConstructorUsedError;

  /// Serializes this GameSessionModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of GameSessionModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GameSessionModelCopyWith<GameSessionModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GameSessionModelCopyWith<$Res> {
  factory $GameSessionModelCopyWith(
          GameSessionModel value, $Res Function(GameSessionModel) then) =
      _$GameSessionModelCopyWithImpl<$Res, GameSessionModel>;
  @useResult
  $Res call(
      {String id,
      String gameId,
      String userId,
      DateTime startedAt,
      DateTime? completedAt,
      GameStateModel? currentState,
      List<GameActionModel>? actions,
      bool? isActive});

  $GameStateModelCopyWith<$Res>? get currentState;
}

/// @nodoc
class _$GameSessionModelCopyWithImpl<$Res, $Val extends GameSessionModel>
    implements $GameSessionModelCopyWith<$Res> {
  _$GameSessionModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GameSessionModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? gameId = null,
    Object? userId = null,
    Object? startedAt = null,
    Object? completedAt = freezed,
    Object? currentState = freezed,
    Object? actions = freezed,
    Object? isActive = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      gameId: null == gameId
          ? _value.gameId
          : gameId // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      startedAt: null == startedAt
          ? _value.startedAt
          : startedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      completedAt: freezed == completedAt
          ? _value.completedAt
          : completedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      currentState: freezed == currentState
          ? _value.currentState
          : currentState // ignore: cast_nullable_to_non_nullable
              as GameStateModel?,
      actions: freezed == actions
          ? _value.actions
          : actions // ignore: cast_nullable_to_non_nullable
              as List<GameActionModel>?,
      isActive: freezed == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }

  /// Create a copy of GameSessionModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $GameStateModelCopyWith<$Res>? get currentState {
    if (_value.currentState == null) {
      return null;
    }

    return $GameStateModelCopyWith<$Res>(_value.currentState!, (value) {
      return _then(_value.copyWith(currentState: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$GameSessionModelImplCopyWith<$Res>
    implements $GameSessionModelCopyWith<$Res> {
  factory _$$GameSessionModelImplCopyWith(_$GameSessionModelImpl value,
          $Res Function(_$GameSessionModelImpl) then) =
      __$$GameSessionModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String gameId,
      String userId,
      DateTime startedAt,
      DateTime? completedAt,
      GameStateModel? currentState,
      List<GameActionModel>? actions,
      bool? isActive});

  @override
  $GameStateModelCopyWith<$Res>? get currentState;
}

/// @nodoc
class __$$GameSessionModelImplCopyWithImpl<$Res>
    extends _$GameSessionModelCopyWithImpl<$Res, _$GameSessionModelImpl>
    implements _$$GameSessionModelImplCopyWith<$Res> {
  __$$GameSessionModelImplCopyWithImpl(_$GameSessionModelImpl _value,
      $Res Function(_$GameSessionModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of GameSessionModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? gameId = null,
    Object? userId = null,
    Object? startedAt = null,
    Object? completedAt = freezed,
    Object? currentState = freezed,
    Object? actions = freezed,
    Object? isActive = freezed,
  }) {
    return _then(_$GameSessionModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      gameId: null == gameId
          ? _value.gameId
          : gameId // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      startedAt: null == startedAt
          ? _value.startedAt
          : startedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      completedAt: freezed == completedAt
          ? _value.completedAt
          : completedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      currentState: freezed == currentState
          ? _value.currentState
          : currentState // ignore: cast_nullable_to_non_nullable
              as GameStateModel?,
      actions: freezed == actions
          ? _value._actions
          : actions // ignore: cast_nullable_to_non_nullable
              as List<GameActionModel>?,
      isActive: freezed == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GameSessionModelImpl implements _GameSessionModel {
  const _$GameSessionModelImpl(
      {required this.id,
      required this.gameId,
      required this.userId,
      required this.startedAt,
      this.completedAt,
      this.currentState,
      final List<GameActionModel>? actions,
      this.isActive})
      : _actions = actions;

  factory _$GameSessionModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$GameSessionModelImplFromJson(json);

  @override
  final String id;
  @override
  final String gameId;
  @override
  final String userId;
  @override
  final DateTime startedAt;
  @override
  final DateTime? completedAt;
  @override
  final GameStateModel? currentState;
  final List<GameActionModel>? _actions;
  @override
  List<GameActionModel>? get actions {
    final value = _actions;
    if (value == null) return null;
    if (_actions is EqualUnmodifiableListView) return _actions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final bool? isActive;

  @override
  String toString() {
    return 'GameSessionModel(id: $id, gameId: $gameId, userId: $userId, startedAt: $startedAt, completedAt: $completedAt, currentState: $currentState, actions: $actions, isActive: $isActive)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GameSessionModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.gameId, gameId) || other.gameId == gameId) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.startedAt, startedAt) ||
                other.startedAt == startedAt) &&
            (identical(other.completedAt, completedAt) ||
                other.completedAt == completedAt) &&
            (identical(other.currentState, currentState) ||
                other.currentState == currentState) &&
            const DeepCollectionEquality().equals(other._actions, _actions) &&
            (identical(other.isActive, isActive) ||
                other.isActive == isActive));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      gameId,
      userId,
      startedAt,
      completedAt,
      currentState,
      const DeepCollectionEquality().hash(_actions),
      isActive);

  /// Create a copy of GameSessionModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GameSessionModelImplCopyWith<_$GameSessionModelImpl> get copyWith =>
      __$$GameSessionModelImplCopyWithImpl<_$GameSessionModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GameSessionModelImplToJson(
      this,
    );
  }
}

abstract class _GameSessionModel implements GameSessionModel {
  const factory _GameSessionModel(
      {required final String id,
      required final String gameId,
      required final String userId,
      required final DateTime startedAt,
      final DateTime? completedAt,
      final GameStateModel? currentState,
      final List<GameActionModel>? actions,
      final bool? isActive}) = _$GameSessionModelImpl;

  factory _GameSessionModel.fromJson(Map<String, dynamic> json) =
      _$GameSessionModelImpl.fromJson;

  @override
  String get id;
  @override
  String get gameId;
  @override
  String get userId;
  @override
  DateTime get startedAt;
  @override
  DateTime? get completedAt;
  @override
  GameStateModel? get currentState;
  @override
  List<GameActionModel>? get actions;
  @override
  bool? get isActive;

  /// Create a copy of GameSessionModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GameSessionModelImplCopyWith<_$GameSessionModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

GameStateModel _$GameStateModelFromJson(Map<String, dynamic> json) {
  return _GameStateModel.fromJson(json);
}

/// @nodoc
mixin _$GameStateModel {
  int get currentLevel => throw _privateConstructorUsedError;
  int get currentQuestion => throw _privateConstructorUsedError;
  int get score => throw _privateConstructorUsedError;
  int get timeRemaining => throw _privateConstructorUsedError;
  List<String> get answers => throw _privateConstructorUsedError;
  Map<String, dynamic>? get gameData => throw _privateConstructorUsedError;

  /// Serializes this GameStateModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of GameStateModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GameStateModelCopyWith<GameStateModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GameStateModelCopyWith<$Res> {
  factory $GameStateModelCopyWith(
          GameStateModel value, $Res Function(GameStateModel) then) =
      _$GameStateModelCopyWithImpl<$Res, GameStateModel>;
  @useResult
  $Res call(
      {int currentLevel,
      int currentQuestion,
      int score,
      int timeRemaining,
      List<String> answers,
      Map<String, dynamic>? gameData});
}

/// @nodoc
class _$GameStateModelCopyWithImpl<$Res, $Val extends GameStateModel>
    implements $GameStateModelCopyWith<$Res> {
  _$GameStateModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GameStateModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentLevel = null,
    Object? currentQuestion = null,
    Object? score = null,
    Object? timeRemaining = null,
    Object? answers = null,
    Object? gameData = freezed,
  }) {
    return _then(_value.copyWith(
      currentLevel: null == currentLevel
          ? _value.currentLevel
          : currentLevel // ignore: cast_nullable_to_non_nullable
              as int,
      currentQuestion: null == currentQuestion
          ? _value.currentQuestion
          : currentQuestion // ignore: cast_nullable_to_non_nullable
              as int,
      score: null == score
          ? _value.score
          : score // ignore: cast_nullable_to_non_nullable
              as int,
      timeRemaining: null == timeRemaining
          ? _value.timeRemaining
          : timeRemaining // ignore: cast_nullable_to_non_nullable
              as int,
      answers: null == answers
          ? _value.answers
          : answers // ignore: cast_nullable_to_non_nullable
              as List<String>,
      gameData: freezed == gameData
          ? _value.gameData
          : gameData // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GameStateModelImplCopyWith<$Res>
    implements $GameStateModelCopyWith<$Res> {
  factory _$$GameStateModelImplCopyWith(_$GameStateModelImpl value,
          $Res Function(_$GameStateModelImpl) then) =
      __$$GameStateModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int currentLevel,
      int currentQuestion,
      int score,
      int timeRemaining,
      List<String> answers,
      Map<String, dynamic>? gameData});
}

/// @nodoc
class __$$GameStateModelImplCopyWithImpl<$Res>
    extends _$GameStateModelCopyWithImpl<$Res, _$GameStateModelImpl>
    implements _$$GameStateModelImplCopyWith<$Res> {
  __$$GameStateModelImplCopyWithImpl(
      _$GameStateModelImpl _value, $Res Function(_$GameStateModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of GameStateModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentLevel = null,
    Object? currentQuestion = null,
    Object? score = null,
    Object? timeRemaining = null,
    Object? answers = null,
    Object? gameData = freezed,
  }) {
    return _then(_$GameStateModelImpl(
      currentLevel: null == currentLevel
          ? _value.currentLevel
          : currentLevel // ignore: cast_nullable_to_non_nullable
              as int,
      currentQuestion: null == currentQuestion
          ? _value.currentQuestion
          : currentQuestion // ignore: cast_nullable_to_non_nullable
              as int,
      score: null == score
          ? _value.score
          : score // ignore: cast_nullable_to_non_nullable
              as int,
      timeRemaining: null == timeRemaining
          ? _value.timeRemaining
          : timeRemaining // ignore: cast_nullable_to_non_nullable
              as int,
      answers: null == answers
          ? _value._answers
          : answers // ignore: cast_nullable_to_non_nullable
              as List<String>,
      gameData: freezed == gameData
          ? _value._gameData
          : gameData // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GameStateModelImpl implements _GameStateModel {
  const _$GameStateModelImpl(
      {required this.currentLevel,
      required this.currentQuestion,
      required this.score,
      required this.timeRemaining,
      required final List<String> answers,
      final Map<String, dynamic>? gameData})
      : _answers = answers,
        _gameData = gameData;

  factory _$GameStateModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$GameStateModelImplFromJson(json);

  @override
  final int currentLevel;
  @override
  final int currentQuestion;
  @override
  final int score;
  @override
  final int timeRemaining;
  final List<String> _answers;
  @override
  List<String> get answers {
    if (_answers is EqualUnmodifiableListView) return _answers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_answers);
  }

  final Map<String, dynamic>? _gameData;
  @override
  Map<String, dynamic>? get gameData {
    final value = _gameData;
    if (value == null) return null;
    if (_gameData is EqualUnmodifiableMapView) return _gameData;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  String toString() {
    return 'GameStateModel(currentLevel: $currentLevel, currentQuestion: $currentQuestion, score: $score, timeRemaining: $timeRemaining, answers: $answers, gameData: $gameData)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GameStateModelImpl &&
            (identical(other.currentLevel, currentLevel) ||
                other.currentLevel == currentLevel) &&
            (identical(other.currentQuestion, currentQuestion) ||
                other.currentQuestion == currentQuestion) &&
            (identical(other.score, score) || other.score == score) &&
            (identical(other.timeRemaining, timeRemaining) ||
                other.timeRemaining == timeRemaining) &&
            const DeepCollectionEquality().equals(other._answers, _answers) &&
            const DeepCollectionEquality().equals(other._gameData, _gameData));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      currentLevel,
      currentQuestion,
      score,
      timeRemaining,
      const DeepCollectionEquality().hash(_answers),
      const DeepCollectionEquality().hash(_gameData));

  /// Create a copy of GameStateModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GameStateModelImplCopyWith<_$GameStateModelImpl> get copyWith =>
      __$$GameStateModelImplCopyWithImpl<_$GameStateModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GameStateModelImplToJson(
      this,
    );
  }
}

abstract class _GameStateModel implements GameStateModel {
  const factory _GameStateModel(
      {required final int currentLevel,
      required final int currentQuestion,
      required final int score,
      required final int timeRemaining,
      required final List<String> answers,
      final Map<String, dynamic>? gameData}) = _$GameStateModelImpl;

  factory _GameStateModel.fromJson(Map<String, dynamic> json) =
      _$GameStateModelImpl.fromJson;

  @override
  int get currentLevel;
  @override
  int get currentQuestion;
  @override
  int get score;
  @override
  int get timeRemaining;
  @override
  List<String> get answers;
  @override
  Map<String, dynamic>? get gameData;

  /// Create a copy of GameStateModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GameStateModelImplCopyWith<_$GameStateModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

GameActionModel _$GameActionModelFromJson(Map<String, dynamic> json) {
  return _GameActionModel.fromJson(json);
}

/// @nodoc
mixin _$GameActionModel {
  String get id => throw _privateConstructorUsedError;
  String get type =>
      throw _privateConstructorUsedError; // answer, skip, pause, resume
  DateTime get timestamp => throw _privateConstructorUsedError;
  Map<String, dynamic> get data => throw _privateConstructorUsedError;
  String? get result => throw _privateConstructorUsedError;

  /// Serializes this GameActionModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of GameActionModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GameActionModelCopyWith<GameActionModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GameActionModelCopyWith<$Res> {
  factory $GameActionModelCopyWith(
          GameActionModel value, $Res Function(GameActionModel) then) =
      _$GameActionModelCopyWithImpl<$Res, GameActionModel>;
  @useResult
  $Res call(
      {String id,
      String type,
      DateTime timestamp,
      Map<String, dynamic> data,
      String? result});
}

/// @nodoc
class _$GameActionModelCopyWithImpl<$Res, $Val extends GameActionModel>
    implements $GameActionModelCopyWith<$Res> {
  _$GameActionModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GameActionModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? type = null,
    Object? timestamp = null,
    Object? data = null,
    Object? result = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      timestamp: null == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as DateTime,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      result: freezed == result
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GameActionModelImplCopyWith<$Res>
    implements $GameActionModelCopyWith<$Res> {
  factory _$$GameActionModelImplCopyWith(_$GameActionModelImpl value,
          $Res Function(_$GameActionModelImpl) then) =
      __$$GameActionModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String type,
      DateTime timestamp,
      Map<String, dynamic> data,
      String? result});
}

/// @nodoc
class __$$GameActionModelImplCopyWithImpl<$Res>
    extends _$GameActionModelCopyWithImpl<$Res, _$GameActionModelImpl>
    implements _$$GameActionModelImplCopyWith<$Res> {
  __$$GameActionModelImplCopyWithImpl(
      _$GameActionModelImpl _value, $Res Function(_$GameActionModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of GameActionModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? type = null,
    Object? timestamp = null,
    Object? data = null,
    Object? result = freezed,
  }) {
    return _then(_$GameActionModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      timestamp: null == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as DateTime,
      data: null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      result: freezed == result
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GameActionModelImpl implements _GameActionModel {
  const _$GameActionModelImpl(
      {required this.id,
      required this.type,
      required this.timestamp,
      required final Map<String, dynamic> data,
      this.result})
      : _data = data;

  factory _$GameActionModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$GameActionModelImplFromJson(json);

  @override
  final String id;
  @override
  final String type;
// answer, skip, pause, resume
  @override
  final DateTime timestamp;
  final Map<String, dynamic> _data;
  @override
  Map<String, dynamic> get data {
    if (_data is EqualUnmodifiableMapView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_data);
  }

  @override
  final String? result;

  @override
  String toString() {
    return 'GameActionModel(id: $id, type: $type, timestamp: $timestamp, data: $data, result: $result)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GameActionModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.timestamp, timestamp) ||
                other.timestamp == timestamp) &&
            const DeepCollectionEquality().equals(other._data, _data) &&
            (identical(other.result, result) || other.result == result));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, type, timestamp,
      const DeepCollectionEquality().hash(_data), result);

  /// Create a copy of GameActionModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GameActionModelImplCopyWith<_$GameActionModelImpl> get copyWith =>
      __$$GameActionModelImplCopyWithImpl<_$GameActionModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GameActionModelImplToJson(
      this,
    );
  }
}

abstract class _GameActionModel implements GameActionModel {
  const factory _GameActionModel(
      {required final String id,
      required final String type,
      required final DateTime timestamp,
      required final Map<String, dynamic> data,
      final String? result}) = _$GameActionModelImpl;

  factory _GameActionModel.fromJson(Map<String, dynamic> json) =
      _$GameActionModelImpl.fromJson;

  @override
  String get id;
  @override
  String get type; // answer, skip, pause, resume
  @override
  DateTime get timestamp;
  @override
  Map<String, dynamic> get data;
  @override
  String? get result;

  /// Create a copy of GameActionModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GameActionModelImplCopyWith<_$GameActionModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
