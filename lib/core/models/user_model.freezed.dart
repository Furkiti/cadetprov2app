// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UserModel _$UserModelFromJson(Map<String, dynamic> json) {
  return _UserModel.fromJson(json);
}

/// @nodoc
mixin _$UserModel {
  String get id => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  String get firstName => throw _privateConstructorUsedError;
  String get lastName => throw _privateConstructorUsedError;
  String? get profileImageUrl => throw _privateConstructorUsedError;
  String? get phoneNumber => throw _privateConstructorUsedError;
  DateTime? get dateOfBirth => throw _privateConstructorUsedError;
  String? get nationality => throw _privateConstructorUsedError;
  String? get educationLevel => throw _privateConstructorUsedError;
  String? get currentOccupation => throw _privateConstructorUsedError;
  List<String>? get enrolledCourses => throw _privateConstructorUsedError;
  List<String>? get completedTests => throw _privateConstructorUsedError;
  Map<String, dynamic>? get testResults => throw _privateConstructorUsedError;
  DateTime? get createdAt => throw _privateConstructorUsedError;
  DateTime? get updatedAt => throw _privateConstructorUsedError;
  bool? get isActive => throw _privateConstructorUsedError;
  String? get role => throw _privateConstructorUsedError;

  /// Serializes this UserModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UserModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UserModelCopyWith<UserModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserModelCopyWith<$Res> {
  factory $UserModelCopyWith(UserModel value, $Res Function(UserModel) then) =
      _$UserModelCopyWithImpl<$Res, UserModel>;
  @useResult
  $Res call(
      {String id,
      String email,
      String firstName,
      String lastName,
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
      String? role});
}

/// @nodoc
class _$UserModelCopyWithImpl<$Res, $Val extends UserModel>
    implements $UserModelCopyWith<$Res> {
  _$UserModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UserModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? email = null,
    Object? firstName = null,
    Object? lastName = null,
    Object? profileImageUrl = freezed,
    Object? phoneNumber = freezed,
    Object? dateOfBirth = freezed,
    Object? nationality = freezed,
    Object? educationLevel = freezed,
    Object? currentOccupation = freezed,
    Object? enrolledCourses = freezed,
    Object? completedTests = freezed,
    Object? testResults = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? isActive = freezed,
    Object? role = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      firstName: null == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      lastName: null == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
      profileImageUrl: freezed == profileImageUrl
          ? _value.profileImageUrl
          : profileImageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      phoneNumber: freezed == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      dateOfBirth: freezed == dateOfBirth
          ? _value.dateOfBirth
          : dateOfBirth // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      nationality: freezed == nationality
          ? _value.nationality
          : nationality // ignore: cast_nullable_to_non_nullable
              as String?,
      educationLevel: freezed == educationLevel
          ? _value.educationLevel
          : educationLevel // ignore: cast_nullable_to_non_nullable
              as String?,
      currentOccupation: freezed == currentOccupation
          ? _value.currentOccupation
          : currentOccupation // ignore: cast_nullable_to_non_nullable
              as String?,
      enrolledCourses: freezed == enrolledCourses
          ? _value.enrolledCourses
          : enrolledCourses // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      completedTests: freezed == completedTests
          ? _value.completedTests
          : completedTests // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      testResults: freezed == testResults
          ? _value.testResults
          : testResults // ignore: cast_nullable_to_non_nullable
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
      role: freezed == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserModelImplCopyWith<$Res>
    implements $UserModelCopyWith<$Res> {
  factory _$$UserModelImplCopyWith(
          _$UserModelImpl value, $Res Function(_$UserModelImpl) then) =
      __$$UserModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String email,
      String firstName,
      String lastName,
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
      String? role});
}

