import 'package:core/src/cache/core/cache_model.dart';

class User with CacheModel {
  User({required this.id, required this.name});
  User.empty() : this(id: '1', name: 'Baris');
  @override
  final String id;
  final String name;
  @override
  User fromDynamicJson(dynamic json) {
    final itemMap = json as Map<String, dynamic>;
    return User(
      id: itemMap['id'] as String,
      name: itemMap['name'] as String,
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
    };
  }
}
