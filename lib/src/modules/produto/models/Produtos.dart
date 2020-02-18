import 'package:moor_flutter/moor_flutter.dart';

class Produtos extends Table {
  IntColumn get id => integer().autoIncrement()();
  IntColumn get idCategoria => integer()();
  TextColumn get title => text()();
  TextColumn get description => text()();
  IntColumn get qtd => integer()();
  IntColumn get price => integer()(); //1,50 == 1500
}
