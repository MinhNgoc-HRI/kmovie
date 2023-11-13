// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'activity_data_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ActivityDataModel _$ActivityDataModelFromJson(Map<String, dynamic> json) {
  return _ActivityDataModel.fromJson(json);
}

/// @nodoc
mixin _$ActivityDataModel {
  String? get key => throw _privateConstructorUsedError;
  String? get activity => throw _privateConstructorUsedError;
  String? get type => throw _privateConstructorUsedError;
  int? get participants => throw _privateConstructorUsedError;
  double? get price => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ActivityDataModelCopyWith<ActivityDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ActivityDataModelCopyWith<$Res> {
  factory $ActivityDataModelCopyWith(
          ActivityDataModel value, $Res Function(ActivityDataModel) then) =
      _$ActivityDataModelCopyWithImpl<$Res, ActivityDataModel>;
  @useResult
  $Res call(
      {String? key,
      String? activity,
      String? type,
      int? participants,
      double? price});
}

/// @nodoc
class _$ActivityDataModelCopyWithImpl<$Res, $Val extends ActivityDataModel>
    implements $ActivityDataModelCopyWith<$Res> {
  _$ActivityDataModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? key = freezed,
    Object? activity = freezed,
    Object? type = freezed,
    Object? participants = freezed,
    Object? price = freezed,
  }) {
    return _then(_value.copyWith(
      key: freezed == key
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as String?,
      activity: freezed == activity
          ? _value.activity
          : activity // ignore: cast_nullable_to_non_nullable
              as String?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      participants: freezed == participants
          ? _value.participants
          : participants // ignore: cast_nullable_to_non_nullable
              as int?,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ActivityDataModelImplCopyWith<$Res>
    implements $ActivityDataModelCopyWith<$Res> {
  factory _$$ActivityDataModelImplCopyWith(_$ActivityDataModelImpl value,
          $Res Function(_$ActivityDataModelImpl) then) =
      __$$ActivityDataModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? key,
      String? activity,
      String? type,
      int? participants,
      double? price});
}

/// @nodoc
class __$$ActivityDataModelImplCopyWithImpl<$Res>
    extends _$ActivityDataModelCopyWithImpl<$Res, _$ActivityDataModelImpl>
    implements _$$ActivityDataModelImplCopyWith<$Res> {
  __$$ActivityDataModelImplCopyWithImpl(_$ActivityDataModelImpl _value,
      $Res Function(_$ActivityDataModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? key = freezed,
    Object? activity = freezed,
    Object? type = freezed,
    Object? participants = freezed,
    Object? price = freezed,
  }) {
    return _then(_$ActivityDataModelImpl(
      key: freezed == key
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as String?,
      activity: freezed == activity
          ? _value.activity
          : activity // ignore: cast_nullable_to_non_nullable
              as String?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      participants: freezed == participants
          ? _value.participants
          : participants // ignore: cast_nullable_to_non_nullable
              as int?,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ActivityDataModelImpl
    with DiagnosticableTreeMixin
    implements _ActivityDataModel {
  const _$ActivityDataModelImpl(
      {this.key, this.activity, this.type, this.participants, this.price});

  factory _$ActivityDataModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ActivityDataModelImplFromJson(json);

  @override
  final String? key;
  @override
  final String? activity;
  @override
  final String? type;
  @override
  final int? participants;
  @override
  final double? price;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ActivityDataModel(key: $key, activity: $activity, type: $type, participants: $participants, price: $price)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ActivityDataModel'))
      ..add(DiagnosticsProperty('key', key))
      ..add(DiagnosticsProperty('activity', activity))
      ..add(DiagnosticsProperty('type', type))
      ..add(DiagnosticsProperty('participants', participants))
      ..add(DiagnosticsProperty('price', price));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ActivityDataModelImpl &&
            (identical(other.key, key) || other.key == key) &&
            (identical(other.activity, activity) ||
                other.activity == activity) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.participants, participants) ||
                other.participants == participants) &&
            (identical(other.price, price) || other.price == price));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, key, activity, type, participants, price);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ActivityDataModelImplCopyWith<_$ActivityDataModelImpl> get copyWith =>
      __$$ActivityDataModelImplCopyWithImpl<_$ActivityDataModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ActivityDataModelImplToJson(
      this,
    );
  }
}

abstract class _ActivityDataModel implements ActivityDataModel {
  const factory _ActivityDataModel(
      {final String? key,
      final String? activity,
      final String? type,
      final int? participants,
      final double? price}) = _$ActivityDataModelImpl;

  factory _ActivityDataModel.fromJson(Map<String, dynamic> json) =
      _$ActivityDataModelImpl.fromJson;

  @override
  String? get key;
  @override
  String? get activity;
  @override
  String? get type;
  @override
  int? get participants;
  @override
  double? get price;
  @override
  @JsonKey(ignore: true)
  _$$ActivityDataModelImplCopyWith<_$ActivityDataModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
