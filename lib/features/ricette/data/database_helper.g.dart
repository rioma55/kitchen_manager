// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'database_helper.dart';

// ignore_for_file: type=lint
class $RicetteTable extends Ricette with TableInfo<$RicetteTable, RicetteData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $RicetteTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _nomeMeta = const VerificationMeta('nome');
  @override
  late final GeneratedColumn<String> nome = GeneratedColumn<String>(
      'nome', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _ingredientiMeta =
      const VerificationMeta('ingredienti');
  @override
  late final GeneratedColumn<String> ingredienti = GeneratedColumn<String>(
      'ingredienti', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _preparazioneMeta =
      const VerificationMeta('preparazione');
  @override
  late final GeneratedColumn<String> preparazione = GeneratedColumn<String>(
      'preparazione', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _impiattamentoMeta =
      const VerificationMeta('impiattamento');
  @override
  late final GeneratedColumn<String> impiattamento = GeneratedColumn<String>(
      'impiattamento', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _consigliChefMeta =
      const VerificationMeta('consigliChef');
  @override
  late final GeneratedColumn<String> consigliChef = GeneratedColumn<String>(
      'consigli_chef', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns =>
      [id, nome, ingredienti, preparazione, impiattamento, consigliChef];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'ricette';
  @override
  VerificationContext validateIntegrity(Insertable<RicetteData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('nome')) {
      context.handle(
          _nomeMeta, nome.isAcceptableOrUnknown(data['nome']!, _nomeMeta));
    } else if (isInserting) {
      context.missing(_nomeMeta);
    }
    if (data.containsKey('ingredienti')) {
      context.handle(
          _ingredientiMeta,
          ingredienti.isAcceptableOrUnknown(
              data['ingredienti']!, _ingredientiMeta));
    } else if (isInserting) {
      context.missing(_ingredientiMeta);
    }
    if (data.containsKey('preparazione')) {
      context.handle(
          _preparazioneMeta,
          preparazione.isAcceptableOrUnknown(
              data['preparazione']!, _preparazioneMeta));
    } else if (isInserting) {
      context.missing(_preparazioneMeta);
    }
    if (data.containsKey('impiattamento')) {
      context.handle(
          _impiattamentoMeta,
          impiattamento.isAcceptableOrUnknown(
              data['impiattamento']!, _impiattamentoMeta));
    } else if (isInserting) {
      context.missing(_impiattamentoMeta);
    }
    if (data.containsKey('consigli_chef')) {
      context.handle(
          _consigliChefMeta,
          consigliChef.isAcceptableOrUnknown(
              data['consigli_chef']!, _consigliChefMeta));
    } else if (isInserting) {
      context.missing(_consigliChefMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  RicetteData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return RicetteData(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      nome: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}nome'])!,
      ingredienti: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}ingredienti'])!,
      preparazione: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}preparazione'])!,
      impiattamento: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}impiattamento'])!,
      consigliChef: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}consigli_chef'])!,
    );
  }

  @override
  $RicetteTable createAlias(String alias) {
    return $RicetteTable(attachedDatabase, alias);
  }
}

