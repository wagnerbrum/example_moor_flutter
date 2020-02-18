// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'database.dart';

// **************************************************************************
// MoorGenerator
// **************************************************************************

// ignore_for_file: unnecessary_brace_in_string_interps, unnecessary_this
class Produto extends DataClass implements Insertable<Produto> {
  final int id;
  final int idCategoria;
  final String title;
  final String description;
  final int qtd;
  final int price;
  Produto(
      {@required this.id,
      @required this.idCategoria,
      @required this.title,
      @required this.description,
      @required this.qtd,
      @required this.price});
  factory Produto.fromData(Map<String, dynamic> data, GeneratedDatabase db,
      {String prefix}) {
    final effectivePrefix = prefix ?? '';
    final intType = db.typeSystem.forDartType<int>();
    final stringType = db.typeSystem.forDartType<String>();
    return Produto(
      id: intType.mapFromDatabaseResponse(data['${effectivePrefix}id']),
      idCategoria: intType
          .mapFromDatabaseResponse(data['${effectivePrefix}id_categoria']),
      title:
          stringType.mapFromDatabaseResponse(data['${effectivePrefix}title']),
      description: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}description']),
      qtd: intType.mapFromDatabaseResponse(data['${effectivePrefix}qtd']),
      price: intType.mapFromDatabaseResponse(data['${effectivePrefix}price']),
    );
  }
  factory Produto.fromJson(Map<String, dynamic> json,
      {ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return Produto(
      id: serializer.fromJson<int>(json['id']),
      idCategoria: serializer.fromJson<int>(json['idCategoria']),
      title: serializer.fromJson<String>(json['title']),
      description: serializer.fromJson<String>(json['description']),
      qtd: serializer.fromJson<int>(json['qtd']),
      price: serializer.fromJson<int>(json['price']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'idCategoria': serializer.toJson<int>(idCategoria),
      'title': serializer.toJson<String>(title),
      'description': serializer.toJson<String>(description),
      'qtd': serializer.toJson<int>(qtd),
      'price': serializer.toJson<int>(price),
    };
  }

  @override
  ProdutosCompanion createCompanion(bool nullToAbsent) {
    return ProdutosCompanion(
      id: id == null && nullToAbsent ? const Value.absent() : Value(id),
      idCategoria: idCategoria == null && nullToAbsent
          ? const Value.absent()
          : Value(idCategoria),
      title:
          title == null && nullToAbsent ? const Value.absent() : Value(title),
      description: description == null && nullToAbsent
          ? const Value.absent()
          : Value(description),
      qtd: qtd == null && nullToAbsent ? const Value.absent() : Value(qtd),
      price:
          price == null && nullToAbsent ? const Value.absent() : Value(price),
    );
  }

  Produto copyWith(
          {int id,
          int idCategoria,
          String title,
          String description,
          int qtd,
          int price}) =>
      Produto(
        id: id ?? this.id,
        idCategoria: idCategoria ?? this.idCategoria,
        title: title ?? this.title,
        description: description ?? this.description,
        qtd: qtd ?? this.qtd,
        price: price ?? this.price,
      );
  @override
  String toString() {
    return (StringBuffer('Produto(')
          ..write('id: $id, ')
          ..write('idCategoria: $idCategoria, ')
          ..write('title: $title, ')
          ..write('description: $description, ')
          ..write('qtd: $qtd, ')
          ..write('price: $price')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => $mrjf($mrjc(
      id.hashCode,
      $mrjc(
          idCategoria.hashCode,
          $mrjc(
              title.hashCode,
              $mrjc(description.hashCode,
                  $mrjc(qtd.hashCode, price.hashCode))))));
  @override
  bool operator ==(dynamic other) =>
      identical(this, other) ||
      (other is Produto &&
          other.id == this.id &&
          other.idCategoria == this.idCategoria &&
          other.title == this.title &&
          other.description == this.description &&
          other.qtd == this.qtd &&
          other.price == this.price);
}

class ProdutosCompanion extends UpdateCompanion<Produto> {
  final Value<int> id;
  final Value<int> idCategoria;
  final Value<String> title;
  final Value<String> description;
  final Value<int> qtd;
  final Value<int> price;
  const ProdutosCompanion({
    this.id = const Value.absent(),
    this.idCategoria = const Value.absent(),
    this.title = const Value.absent(),
    this.description = const Value.absent(),
    this.qtd = const Value.absent(),
    this.price = const Value.absent(),
  });
  ProdutosCompanion.insert({
    this.id = const Value.absent(),
    @required int idCategoria,
    @required String title,
    @required String description,
    @required int qtd,
    @required int price,
  })  : idCategoria = Value(idCategoria),
        title = Value(title),
        description = Value(description),
        qtd = Value(qtd),
        price = Value(price);
  ProdutosCompanion copyWith(
      {Value<int> id,
      Value<int> idCategoria,
      Value<String> title,
      Value<String> description,
      Value<int> qtd,
      Value<int> price}) {
    return ProdutosCompanion(
      id: id ?? this.id,
      idCategoria: idCategoria ?? this.idCategoria,
      title: title ?? this.title,
      description: description ?? this.description,
      qtd: qtd ?? this.qtd,
      price: price ?? this.price,
    );
  }
}

class $ProdutosTable extends Produtos with TableInfo<$ProdutosTable, Produto> {
  final GeneratedDatabase _db;
  final String _alias;
  $ProdutosTable(this._db, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  GeneratedIntColumn _id;
  @override
  GeneratedIntColumn get id => _id ??= _constructId();
  GeneratedIntColumn _constructId() {
    return GeneratedIntColumn('id', $tableName, false,
        hasAutoIncrement: true, declaredAsPrimaryKey: true);
  }

  final VerificationMeta _idCategoriaMeta =
      const VerificationMeta('idCategoria');
  GeneratedIntColumn _idCategoria;
  @override
  GeneratedIntColumn get idCategoria =>
      _idCategoria ??= _constructIdCategoria();
  GeneratedIntColumn _constructIdCategoria() {
    return GeneratedIntColumn(
      'id_categoria',
      $tableName,
      false,
    );
  }

  final VerificationMeta _titleMeta = const VerificationMeta('title');
  GeneratedTextColumn _title;
  @override
  GeneratedTextColumn get title => _title ??= _constructTitle();
  GeneratedTextColumn _constructTitle() {
    return GeneratedTextColumn(
      'title',
      $tableName,
      false,
    );
  }

  final VerificationMeta _descriptionMeta =
      const VerificationMeta('description');
  GeneratedTextColumn _description;
  @override
  GeneratedTextColumn get description =>
      _description ??= _constructDescription();
  GeneratedTextColumn _constructDescription() {
    return GeneratedTextColumn(
      'description',
      $tableName,
      false,
    );
  }

  final VerificationMeta _qtdMeta = const VerificationMeta('qtd');
  GeneratedIntColumn _qtd;
  @override
  GeneratedIntColumn get qtd => _qtd ??= _constructQtd();
  GeneratedIntColumn _constructQtd() {
    return GeneratedIntColumn(
      'qtd',
      $tableName,
      false,
    );
  }

  final VerificationMeta _priceMeta = const VerificationMeta('price');
  GeneratedIntColumn _price;
  @override
  GeneratedIntColumn get price => _price ??= _constructPrice();
  GeneratedIntColumn _constructPrice() {
    return GeneratedIntColumn(
      'price',
      $tableName,
      false,
    );
  }

  @override
  List<GeneratedColumn> get $columns =>
      [id, idCategoria, title, description, qtd, price];
  @override
  $ProdutosTable get asDslTable => this;
  @override
  String get $tableName => _alias ?? 'produtos';
  @override
  final String actualTableName = 'produtos';
  @override
  VerificationContext validateIntegrity(ProdutosCompanion d,
      {bool isInserting = false}) {
    final context = VerificationContext();
    if (d.id.present) {
      context.handle(_idMeta, id.isAcceptableValue(d.id.value, _idMeta));
    }
    if (d.idCategoria.present) {
      context.handle(_idCategoriaMeta,
          idCategoria.isAcceptableValue(d.idCategoria.value, _idCategoriaMeta));
    } else if (isInserting) {
      context.missing(_idCategoriaMeta);
    }
    if (d.title.present) {
      context.handle(
          _titleMeta, title.isAcceptableValue(d.title.value, _titleMeta));
    } else if (isInserting) {
      context.missing(_titleMeta);
    }
    if (d.description.present) {
      context.handle(_descriptionMeta,
          description.isAcceptableValue(d.description.value, _descriptionMeta));
    } else if (isInserting) {
      context.missing(_descriptionMeta);
    }
    if (d.qtd.present) {
      context.handle(_qtdMeta, qtd.isAcceptableValue(d.qtd.value, _qtdMeta));
    } else if (isInserting) {
      context.missing(_qtdMeta);
    }
    if (d.price.present) {
      context.handle(
          _priceMeta, price.isAcceptableValue(d.price.value, _priceMeta));
    } else if (isInserting) {
      context.missing(_priceMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  Produto map(Map<String, dynamic> data, {String tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : null;
    return Produto.fromData(data, _db, prefix: effectivePrefix);
  }

  @override
  Map<String, Variable> entityToSql(ProdutosCompanion d) {
    final map = <String, Variable>{};
    if (d.id.present) {
      map['id'] = Variable<int, IntType>(d.id.value);
    }
    if (d.idCategoria.present) {
      map['id_categoria'] = Variable<int, IntType>(d.idCategoria.value);
    }
    if (d.title.present) {
      map['title'] = Variable<String, StringType>(d.title.value);
    }
    if (d.description.present) {
      map['description'] = Variable<String, StringType>(d.description.value);
    }
    if (d.qtd.present) {
      map['qtd'] = Variable<int, IntType>(d.qtd.value);
    }
    if (d.price.present) {
      map['price'] = Variable<int, IntType>(d.price.value);
    }
    return map;
  }

  @override
  $ProdutosTable createAlias(String alias) {
    return $ProdutosTable(_db, alias);
  }
}

class Categoria extends DataClass implements Insertable<Categoria> {
  final int id;
  final String title;
  Categoria({@required this.id, @required this.title});
  factory Categoria.fromData(Map<String, dynamic> data, GeneratedDatabase db,
      {String prefix}) {
    final effectivePrefix = prefix ?? '';
    final intType = db.typeSystem.forDartType<int>();
    final stringType = db.typeSystem.forDartType<String>();
    return Categoria(
      id: intType.mapFromDatabaseResponse(data['${effectivePrefix}id']),
      title:
          stringType.mapFromDatabaseResponse(data['${effectivePrefix}title']),
    );
  }
  factory Categoria.fromJson(Map<String, dynamic> json,
      {ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return Categoria(
      id: serializer.fromJson<int>(json['id']),
      title: serializer.fromJson<String>(json['title']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'title': serializer.toJson<String>(title),
    };
  }

  @override
  CategoriasCompanion createCompanion(bool nullToAbsent) {
    return CategoriasCompanion(
      id: id == null && nullToAbsent ? const Value.absent() : Value(id),
      title:
          title == null && nullToAbsent ? const Value.absent() : Value(title),
    );
  }

  Categoria copyWith({int id, String title}) => Categoria(
        id: id ?? this.id,
        title: title ?? this.title,
      );
  @override
  String toString() {
    return (StringBuffer('Categoria(')
          ..write('id: $id, ')
          ..write('title: $title')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => $mrjf($mrjc(id.hashCode, title.hashCode));
  @override
  bool operator ==(dynamic other) =>
      identical(this, other) ||
      (other is Categoria && other.id == this.id && other.title == this.title);
}

class CategoriasCompanion extends UpdateCompanion<Categoria> {
  final Value<int> id;
  final Value<String> title;
  const CategoriasCompanion({
    this.id = const Value.absent(),
    this.title = const Value.absent(),
  });
  CategoriasCompanion.insert({
    this.id = const Value.absent(),
    @required String title,
  }) : title = Value(title);
  CategoriasCompanion copyWith({Value<int> id, Value<String> title}) {
    return CategoriasCompanion(
      id: id ?? this.id,
      title: title ?? this.title,
    );
  }
}

class $CategoriasTable extends Categorias
    with TableInfo<$CategoriasTable, Categoria> {
  final GeneratedDatabase _db;
  final String _alias;
  $CategoriasTable(this._db, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  GeneratedIntColumn _id;
  @override
  GeneratedIntColumn get id => _id ??= _constructId();
  GeneratedIntColumn _constructId() {
    return GeneratedIntColumn('id', $tableName, false,
        hasAutoIncrement: true, declaredAsPrimaryKey: true);
  }

  final VerificationMeta _titleMeta = const VerificationMeta('title');
  GeneratedTextColumn _title;
  @override
  GeneratedTextColumn get title => _title ??= _constructTitle();
  GeneratedTextColumn _constructTitle() {
    return GeneratedTextColumn(
      'title',
      $tableName,
      false,
    );
  }

  @override
  List<GeneratedColumn> get $columns => [id, title];
  @override
  $CategoriasTable get asDslTable => this;
  @override
  String get $tableName => _alias ?? 'categorias';
  @override
  final String actualTableName = 'categorias';
  @override
  VerificationContext validateIntegrity(CategoriasCompanion d,
      {bool isInserting = false}) {
    final context = VerificationContext();
    if (d.id.present) {
      context.handle(_idMeta, id.isAcceptableValue(d.id.value, _idMeta));
    }
    if (d.title.present) {
      context.handle(
          _titleMeta, title.isAcceptableValue(d.title.value, _titleMeta));
    } else if (isInserting) {
      context.missing(_titleMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  Categoria map(Map<String, dynamic> data, {String tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : null;
    return Categoria.fromData(data, _db, prefix: effectivePrefix);
  }

  @override
  Map<String, Variable> entityToSql(CategoriasCompanion d) {
    final map = <String, Variable>{};
    if (d.id.present) {
      map['id'] = Variable<int, IntType>(d.id.value);
    }
    if (d.title.present) {
      map['title'] = Variable<String, StringType>(d.title.value);
    }
    return map;
  }

  @override
  $CategoriasTable createAlias(String alias) {
    return $CategoriasTable(_db, alias);
  }
}

abstract class _$Database extends GeneratedDatabase {
  _$Database(QueryExecutor e) : super(SqlTypeSystem.defaultInstance, e);
  $ProdutosTable _produtos;
  $ProdutosTable get produtos => _produtos ??= $ProdutosTable(this);
  $CategoriasTable _categorias;
  $CategoriasTable get categorias => _categorias ??= $CategoriasTable(this);
  @override
  Iterable<TableInfo> get allTables => allSchemaEntities.whereType<TableInfo>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [produtos, categorias];
}