/// @nodoc
class __$$UserModelImplCopyWithImpl<$Res>
    extends _$UserModelCopyWithImpl<$Res, _$UserModelImpl>
    implements _$$UserModelImplCopyWith<$Res> {
  __$$UserModelImplCopyWithImpl(
      _$UserModelImpl _value, $Res Function(_$UserModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? email = null,
    Object? firstName = null,
    Object? lastName = null,
    Object? profileImageUrl = freezed,
    Object? phoneNumber = freezed,
    Object? dateOfBirth = freezed,
    Object? nationality = freezed,
    Object? educationLevel = freezed,
    Object? currentOccupation = freezed,
    Object? enrolledCourses = freezed,
    Object? completedTests = freezed,
    Object? testResults = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? isActive = freezed,
    Object? role = freezed,
  }) {
    return _then(_$UserModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      firstName: null == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      lastName: null == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
      profileImageUrl: freezed == profileImageUrl
          ? _value.profileImageUrl
          : profileImageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      phoneNumber: freezed == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      dateOfBirth: freezed == dateOfBirth
          ? _value.dateOfBirth
          : dateOfBirth // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      nationality: freezed == nationality
          ? _value.nationality
          : nationality // ignore: cast_nullable_to_non_nullable
              as String?,
      educationLevel: freezed == educationLevel
          ? _value.educationLevel
          : educationLevel // ignore: cast_nullable_to_non_nullable
              as String?,
      currentOccupation: freezed == currentOccupation
          ? _value.currentOccupation
          : currentOccupation // ignore: cast_nullable_to_non_nullable
              as String?,
      enrolledCourses: freezed == enrolledCourses
          ? _value._enrolledCourses
          : enrolledCourses // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      completedTests: freezed == completedTests
          ? _value._completedTests
          : completedTests // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      testResults: freezed == testResults
          ? _value._testResults
          : testResults // ignore: cast_nullable_to_non_nullable
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
      role: freezed == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserModelImpl implements _UserModel {
  const _$UserModelImpl(
      {required this.id,
      required this.email,
      required this.firstName,
      required this.lastName,
      this.profileImageUrl,
      this.phoneNumber,
      this.dateOfBirth,
      this.nationality,
      this.educationLevel,
      this.currentOccupation,
      final List<String>? enrolledCourses,
      final List<String>? completedTests,
      final Map<String, dynamic>? testResults,
      this.createdAt,
      this.updatedAt,
      this.isActive,
      this.role})
      : _enrolledCourses = enrolledCourses,
        _completedTests = completedTests,
        _testResults = testResults;

  factory _$UserModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserModelImplFromJson(json);

  @override
  final String id;
  @override
  final String email;
  @override
  final String firstName;
  @override
  final String lastName;
  @override
  final String? profileImageUrl;
  @override
  final String? phoneNumber;
  @override
  final DateTime? dateOfBirth;
  @override
  final String? nationality;
  @override
  final String? educationLevel;
  @override
  final String? currentOccupation;
  final List<String>? _enrolledCourses;
  @override
  List<String>? get enrolledCourses {
    final value = _enrolledCourses;
    if (value == null) return null;
    if (_enrolledCourses is EqualUnmodifiableListView) return _enrolledCourses;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<String>? _completedTests;
  @override
  List<String>? get completedTests {
    final value = _completedTests;
    if (value == null) return null;
    if (_completedTests is EqualUnmodifiableListView) return _completedTests;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final Map<String, dynamic>? _testResults;
  @override
  Map<String, dynamic>? get testResults {
    final value = _testResults;
    if (value == null) return null;
    if (_testResults is EqualUnmodifiableMapView) return _testResults;
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
  final String? role;

  @override
  String toString() {
    return 'UserModel(id: $id, email: $email, firstName: $firstName, lastName: $lastName, profileImageUrl: $profileImageUrl, phoneNumber: $phoneNumber, dateOfBirth: $dateOfBirth, nationality: $nationality, educationLevel: $educationLevel, currentOccupation: $currentOccupation, enrolledCourses: $enrolledCourses, completedTests: $completedTests, testResults: $testResults, createdAt: $createdAt, updatedAt: $updatedAt, isActive: $isActive, role: $role)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName) &&
            (identical(other.lastName, lastName) ||
                other.lastName == lastName) &&
            (identical(other.profileImageUrl, profileImageUrl) ||
                other.profileImageUrl == profileImageUrl) &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber) &&
            (identical(other.dateOfBirth, dateOfBirth) ||
                other.dateOfBirth == dateOfBirth) &&
            (identical(other.nationality, nationality) ||
                other.nationality == nationality) &&
            (identical(other.educationLevel, educationLevel) ||
                other.educationLevel == educationLevel) &&
            (identical(other.currentOccupation, currentOccupation) ||
                other.currentOccupation == currentOccupation) &&
            const DeepCollectionEquality()
                .equals(other._enrolledCourses, _enrolledCourses) &&
            const DeepCollectionEquality()
                .equals(other._completedTests, _completedTests) &&
            const DeepCollectionEquality()
                .equals(other._testResults, _testResults) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.isActive, isActive) ||
                other.isActive == isActive) &&
            (identical(other.role, role) || other.role == role));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      email,
      firstName,
      lastName,
      profileImageUrl,
      phoneNumber,
      dateOfBirth,
      nationality,
      educationLevel,
      currentOccupation,
      const DeepCollectionEquality().hash(_enrolledCourses),
      const DeepCollectionEquality().hash(_completedTests),
      const DeepCollectionEquality().hash(_testResults),
      createdAt,
      updatedAt,
      isActive,
      role);

  /// Create a copy of UserModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserModelImplCopyWith<_$UserModelImpl> get copyWith =>
      __$$UserModelImplCopyWithImpl<_$UserModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserModelImplToJson(
      this,
    );
  }
}

abstract class _UserModel implements UserModel {
  const factory _UserModel(
      {required final String id,
      required final String email,
      required final String firstName,
      required final String lastName,
      final String? profileImageUrl,
      final String? phoneNumber,
      final DateTime? dateOfBirth,
      final String? nationality,
      final String? educationLevel,
      final String? currentOccupation,
      final List<String>? enrolledCourses,
      final List<String>? completedTests,
      final Map<String, dynamic>? testResults,
      final DateTime? createdAt,
      final DateTime? updatedAt,
      final bool? isActive,
      final String? role}) = _$UserModelImpl;

  factory _UserModel.fromJson(Map<String, dynamic> json) =
      _$UserModelImpl.fromJson;

  @override
  String get id;
  @override
  String get email;
  @override
  String get firstName;
  @override
  String get lastName;
  @override
  String? get profileImageUrl;
  @override
  String? get phoneNumber;
  @override
  DateTime? get dateOfBirth;
  @override
  String? get nationality;
  @override
  String? get educationLevel;
  @override
  String? get currentOccupation;
  @override
  List<String>? get enrolledCourses;
  @override
  List<String>? get completedTests;
  @override
  Map<String, dynamic>? get testResults;
  @override
  DateTime? get createdAt;
  @override
  DateTime? get updatedAt;
  @override
  bool? get isActive;
  @override
  String? get role;

  /// Create a copy of UserModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserModelImplCopyWith<_$UserModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

UserRegistrationData _$UserRegistrationDataFromJson(Map<String, dynamic> json) {
  return _UserRegistrationData.fromJson(json);
}

/// @nodoc
mixin _$UserRegistrationData {
  String get email => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;
  String get firstName => throw _privateConstructorUsedError;
  String get lastName => throw _privateConstructorUsedError;
  String? get phoneNumber => throw _privateConstructorUsedError;
  DateTime? get dateOfBirth => throw _privateConstructorUsedError;
  String? get nationality => throw _privateConstructorUsedError;
  String? get educationLevel => throw _privateConstructorUsedError;
  String? get currentOccupation => throw _privateConstructorUsedError;

  /// Serializes this UserRegistrationData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UserRegistrationData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UserRegistrationDataCopyWith<UserRegistrationData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserRegistrationDataCopyWith<$Res> {
  factory $UserRegistrationDataCopyWith(UserRegistrationData value,
          $Res Function(UserRegistrationData) then) =
      _$UserRegistrationDataCopyWithImpl<$Res, UserRegistrationData>;
  @useResult
  $Res call(
      {String email,
      String password,
      String firstName,
      String lastName,
      String? phoneNumber,
      DateTime? dateOfBirth,
      String? nationality,
      String? educationLevel,
      String? currentOccupation});
}

/// @nodoc
class _$UserRegistrationDataCopyWithImpl<$Res,
        $Val extends UserRegistrationData>
    implements $UserRegistrationDataCopyWith<$Res> {
  _$UserRegistrationDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UserRegistrationData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
    Object? firstName = null,
    Object? lastName = null,
    Object? phoneNumber = freezed,
    Object? dateOfBirth = freezed,
    Object? nationality = freezed,
    Object? educationLevel = freezed,
    Object? currentOccupation = freezed,
  }) {
    return _then(_value.copyWith(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      firstName: null == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      lastName: null == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
      phoneNumber: freezed == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      dateOfBirth: freezed == dateOfBirth
          ? _value.dateOfBirth
          : dateOfBirth // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      nationality: freezed == nationality
          ? _value.nationality
          : nationality // ignore: cast_nullable_to_non_nullable
              as String?,
      educationLevel: freezed == educationLevel
          ? _value.educationLevel
          : educationLevel // ignore: cast_nullable_to_non_nullable
              as String?,
      currentOccupation: freezed == currentOccupation
          ? _value.currentOccupation
          : currentOccupation // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserRegistrationDataImplCopyWith<$Res>
    implements $UserRegistrationDataCopyWith<$Res> {
  factory _$$UserRegistrationDataImplCopyWith(_$UserRegistrationDataImpl value,
          $Res Function(_$UserRegistrationDataImpl) then) =
      __$$UserRegistrationDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String email,
      String password,
      String firstName,
      String lastName,
      String? phoneNumber,
      DateTime? dateOfBirth,
      String? nationality,
      String? educationLevel,
      String? currentOccupation});
}

/// @nodoc
class __$$UserRegistrationDataImplCopyWithImpl<$Res>
    extends _$UserRegistrationDataCopyWithImpl<$Res, _$UserRegistrationDataImpl>
    implements _$$UserRegistrationDataImplCopyWith<$Res> {
  __$$UserRegistrationDataImplCopyWithImpl(_$UserRegistrationDataImpl _value,
      $Res Function(_$UserRegistrationDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserRegistrationData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
    Object? firstName = null,
    Object? lastName = null,
    Object? phoneNumber = freezed,
    Object? dateOfBirth = freezed,
    Object? nationality = freezed,
    Object? educationLevel = freezed,
    Object? currentOccupation = freezed,
  }) {
    return _then(_$UserRegistrationDataImpl(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      firstName: null == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      lastName: null == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
      phoneNumber: freezed == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      dateOfBirth: freezed == dateOfBirth
          ? _value.dateOfBirth
          : dateOfBirth // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      nationality: freezed == nationality
          ? _value.nationality
          : nationality // ignore: cast_nullable_to_non_nullable
              as String?,
      educationLevel: freezed == educationLevel
          ? _value.educationLevel
          : educationLevel // ignore: cast_nullable_to_non_nullable
              as String?,
      currentOccupation: freezed == currentOccupation
          ? _value.currentOccupation
          : currentOccupation // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserRegistrationDataImpl implements _UserRegistrationData {
  const _$UserRegistrationDataImpl(
      {required this.email,
      required this.password,
      required this.firstName,
      required this.lastName,
      this.phoneNumber,
      this.dateOfBirth,
      this.nationality,
      this.educationLevel,
      this.currentOccupation});

  factory _$UserRegistrationDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserRegistrationDataImplFromJson(json);

  @override
  final String email;
  @override
  final String password;
  @override
  final String firstName;
  @override
  final String lastName;
  @override
  final String? phoneNumber;
  @override
  final DateTime? dateOfBirth;
  @override
  final String? nationality;
  @override
  final String? educationLevel;
  @override
  final String? currentOccupation;

  @override
  String toString() {
    return 'UserRegistrationData(email: $email, password: $password, firstName: $firstName, lastName: $lastName, phoneNumber: $phoneNumber, dateOfBirth: $dateOfBirth, nationality: $nationality, educationLevel: $educationLevel, currentOccupation: $currentOccupation)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserRegistrationDataImpl &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName) &&
            (identical(other.lastName, lastName) ||
                other.lastName == lastName) &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber) &&
            (identical(other.dateOfBirth, dateOfBirth) ||
                other.dateOfBirth == dateOfBirth) &&
            (identical(other.nationality, nationality) ||
                other.nationality == nationality) &&
            (identical(other.educationLevel, educationLevel) ||
                other.educationLevel == educationLevel) &&
            (identical(other.currentOccupation, currentOccupation) ||
                other.currentOccupation == currentOccupation));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      email,
      password,
      firstName,
      lastName,
      phoneNumber,
      dateOfBirth,
      nationality,
      educationLevel,
      currentOccupation);

  /// Create a copy of UserRegistrationData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserRegistrationDataImplCopyWith<_$UserRegistrationDataImpl>
      get copyWith =>
          __$$UserRegistrationDataImplCopyWithImpl<_$UserRegistrationDataImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserRegistrationDataImplToJson(
      this,
    );
  }
}

abstract class _UserRegistrationData implements UserRegistrationData {
  const factory _UserRegistrationData(
      {required final String email,
      required final String password,
      required final String firstName,
      required final String lastName,
      final String? phoneNumber,
      final DateTime? dateOfBirth,
      final String? nationality,
      final String? educationLevel,
      final String? currentOccupation}) = _$UserRegistrationDataImpl;

  factory _UserRegistrationData.fromJson(Map<String, dynamic> json) =
      _$UserRegistrationDataImpl.fromJson;

  @override
  String get email;
  @override
  String get password;
  @override
  String get firstName;
  @override
  String get lastName;
  @override
  String? get phoneNumber;
  @override
  DateTime? get dateOfBirth;
  @override
  String? get nationality;
  @override
  String? get educationLevel;
  @override
  String? get currentOccupation;

  /// Create a copy of UserRegistrationData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserRegistrationDataImplCopyWith<_$UserRegistrationDataImpl>
      get copyWith => throw _privateConstructorUsedError;
}

UserLoginData _$UserLoginDataFromJson(Map<String, dynamic> json) {
  return _UserLoginData.fromJson(json);
}

/// @nodoc
mixin _$UserLoginData {
  String get email => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;

  /// Serializes this UserLoginData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UserLoginData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UserLoginDataCopyWith<UserLoginData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserLoginDataCopyWith<$Res> {
  factory $UserLoginDataCopyWith(
          UserLoginData value, $Res Function(UserLoginData) then) =
      _$UserLoginDataCopyWithImpl<$Res, UserLoginData>;
  @useResult
  $Res call({String email, String password});
}

/// @nodoc
class _$UserLoginDataCopyWithImpl<$Res, $Val extends UserLoginData>
    implements $UserLoginDataCopyWith<$Res> {
  _$UserLoginDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UserLoginData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
  }) {
    return _then(_value.copyWith(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserLoginDataImplCopyWith<$Res>
    implements $UserLoginDataCopyWith<$Res> {
  factory _$$UserLoginDataImplCopyWith(
          _$UserLoginDataImpl value, $Res Function(_$UserLoginDataImpl) then) =
      __$$UserLoginDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String email, String password});
}

/// @nodoc
class __$$UserLoginDataImplCopyWithImpl<$Res>
    extends _$UserLoginDataCopyWithImpl<$Res, _$UserLoginDataImpl>
    implements _$$UserLoginDataImplCopyWith<$Res> {
  __$$UserLoginDataImplCopyWithImpl(
      _$UserLoginDataImpl _value, $Res Function(_$UserLoginDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserLoginData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
  }) {
    return _then(_$UserLoginDataImpl(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserLoginDataImpl implements _UserLoginData {
  const _$UserLoginDataImpl({required this.email, required this.password});

  factory _$UserLoginDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserLoginDataImplFromJson(json);

  @override
  final String email;
  @override
  final String password;

  @override
  String toString() {
    return 'UserLoginData(email: $email, password: $password)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserLoginDataImpl &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, email, password);

  /// Create a copy of UserLoginData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserLoginDataImplCopyWith<_$UserLoginDataImpl> get copyWith =>
      __$$UserLoginDataImplCopyWithImpl<_$UserLoginDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserLoginDataImplToJson(
      this,
    );
  }
}

abstract class _UserLoginData implements UserLoginData {
  const factory _UserLoginData(
      {required final String email,
      required final String password}) = _$UserLoginDataImpl;

  factory _UserLoginData.fromJson(Map<String, dynamic> json) =
      _$UserLoginDataImpl.fromJson;

  @override
  String get email;
  @override
  String get password;

  /// Create a copy of UserLoginData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserLoginDataImplCopyWith<_$UserLoginDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
