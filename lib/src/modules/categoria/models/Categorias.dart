import 'package:moor_flutter/moor_flutter.dart';

class Categorias extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get title => text()();
}
