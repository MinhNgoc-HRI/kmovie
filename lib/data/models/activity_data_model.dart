import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'activity_data_model.freezed.dart';
part 'activity_data_model.g.dart';

@freezed
class ActivityDataModel with _$ActivityDataModel {
  const factory ActivityDataModel({
    String? key,
    String? activity,
    String? type,
    int? participants,
    double? price,
  }) = _ActivityDataModel;
  factory ActivityDataModel.fromJson(Map<String, dynamic> json) =>
      _$ActivityDataModelFromJson(json);
}
