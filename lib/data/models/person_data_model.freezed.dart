// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'person_data_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PersonDataModel _$PersonDataModelFromJson(Map<String, dynamic> json) {
  return _PersonDataModel.fromJson(json);
}

/// @nodoc
mixin _$PersonDataModel {
  String? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PersonDataModelCopyWith<PersonDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PersonDataModelCopyWith<$Res> {
  factory $PersonDataModelCopyWith(
          PersonDataModel value, $Res Function(PersonDataModel) then) =
      _$PersonDataModelCopyWithImpl<$Res, PersonDataModel>;
  @useResult
  $Res call({String? id, String? name});
}

/// @nodoc
class _$PersonDataModelCopyWithImpl<$Res, $Val extends PersonDataModel>
    implements $PersonDataModelCopyWith<$Res> {
  _$PersonDataModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PersonDataModelImplCopyWith<$Res>
    implements $PersonDataModelCopyWith<$Res> {
  factory _$$PersonDataModelImplCopyWith(_$PersonDataModelImpl value,
          $Res Function(_$PersonDataModelImpl) then) =
      __$$PersonDataModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? id, String? name});
}

/// @nodoc
class __$$PersonDataModelImplCopyWithImpl<$Res>
    extends _$PersonDataModelCopyWithImpl<$Res, _$PersonDataModelImpl>
    implements _$$PersonDataModelImplCopyWith<$Res> {
  __$$PersonDataModelImplCopyWithImpl(
      _$PersonDataModelImpl _value, $Res Function(_$PersonDataModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
  }) {
    return _then(_$PersonDataModelImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PersonDataModelImpl
    with DiagnosticableTreeMixin
    implements _PersonDataModel {
  const _$PersonDataModelImpl({this.id, this.name});

  factory _$PersonDataModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$PersonDataModelImplFromJson(json);

  @override
  final String? id;
  @override
  final String? name;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PersonDataModel(id: $id, name: $name)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'PersonDataModel'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('name', name));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PersonDataModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PersonDataModelImplCopyWith<_$PersonDataModelImpl> get copyWith =>
      __$$PersonDataModelImplCopyWithImpl<_$PersonDataModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PersonDataModelImplToJson(
      this,
    );
  }
}

abstract class _PersonDataModel implements PersonDataModel {
  const factory _PersonDataModel({final String? id, final String? name}) =
      _$PersonDataModelImpl;

  factory _PersonDataModel.fromJson(Map<String, dynamic> json) =
      _$PersonDataModelImpl.fromJson;

  @override
  String? get id;
  @override
  String? get name;
  @override
  @JsonKey(ignore: true)
  _$$PersonDataModelImplCopyWith<_$PersonDataModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
