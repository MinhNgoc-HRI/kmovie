import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
part 'user_data_model.g.dart';

@JsonSerializable()
class User implements Equatable {
  final String name;
  final int age;

  User({
    required this.name,
    required this.age,
  });

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
  Map<String, dynamic> toJson() => _$UserToJson(this);

  @override
  List<Object?> get props => [name, age];

  @override
  bool? get stringify => true;
}
