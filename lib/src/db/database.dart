import 'package:moor_flutter/moor_flutter.dart';

import 'package:example_moor_flutter/src/modules/produto/models/Produtos.dart';
import 'package:example_moor_flutter/src/modules/categoria/models/Categorias.dart';

import 'package:example_moor_flutter/src/modules/produto/services/ProdutoService.dart';
import 'package:example_moor_flutter/src/modules/categoria/services/CategoriaService.dart';

part 'database.g.dart';

@UseMoor(tables: [Produtos, Categorias])
class Database extends _$Database {
  static Database instance = Database._internal();

  ProdutoService produtoService;
  CategoriaService categoriaService;

  Database._internal()
      : super(FlutterQueryExecutor.inDatabaseFolder(path: "db.sqlite")) {
    categoriaService = CategoriaService(this);
    produtoService = ProdutoService(this);
  }

  @override
  // TODO: implement schemaVersion
  int get schemaVersion => 1;
}
