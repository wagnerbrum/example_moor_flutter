import 'package:moor_flutter/moor_flutter.dart';

import 'package:example_moor_flutter/src/db/database.dart';
import 'package:example_moor_flutter/src/modules/produto/models/Produtos.dart';
import 'package:example_moor_flutter/src/modules/produto/models/ProdutoWithCategoria.dart';
import 'package:example_moor_flutter/src/modules/categoria/models/Categorias.dart';

part 'ProdutoService.g.dart';

@UseDao(tables: [Produtos, Categorias])
class ProdutoService extends DatabaseAccessor<Database>
    with _$ProdutoServiceMixin {
  ProdutoService(Database db) : super(db);

  Stream<List<ProdutoWithCategoria>> getAllEntities() {
    return (select(produtos))
        .join([
          innerJoin(categorias, categorias.id.equalsExp(produtos.idCategoria))
        ])
        .watch()
        .map(
          (rows) => rows.map(
            (row) {
              return ProdutoWithCategoria(
                  row.readTable(produtos), row.read(categorias.title));
            },
          ).toList(),
        );
  }

  Future createEntity(Produto entity) {
    return into(produtos).insert(entity);
  }

  Future updateEntity(Produto entity) {
    return update(produtos).replace(entity);
  }

  Future removeEntity(id) {
    return (delete(produtos)..where((prod) => prod.id.equals(id))).go();
  }
}