class RicetteData extends DataClass implements Insertable<RicetteData> {
  final int id;
  final String nome;
  final String ingredienti;
  final String preparazione;
  final String impiattamento;
  final String consigliChef;
  const RicetteData(
      {required this.id,
      required this.nome,
      required this.ingredienti,
      required this.preparazione,
      required this.impiattamento,
      required this.consigliChef});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['nome'] = Variable<String>(nome);
    map['ingredienti'] = Variable<String>(ingredienti);
    map['preparazione'] = Variable<String>(preparazione);
    map['impiattamento'] = Variable<String>(impiattamento);
    map['consigli_chef'] = Variable<String>(consigliChef);
    return map;
  }

  RicetteCompanion toCompanion(bool nullToAbsent) {
    return RicetteCompanion(
      id: Value(id),
      nome: Value(nome),
      ingredienti: Value(ingredienti),
      preparazione: Value(preparazione),
      impiattamento: Value(impiattamento),
      consigliChef: Value(consigliChef),
    );
  }

  factory RicetteData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return RicetteData(
      id: serializer.fromJson<int>(json['id']),
      nome: serializer.fromJson<String>(json['nome']),
      ingredienti: serializer.fromJson<String>(json['ingredienti']),
      preparazione: serializer.fromJson<String>(json['preparazione']),
      impiattamento: serializer.fromJson<String>(json['impiattamento']),
      consigliChef: serializer.fromJson<String>(json['consigliChef']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'nome': serializer.toJson<String>(nome),
      'ingredienti': serializer.toJson<String>(ingredienti),
      'preparazione': serializer.toJson<String>(preparazione),
      'impiattamento': serializer.toJson<String>(impiattamento),
      'consigliChef': serializer.toJson<String>(consigliChef),
    };
  }

  RicetteData copyWith(
          {int? id,
          String? nome,
          String? ingredienti,
          String? preparazione,
          String? impiattamento,
          String? consigliChef}) =>
      RicetteData(
        id: id ?? this.id,
        nome: nome ?? this.nome,
        ingredienti: ingredienti ?? this.ingredienti,
        preparazione: preparazione ?? this.preparazione,
        impiattamento: impiattamento ?? this.impiattamento,
        consigliChef: consigliChef ?? this.consigliChef,
      );
  RicetteData copyWithCompanion(RicetteCompanion data) {
    return RicetteData(
      id: data.id.present ? data.id.value : this.id,
      nome: data.nome.present ? data.nome.value : this.nome,
      ingredienti:
          data.ingredienti.present ? data.ingredienti.value : this.ingredienti,
      preparazione: data.preparazione.present
          ? data.preparazione.value
          : this.preparazione,
      impiattamento: data.impiattamento.present
          ? data.impiattamento.value
          : this.impiattamento,
      consigliChef: data.consigliChef.present
          ? data.consigliChef.value
          : this.consigliChef,
    );
  }

  @override
  String toString() {
    return (StringBuffer('RicetteData(')
          ..write('id: $id, ')
          ..write('nome: $nome, ')
          ..write('ingredienti: $ingredienti, ')
          ..write('preparazione: $preparazione, ')
          ..write('impiattamento: $impiattamento, ')
          ..write('consigliChef: $consigliChef')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
      id, nome, ingredienti, preparazione, impiattamento, consigliChef);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is RicetteData &&
          other.id == this.id &&
          other.nome == this.nome &&
          other.ingredienti == this.ingredienti &&
          other.preparazione == this.preparazione &&
          other.impiattamento == this.impiattamento &&
          other.consigliChef == this.consigliChef);
}

