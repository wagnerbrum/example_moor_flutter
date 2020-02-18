import 'package:moor_flutter/moor_flutter.dart';

import 'package:example_moor_flutter/src/db/database.dart';
import 'package:example_moor_flutter/src/modules/produto/models/Produtos.dart';
import 'package:example_moor_flutter/src/modules/categoria/models/Categorias.dart';

part 'CategoriaService.g.dart';

@UseDao(tables: [Produtos, Categorias])
class CategoriaService extends DatabaseAccessor<Database>
    with _$CategoriaServiceMixin {
  CategoriaService(Database db) : super(db);

  Stream<List<Categoria>> getAllEntities() {
    return (select(categorias).watch());
  }

  Future createEntity(Categoria entity) {
    return into(categorias).insert(entity);
  }

  Future updateEntity(Categoria entity) {
    return update(categorias).replace(entity);
  }

  Future removeEntity(id) {
    return (delete(categorias)..where((cat) => cat.id.equals(id))).go();
  }
}
