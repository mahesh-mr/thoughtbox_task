import 'package:hive/hive.dart';

import 'package:thoughtbox/domain/model_user/model_user.dart';

class Boxes {
  static Box<UserModel> getTransactions() =>
      Hive.box<UserModel>('boxName');
}