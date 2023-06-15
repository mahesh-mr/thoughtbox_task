import 'package:hive/hive.dart';

part 'model_user.g.dart';

@HiveType(typeId: 0)
class UserModel extends HiveObject {
  @HiveField(0)
  String firstName;

  @HiveField(1)
  String lastName;

  @HiveField(2)
  String email;

  UserModel({required this.firstName, required this.lastName, required this.email});
}
