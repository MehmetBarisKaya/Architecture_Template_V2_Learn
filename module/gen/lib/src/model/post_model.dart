// ignore_for_file: public_member_api_docs

import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:vexana/vexana.dart';

part 'post_model.g.dart';

@JsonSerializable()
class PostModel extends INetworkModel<PostModel> with EquatableMixin {
  PostModel({
    this.userId,
    this.id,
    this.title,
    this.body,
  });

  final int? userId;
  final int? id;
  final String? title;
  final String? body;

  @override
  List<Object?> get props => [userId, id, title, body];

  PostModel copyWith({
    int? userId,
    int? id,
    String? title,
    String? body,
  }) {
    return PostModel(
      userId: userId ?? this.userId,
      id: id ?? this.id,
      title: title ?? this.title,
      body: body ?? this.body,
    );
  }

  @override
  PostModel fromJson(Map<String, dynamic> json) {
    return _$PostModelFromJson(json);
  }

  @override
  Map<String, dynamic> toJson() => _$PostModelToJson(this);
}
