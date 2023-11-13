import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'person_data_model.freezed.dart';
part 'person_data_model.g.dart';

@freezed
class PersonDataModel with _$PersonDataModel {
  const factory PersonDataModel({String? id, String? name}) = _PersonDataModel;
  factory PersonDataModel.fromJson(Map<String, dynamic> json) =>
      _$PersonDataModelFromJson(json);
}