class RicetteCompanion extends UpdateCompanion<RicetteData> {
  final Value<int> id;
  final Value<String> nome;
  final Value<String> ingredienti;
  final Value<String> preparazione;
  final Value<String> impiattamento;
  final Value<String> consigliChef;
  const RicetteCompanion({
    this.id = const Value.absent(),
    this.nome = const Value.absent(),
    this.ingredienti = const Value.absent(),
    this.preparazione = const Value.absent(),
    this.impiattamento = const Value.absent(),
    this.consigliChef = const Value.absent(),
  });
  RicetteCompanion.insert({
    this.id = const Value.absent(),
    required String nome,
    required String ingredienti,
    required String preparazione,
    required String impiattamento,
    required String consigliChef,
  })  : nome = Value(nome),
        ingredienti = Value(ingredienti),
        preparazione = Value(preparazione),
        impiattamento = Value(impiattamento),
        consigliChef = Value(consigliChef);
  static Insertable<RicetteData> custom({
    Expression<int>? id,
    Expression<String>? nome,
    Expression<String>? ingredienti,
    Expression<String>? preparazione,
    Expression<String>? impiattamento,
    Expression<String>? consigliChef,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (nome != null) 'nome': nome,
      if (ingredienti != null) 'ingredienti': ingredienti,
      if (preparazione != null) 'preparazione': preparazione,
      if (impiattamento != null) 'impiattamento': impiattamento,
      if (consigliChef != null) 'consigli_chef': consigliChef,
    });
  }

  RicetteCompanion copyWith(
      {Value<int>? id,
      Value<String>? nome,
      Value<String>? ingredienti,
      Value<String>? preparazione,
      Value<String>? impiattamento,
      Value<String>? consigliChef}) {
    return RicetteCompanion(
      id: id ?? this.id,
      nome: nome ?? this.nome,
      ingredienti: ingredienti ?? this.ingredienti,
      preparazione: preparazione ?? this.preparazione,
      impiattamento: impiattamento ?? this.impiattamento,
      consigliChef: consigliChef ?? this.consigliChef,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (nome.present) {
      map['nome'] = Variable<String>(nome.value);
    }
    if (ingredienti.present) {
      map['ingredienti'] = Variable<String>(ingredienti.value);
    }
    if (preparazione.present) {
      map['preparazione'] = Variable<String>(preparazione.value);
    }
    if (impiattamento.present) {
      map['impiattamento'] = Variable<String>(impiattamento.value);
    }
    if (consigliChef.present) {
      map['consigli_chef'] = Variable<String>(consigliChef.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('RicetteCompanion(')
          ..write('id: $id, ')
          ..write('nome: $nome, ')
          ..write('ingredienti: $ingredienti, ')
          ..write('preparazione: $preparazione, ')
          ..write('impiattamento: $impiattamento, ')
          ..write('consigliChef: $consigliChef')
          ..write(')'))
        .toString();
  }
}

abstract class _$DatabaseHelper extends GeneratedDatabase {
  _$DatabaseHelper(QueryExecutor e) : super(e);
  $DatabaseHelperManager get managers => $DatabaseHelperManager(this);
  late final $RicetteTable ricette = $RicetteTable(this);
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [ricette];
}

typedef $$RicetteTableCreateCompanionBuilder = RicetteCompanion Function({
  Value<int> id,
  required String nome,
  required String ingredienti,
  required String preparazione,
  required String impiattamento,
  required String consigliChef,
});
typedef $$RicetteTableUpdateCompanionBuilder = RicetteCompanion Function({
  Value<int> id,
  Value<String> nome,
  Value<String> ingredienti,
  Value<String> preparazione,
  Value<String> impiattamento,
  Value<String> consigliChef,
});

class $$RicetteTableFilterComposer
    extends Composer<_$DatabaseHelper, $RicetteTable> {
  $$RicetteTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get nome => $composableBuilder(
      column: $table.nome, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get ingredienti => $composableBuilder(
      column: $table.ingredienti, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get preparazione => $composableBuilder(
      column: $table.preparazione, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get impiattamento => $composableBuilder(
      column: $table.impiattamento, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get consigliChef => $composableBuilder(
      column: $table.consigliChef, builder: (column) => ColumnFilters(column));
}

class $$RicetteTableOrderingComposer
    extends Composer<_$DatabaseHelper, $RicetteTable> {
  $$RicetteTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get nome => $composableBuilder(
      column: $table.nome, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get ingredienti => $composableBuilder(
      column: $table.ingredienti, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get preparazione => $composableBuilder(
      column: $table.preparazione,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get impiattamento => $composableBuilder(
      column: $table.impiattamento,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get consigliChef => $composableBuilder(
      column: $table.consigliChef,
      builder: (column) => ColumnOrderings(column));
}

class $$RicetteTableAnnotationComposer
    extends Composer<_$DatabaseHelper, $RicetteTable> {
  $$RicetteTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get nome =>
      $composableBuilder(column: $table.nome, builder: (column) => column);

  GeneratedColumn<String> get ingredienti => $composableBuilder(
      column: $table.ingredienti, builder: (column) => column);

  GeneratedColumn<String> get preparazione => $composableBuilder(
      column: $table.preparazione, builder: (column) => column);

  GeneratedColumn<String> get impiattamento => $composableBuilder(
      column: $table.impiattamento, builder: (column) => column);

  GeneratedColumn<String> get consigliChef => $composableBuilder(
      column: $table.consigliChef, builder: (column) => column);
}

class $$RicetteTableTableManager extends RootTableManager<
    _$DatabaseHelper,
    $RicetteTable,
    RicetteData,
    $$RicetteTableFilterComposer,
    $$RicetteTableOrderingComposer,
    $$RicetteTableAnnotationComposer,
    $$RicetteTableCreateCompanionBuilder,
    $$RicetteTableUpdateCompanionBuilder,
    (RicetteData, BaseReferences<_$DatabaseHelper, $RicetteTable, RicetteData>),
    RicetteData,
    PrefetchHooks Function()> {
  $$RicetteTableTableManager(_$DatabaseHelper db, $RicetteTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$RicetteTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$RicetteTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$RicetteTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback: ({
            Value<int> id = const Value.absent(),
            Value<String> nome = const Value.absent(),
            Value<String> ingredienti = const Value.absent(),
            Value<String> preparazione = const Value.absent(),
            Value<String> impiattamento = const Value.absent(),
            Value<String> consigliChef = const Value.absent(),
          }) =>
              RicetteCompanion(
            id: id,
            nome: nome,
            ingredienti: ingredienti,
            preparazione: preparazione,
            impiattamento: impiattamento,
            consigliChef: consigliChef,
          ),
          createCompanionCallback: ({
            Value<int> id = const Value.absent(),
            required String nome,
            required String ingredienti,
            required String preparazione,
            required String impiattamento,
            required String consigliChef,
          }) =>
              RicetteCompanion.insert(
            id: id,
            nome: nome,
            ingredienti: ingredienti,
            preparazione: preparazione,
            impiattamento: impiattamento,
            consigliChef: consigliChef,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ));
}

typedef $$RicetteTableProcessedTableManager = ProcessedTableManager<
    _$DatabaseHelper,
    $RicetteTable,
    RicetteData,
    $$RicetteTableFilterComposer,
    $$RicetteTableOrderingComposer,
    $$RicetteTableAnnotationComposer,
    $$RicetteTableCreateCompanionBuilder,
    $$RicetteTableUpdateCompanionBuilder,
    (RicetteData, BaseReferences<_$DatabaseHelper, $RicetteTable, RicetteData>),
    RicetteData,
    PrefetchHooks Function()>;

class $DatabaseHelperManager {
  final _$DatabaseHelper _db;
  $DatabaseHelperManager(this._db);
  $$RicetteTableTableManager get ricette =>
      $$RicetteTableTableManager(_db, _db.ricette);
}
