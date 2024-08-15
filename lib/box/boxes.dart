import 'package:hive/hive.dart/';

import '../models/model.dart';

class Boxes {
  static Box<UserModel> getData() => Hive.box<UserModel>('user') ;
}