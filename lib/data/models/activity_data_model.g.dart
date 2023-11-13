// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'activity_data_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ActivityDataModelImpl _$$ActivityDataModelImplFromJson(
        Map<String, dynamic> json) =>
    _$ActivityDataModelImpl(
      key: json['key'] as String?,
      activity: json['activity'] as String?,
      type: json['type'] as String?,
      participants: json['participants'] as int?,
      price: (json['price'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$$ActivityDataModelImplToJson(
        _$ActivityDataModelImpl instance) =>
    <String, dynamic>{
      'key': instance.key,
      'activity': instance.activity,
      'type': instance.type,
      'participants': instance.participants,
      'price': instance.price,
    };
