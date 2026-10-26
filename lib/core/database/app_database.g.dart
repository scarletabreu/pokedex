// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_database.dart';

// ignore_for_file: type=lint
class $PokemonSpeciesTable extends PokemonSpecies
    with TableInfo<$PokemonSpeciesTable, PokemonSpecy> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $PokemonSpeciesTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
    'id',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _nameMeta = const VerificationMeta('name');
  @override
  late final GeneratedColumn<String> name = GeneratedColumn<String>(
    'name',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _generationIdMeta = const VerificationMeta(
    'generationId',
  );
  @override
  late final GeneratedColumn<int> generationId = GeneratedColumn<int>(
    'generation_id',
    aliasedName,
    true,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _evolutionChainIdMeta = const VerificationMeta(
    'evolutionChainId',
  );
  @override
  late final GeneratedColumn<int> evolutionChainId = GeneratedColumn<int>(
    'evolution_chain_id',
    aliasedName,
    true,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _isLegendaryMeta = const VerificationMeta(
    'isLegendary',
  );
  @override
  late final GeneratedColumn<bool> isLegendary = GeneratedColumn<bool>(
    'is_legendary',
    aliasedName,
    false,
    type: DriftSqlType.bool,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'CHECK ("is_legendary" IN (0, 1))',
    ),
    defaultValue: const Constant(false),
  );
  static const VerificationMeta _isMythicalMeta = const VerificationMeta(
    'isMythical',
  );
  @override
  late final GeneratedColumn<bool> isMythical = GeneratedColumn<bool>(
    'is_mythical',
    aliasedName,
    false,
    type: DriftSqlType.bool,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'CHECK ("is_mythical" IN (0, 1))',
    ),
    defaultValue: const Constant(false),
  );
  @override
  List<GeneratedColumn> get $columns => [
    id,
    name,
    generationId,
    evolutionChainId,
    isLegendary,
    isMythical,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'pokemon_species';
  @override
  VerificationContext validateIntegrity(
    Insertable<PokemonSpecy> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('name')) {
      context.handle(
        _nameMeta,
        name.isAcceptableOrUnknown(data['name']!, _nameMeta),
      );
    } else if (isInserting) {
      context.missing(_nameMeta);
    }
    if (data.containsKey('generation_id')) {
      context.handle(
        _generationIdMeta,
        generationId.isAcceptableOrUnknown(
          data['generation_id']!,
          _generationIdMeta,
        ),
      );
    }
    if (data.containsKey('evolution_chain_id')) {
      context.handle(
        _evolutionChainIdMeta,
        evolutionChainId.isAcceptableOrUnknown(
          data['evolution_chain_id']!,
          _evolutionChainIdMeta,
        ),
      );
    }
    if (data.containsKey('is_legendary')) {
      context.handle(
        _isLegendaryMeta,
        isLegendary.isAcceptableOrUnknown(
          data['is_legendary']!,
          _isLegendaryMeta,
        ),
      );
    }
    if (data.containsKey('is_mythical')) {
      context.handle(
        _isMythicalMeta,
        isMythical.isAcceptableOrUnknown(data['is_mythical']!, _isMythicalMeta),
      );
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  PokemonSpecy map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return PokemonSpecy(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}id'],
      )!,
      name: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}name'],
      )!,
      generationId: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}generation_id'],
      ),
      evolutionChainId: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}evolution_chain_id'],
      ),
      isLegendary: attachedDatabase.typeMapping.read(
        DriftSqlType.bool,
        data['${effectivePrefix}is_legendary'],
      )!,
      isMythical: attachedDatabase.typeMapping.read(
        DriftSqlType.bool,
        data['${effectivePrefix}is_mythical'],
      )!,
    );
  }

  @override
  $PokemonSpeciesTable createAlias(String alias) {
    return $PokemonSpeciesTable(attachedDatabase, alias);
  }
}

class PokemonSpecy extends DataClass implements Insertable<PokemonSpecy> {
  final int id;
  final String name;
  final int? generationId;
  final int? evolutionChainId;
  final bool isLegendary;
  final bool isMythical;
  const PokemonSpecy({
    required this.id,
    required this.name,
    this.generationId,
    this.evolutionChainId,
    required this.isLegendary,
    required this.isMythical,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['name'] = Variable<String>(name);
    if (!nullToAbsent || generationId != null) {
      map['generation_id'] = Variable<int>(generationId);
    }
    if (!nullToAbsent || evolutionChainId != null) {
      map['evolution_chain_id'] = Variable<int>(evolutionChainId);
    }
    map['is_legendary'] = Variable<bool>(isLegendary);
    map['is_mythical'] = Variable<bool>(isMythical);
    return map;
  }

  PokemonSpeciesCompanion toCompanion(bool nullToAbsent) {
    return PokemonSpeciesCompanion(
      id: Value(id),
      name: Value(name),
      generationId: generationId == null && nullToAbsent
          ? const Value.absent()
          : Value(generationId),
      evolutionChainId: evolutionChainId == null && nullToAbsent
          ? const Value.absent()
          : Value(evolutionChainId),
      isLegendary: Value(isLegendary),
      isMythical: Value(isMythical),
    );
  }

  factory PokemonSpecy.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return PokemonSpecy(
      id: serializer.fromJson<int>(json['id']),
      name: serializer.fromJson<String>(json['name']),
      generationId: serializer.fromJson<int?>(json['generationId']),
      evolutionChainId: serializer.fromJson<int?>(json['evolutionChainId']),
      isLegendary: serializer.fromJson<bool>(json['isLegendary']),
      isMythical: serializer.fromJson<bool>(json['isMythical']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'name': serializer.toJson<String>(name),
      'generationId': serializer.toJson<int?>(generationId),
      'evolutionChainId': serializer.toJson<int?>(evolutionChainId),
      'isLegendary': serializer.toJson<bool>(isLegendary),
      'isMythical': serializer.toJson<bool>(isMythical),
    };
  }

  PokemonSpecy copyWith({
    int? id,
    String? name,
    Value<int?> generationId = const Value.absent(),
    Value<int?> evolutionChainId = const Value.absent(),
    bool? isLegendary,
    bool? isMythical,
  }) => PokemonSpecy(
    id: id ?? this.id,
    name: name ?? this.name,
    generationId: generationId.present ? generationId.value : this.generationId,
    evolutionChainId: evolutionChainId.present
        ? evolutionChainId.value
        : this.evolutionChainId,
    isLegendary: isLegendary ?? this.isLegendary,
    isMythical: isMythical ?? this.isMythical,
  );
  PokemonSpecy copyWithCompanion(PokemonSpeciesCompanion data) {
    return PokemonSpecy(
      id: data.id.present ? data.id.value : this.id,
      name: data.name.present ? data.name.value : this.name,
      generationId: data.generationId.present
          ? data.generationId.value
          : this.generationId,
      evolutionChainId: data.evolutionChainId.present
          ? data.evolutionChainId.value
          : this.evolutionChainId,
      isLegendary: data.isLegendary.present
          ? data.isLegendary.value
          : this.isLegendary,
      isMythical: data.isMythical.present
          ? data.isMythical.value
          : this.isMythical,
    );
  }

  @override
  String toString() {
    return (StringBuffer('PokemonSpecy(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('generationId: $generationId, ')
          ..write('evolutionChainId: $evolutionChainId, ')
          ..write('isLegendary: $isLegendary, ')
          ..write('isMythical: $isMythical')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
    id,
    name,
    generationId,
    evolutionChainId,
    isLegendary,
    isMythical,
  );
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is PokemonSpecy &&
          other.id == this.id &&
          other.name == this.name &&
          other.generationId == this.generationId &&
          other.evolutionChainId == this.evolutionChainId &&
          other.isLegendary == this.isLegendary &&
          other.isMythical == this.isMythical);
}

class PokemonSpeciesCompanion extends UpdateCompanion<PokemonSpecy> {
  final Value<int> id;
  final Value<String> name;
  final Value<int?> generationId;
  final Value<int?> evolutionChainId;
  final Value<bool> isLegendary;
  final Value<bool> isMythical;
  const PokemonSpeciesCompanion({
    this.id = const Value.absent(),
    this.name = const Value.absent(),
    this.generationId = const Value.absent(),
    this.evolutionChainId = const Value.absent(),
    this.isLegendary = const Value.absent(),
    this.isMythical = const Value.absent(),
  });
  PokemonSpeciesCompanion.insert({
    this.id = const Value.absent(),
    required String name,
    this.generationId = const Value.absent(),
    this.evolutionChainId = const Value.absent(),
    this.isLegendary = const Value.absent(),
    this.isMythical = const Value.absent(),
  }) : name = Value(name);
  static Insertable<PokemonSpecy> custom({
    Expression<int>? id,
    Expression<String>? name,
    Expression<int>? generationId,
    Expression<int>? evolutionChainId,
    Expression<bool>? isLegendary,
    Expression<bool>? isMythical,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (name != null) 'name': name,
      if (generationId != null) 'generation_id': generationId,
      if (evolutionChainId != null) 'evolution_chain_id': evolutionChainId,
      if (isLegendary != null) 'is_legendary': isLegendary,
      if (isMythical != null) 'is_mythical': isMythical,
    });
  }

  PokemonSpeciesCompanion copyWith({
    Value<int>? id,
    Value<String>? name,
    Value<int?>? generationId,
    Value<int?>? evolutionChainId,
    Value<bool>? isLegendary,
    Value<bool>? isMythical,
  }) {
    return PokemonSpeciesCompanion(
      id: id ?? this.id,
      name: name ?? this.name,
      generationId: generationId ?? this.generationId,
      evolutionChainId: evolutionChainId ?? this.evolutionChainId,
      isLegendary: isLegendary ?? this.isLegendary,
      isMythical: isMythical ?? this.isMythical,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    if (generationId.present) {
      map['generation_id'] = Variable<int>(generationId.value);
    }
    if (evolutionChainId.present) {
      map['evolution_chain_id'] = Variable<int>(evolutionChainId.value);
    }
    if (isLegendary.present) {
      map['is_legendary'] = Variable<bool>(isLegendary.value);
    }
    if (isMythical.present) {
      map['is_mythical'] = Variable<bool>(isMythical.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('PokemonSpeciesCompanion(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('generationId: $generationId, ')
          ..write('evolutionChainId: $evolutionChainId, ')
          ..write('isLegendary: $isLegendary, ')
          ..write('isMythical: $isMythical')
          ..write(')'))
        .toString();
  }
}

class $PokemonsTable extends Pokemons
    with TableInfo<$PokemonsTable, PokemonRow> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $PokemonsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
    'id',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _speciesIdMeta = const VerificationMeta(
    'speciesId',
  );
  @override
  late final GeneratedColumn<int> speciesId = GeneratedColumn<int>(
    'species_id',
    aliasedName,
    true,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'REFERENCES pokemon_species (id)',
    ),
  );
  static const VerificationMeta _nameMeta = const VerificationMeta('name');
  @override
  late final GeneratedColumn<String> name = GeneratedColumn<String>(
    'name',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _heightMeta = const VerificationMeta('height');
  @override
  late final GeneratedColumn<int> height = GeneratedColumn<int>(
    'height',
    aliasedName,
    true,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _weightMeta = const VerificationMeta('weight');
  @override
  late final GeneratedColumn<int> weight = GeneratedColumn<int>(
    'weight',
    aliasedName,
    true,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _baseStatTotalMeta = const VerificationMeta(
    'baseStatTotal',
  );
  @override
  late final GeneratedColumn<int> baseStatTotal = GeneratedColumn<int>(
    'base_stat_total',
    aliasedName,
    true,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _isDefaultMeta = const VerificationMeta(
    'isDefault',
  );
  @override
  late final GeneratedColumn<bool> isDefault = GeneratedColumn<bool>(
    'is_default',
    aliasedName,
    false,
    type: DriftSqlType.bool,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'CHECK ("is_default" IN (0, 1))',
    ),
    defaultValue: const Constant(true),
  );
  static const VerificationMeta _updatedAtMeta = const VerificationMeta(
    'updatedAt',
  );
  @override
  late final GeneratedColumn<DateTime> updatedAt = GeneratedColumn<DateTime>(
    'updated_at',
    aliasedName,
    false,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: true,
  );
  @override
  List<GeneratedColumn> get $columns => [
    id,
    speciesId,
    name,
    height,
    weight,
    baseStatTotal,
    isDefault,
    updatedAt,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'pokemons';
  @override
  VerificationContext validateIntegrity(
    Insertable<PokemonRow> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('species_id')) {
      context.handle(
        _speciesIdMeta,
        speciesId.isAcceptableOrUnknown(data['species_id']!, _speciesIdMeta),
      );
    }
    if (data.containsKey('name')) {
      context.handle(
        _nameMeta,
        name.isAcceptableOrUnknown(data['name']!, _nameMeta),
      );
    } else if (isInserting) {
      context.missing(_nameMeta);
    }
    if (data.containsKey('height')) {
      context.handle(
        _heightMeta,
        height.isAcceptableOrUnknown(data['height']!, _heightMeta),
      );
    }
    if (data.containsKey('weight')) {
      context.handle(
        _weightMeta,
        weight.isAcceptableOrUnknown(data['weight']!, _weightMeta),
      );
    }
    if (data.containsKey('base_stat_total')) {
      context.handle(
        _baseStatTotalMeta,
        baseStatTotal.isAcceptableOrUnknown(
          data['base_stat_total']!,
          _baseStatTotalMeta,
        ),
      );
    }
    if (data.containsKey('is_default')) {
      context.handle(
        _isDefaultMeta,
        isDefault.isAcceptableOrUnknown(data['is_default']!, _isDefaultMeta),
      );
    }
    if (data.containsKey('updated_at')) {
      context.handle(
        _updatedAtMeta,
        updatedAt.isAcceptableOrUnknown(data['updated_at']!, _updatedAtMeta),
      );
    } else if (isInserting) {
      context.missing(_updatedAtMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  PokemonRow map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return PokemonRow(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}id'],
      )!,
      speciesId: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}species_id'],
      ),
      name: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}name'],
      )!,
      height: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}height'],
      ),
      weight: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}weight'],
      ),
      baseStatTotal: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}base_stat_total'],
      ),
      isDefault: attachedDatabase.typeMapping.read(
        DriftSqlType.bool,
        data['${effectivePrefix}is_default'],
      )!,
      updatedAt: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}updated_at'],
      )!,
    );
  }

  @override
  $PokemonsTable createAlias(String alias) {
    return $PokemonsTable(attachedDatabase, alias);
  }
}

class PokemonRow extends DataClass implements Insertable<PokemonRow> {
  final int id;
  final int? speciesId;
  final String name;
  final int? height;
  final int? weight;
  final int? baseStatTotal;
  final bool isDefault;
  final DateTime updatedAt;
  const PokemonRow({
    required this.id,
    this.speciesId,
    required this.name,
    this.height,
    this.weight,
    this.baseStatTotal,
    required this.isDefault,
    required this.updatedAt,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    if (!nullToAbsent || speciesId != null) {
      map['species_id'] = Variable<int>(speciesId);
    }
    map['name'] = Variable<String>(name);
    if (!nullToAbsent || height != null) {
      map['height'] = Variable<int>(height);
    }
    if (!nullToAbsent || weight != null) {
      map['weight'] = Variable<int>(weight);
    }
    if (!nullToAbsent || baseStatTotal != null) {
      map['base_stat_total'] = Variable<int>(baseStatTotal);
    }
    map['is_default'] = Variable<bool>(isDefault);
    map['updated_at'] = Variable<DateTime>(updatedAt);
    return map;
  }

  PokemonsCompanion toCompanion(bool nullToAbsent) {
    return PokemonsCompanion(
      id: Value(id),
      speciesId: speciesId == null && nullToAbsent
          ? const Value.absent()
          : Value(speciesId),
      name: Value(name),
      height: height == null && nullToAbsent
          ? const Value.absent()
          : Value(height),
      weight: weight == null && nullToAbsent
          ? const Value.absent()
          : Value(weight),
      baseStatTotal: baseStatTotal == null && nullToAbsent
          ? const Value.absent()
          : Value(baseStatTotal),
      isDefault: Value(isDefault),
      updatedAt: Value(updatedAt),
    );
  }

  factory PokemonRow.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return PokemonRow(
      id: serializer.fromJson<int>(json['id']),
      speciesId: serializer.fromJson<int?>(json['speciesId']),
      name: serializer.fromJson<String>(json['name']),
      height: serializer.fromJson<int?>(json['height']),
      weight: serializer.fromJson<int?>(json['weight']),
      baseStatTotal: serializer.fromJson<int?>(json['baseStatTotal']),
      isDefault: serializer.fromJson<bool>(json['isDefault']),
      updatedAt: serializer.fromJson<DateTime>(json['updatedAt']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'speciesId': serializer.toJson<int?>(speciesId),
      'name': serializer.toJson<String>(name),
      'height': serializer.toJson<int?>(height),
      'weight': serializer.toJson<int?>(weight),
      'baseStatTotal': serializer.toJson<int?>(baseStatTotal),
      'isDefault': serializer.toJson<bool>(isDefault),
      'updatedAt': serializer.toJson<DateTime>(updatedAt),
    };
  }

  PokemonRow copyWith({
    int? id,
    Value<int?> speciesId = const Value.absent(),
    String? name,
    Value<int?> height = const Value.absent(),
    Value<int?> weight = const Value.absent(),
    Value<int?> baseStatTotal = const Value.absent(),
    bool? isDefault,
    DateTime? updatedAt,
  }) => PokemonRow(
    id: id ?? this.id,
    speciesId: speciesId.present ? speciesId.value : this.speciesId,
    name: name ?? this.name,
    height: height.present ? height.value : this.height,
    weight: weight.present ? weight.value : this.weight,
    baseStatTotal: baseStatTotal.present
        ? baseStatTotal.value
        : this.baseStatTotal,
    isDefault: isDefault ?? this.isDefault,
    updatedAt: updatedAt ?? this.updatedAt,
  );
  PokemonRow copyWithCompanion(PokemonsCompanion data) {
    return PokemonRow(
      id: data.id.present ? data.id.value : this.id,
      speciesId: data.speciesId.present ? data.speciesId.value : this.speciesId,
      name: data.name.present ? data.name.value : this.name,
      height: data.height.present ? data.height.value : this.height,
      weight: data.weight.present ? data.weight.value : this.weight,
      baseStatTotal: data.baseStatTotal.present
          ? data.baseStatTotal.value
          : this.baseStatTotal,
      isDefault: data.isDefault.present ? data.isDefault.value : this.isDefault,
      updatedAt: data.updatedAt.present ? data.updatedAt.value : this.updatedAt,
    );
  }

  @override
  String toString() {
    return (StringBuffer('PokemonRow(')
          ..write('id: $id, ')
          ..write('speciesId: $speciesId, ')
          ..write('name: $name, ')
          ..write('height: $height, ')
          ..write('weight: $weight, ')
          ..write('baseStatTotal: $baseStatTotal, ')
          ..write('isDefault: $isDefault, ')
          ..write('updatedAt: $updatedAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
    id,
    speciesId,
    name,
    height,
    weight,
    baseStatTotal,
    isDefault,
    updatedAt,
  );
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is PokemonRow &&
          other.id == this.id &&
          other.speciesId == this.speciesId &&
          other.name == this.name &&
          other.height == this.height &&
          other.weight == this.weight &&
          other.baseStatTotal == this.baseStatTotal &&
          other.isDefault == this.isDefault &&
          other.updatedAt == this.updatedAt);
}

class PokemonsCompanion extends UpdateCompanion<PokemonRow> {
  final Value<int> id;
  final Value<int?> speciesId;
  final Value<String> name;
  final Value<int?> height;
  final Value<int?> weight;
  final Value<int?> baseStatTotal;
  final Value<bool> isDefault;
  final Value<DateTime> updatedAt;
  const PokemonsCompanion({
    this.id = const Value.absent(),
    this.speciesId = const Value.absent(),
    this.name = const Value.absent(),
    this.height = const Value.absent(),
    this.weight = const Value.absent(),
    this.baseStatTotal = const Value.absent(),
    this.isDefault = const Value.absent(),
    this.updatedAt = const Value.absent(),
  });
  PokemonsCompanion.insert({
    this.id = const Value.absent(),
    this.speciesId = const Value.absent(),
    required String name,
    this.height = const Value.absent(),
    this.weight = const Value.absent(),
    this.baseStatTotal = const Value.absent(),
    this.isDefault = const Value.absent(),
    required DateTime updatedAt,
  }) : name = Value(name),
       updatedAt = Value(updatedAt);
  static Insertable<PokemonRow> custom({
    Expression<int>? id,
    Expression<int>? speciesId,
    Expression<String>? name,
    Expression<int>? height,
    Expression<int>? weight,
    Expression<int>? baseStatTotal,
    Expression<bool>? isDefault,
    Expression<DateTime>? updatedAt,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (speciesId != null) 'species_id': speciesId,
      if (name != null) 'name': name,
      if (height != null) 'height': height,
      if (weight != null) 'weight': weight,
      if (baseStatTotal != null) 'base_stat_total': baseStatTotal,
      if (isDefault != null) 'is_default': isDefault,
      if (updatedAt != null) 'updated_at': updatedAt,
    });
  }

  PokemonsCompanion copyWith({
    Value<int>? id,
    Value<int?>? speciesId,
    Value<String>? name,
    Value<int?>? height,
    Value<int?>? weight,
    Value<int?>? baseStatTotal,
    Value<bool>? isDefault,
    Value<DateTime>? updatedAt,
  }) {
    return PokemonsCompanion(
      id: id ?? this.id,
      speciesId: speciesId ?? this.speciesId,
      name: name ?? this.name,
      height: height ?? this.height,
      weight: weight ?? this.weight,
      baseStatTotal: baseStatTotal ?? this.baseStatTotal,
      isDefault: isDefault ?? this.isDefault,
      updatedAt: updatedAt ?? this.updatedAt,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (speciesId.present) {
      map['species_id'] = Variable<int>(speciesId.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    if (height.present) {
      map['height'] = Variable<int>(height.value);
    }
    if (weight.present) {
      map['weight'] = Variable<int>(weight.value);
    }
    if (baseStatTotal.present) {
      map['base_stat_total'] = Variable<int>(baseStatTotal.value);
    }
    if (isDefault.present) {
      map['is_default'] = Variable<bool>(isDefault.value);
    }
    if (updatedAt.present) {
      map['updated_at'] = Variable<DateTime>(updatedAt.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('PokemonsCompanion(')
          ..write('id: $id, ')
          ..write('speciesId: $speciesId, ')
          ..write('name: $name, ')
          ..write('height: $height, ')
          ..write('weight: $weight, ')
          ..write('baseStatTotal: $baseStatTotal, ')
          ..write('isDefault: $isDefault, ')
          ..write('updatedAt: $updatedAt')
          ..write(')'))
        .toString();
  }
}

class $TypesTable extends Types with TableInfo<$TypesTable, Type> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $TypesTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
    'id',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _nameMeta = const VerificationMeta('name');
  @override
  late final GeneratedColumn<String> name = GeneratedColumn<String>(
    'name',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  @override
  List<GeneratedColumn> get $columns => [id, name];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'types';
  @override
  VerificationContext validateIntegrity(
    Insertable<Type> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('name')) {
      context.handle(
        _nameMeta,
        name.isAcceptableOrUnknown(data['name']!, _nameMeta),
      );
    } else if (isInserting) {
      context.missing(_nameMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  Type map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return Type(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}id'],
      )!,
      name: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}name'],
      )!,
    );
  }

  @override
  $TypesTable createAlias(String alias) {
    return $TypesTable(attachedDatabase, alias);
  }
}

class Type extends DataClass implements Insertable<Type> {
  final int id;
  final String name;
  const Type({required this.id, required this.name});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['name'] = Variable<String>(name);
    return map;
  }

  TypesCompanion toCompanion(bool nullToAbsent) {
    return TypesCompanion(id: Value(id), name: Value(name));
  }

  factory Type.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return Type(
      id: serializer.fromJson<int>(json['id']),
      name: serializer.fromJson<String>(json['name']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'name': serializer.toJson<String>(name),
    };
  }

  Type copyWith({int? id, String? name}) =>
      Type(id: id ?? this.id, name: name ?? this.name);
  Type copyWithCompanion(TypesCompanion data) {
    return Type(
      id: data.id.present ? data.id.value : this.id,
      name: data.name.present ? data.name.value : this.name,
    );
  }

  @override
  String toString() {
    return (StringBuffer('Type(')
          ..write('id: $id, ')
          ..write('name: $name')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, name);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Type && other.id == this.id && other.name == this.name);
}

class TypesCompanion extends UpdateCompanion<Type> {
  final Value<int> id;
  final Value<String> name;
  const TypesCompanion({
    this.id = const Value.absent(),
    this.name = const Value.absent(),
  });
  TypesCompanion.insert({this.id = const Value.absent(), required String name})
    : name = Value(name);
  static Insertable<Type> custom({
    Expression<int>? id,
    Expression<String>? name,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (name != null) 'name': name,
    });
  }

  TypesCompanion copyWith({Value<int>? id, Value<String>? name}) {
    return TypesCompanion(id: id ?? this.id, name: name ?? this.name);
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('TypesCompanion(')
          ..write('id: $id, ')
          ..write('name: $name')
          ..write(')'))
        .toString();
  }
}

class $PokemonTypesTable extends PokemonTypes
    with TableInfo<$PokemonTypesTable, PokemonType> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $PokemonTypesTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _pokemonIdMeta = const VerificationMeta(
    'pokemonId',
  );
  @override
  late final GeneratedColumn<int> pokemonId = GeneratedColumn<int>(
    'pokemon_id',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'REFERENCES pokemons (id)',
    ),
  );
  static const VerificationMeta _typeIdMeta = const VerificationMeta('typeId');
  @override
  late final GeneratedColumn<int> typeId = GeneratedColumn<int>(
    'type_id',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'REFERENCES types (id)',
    ),
  );
  static const VerificationMeta _slotMeta = const VerificationMeta('slot');
  @override
  late final GeneratedColumn<int> slot = GeneratedColumn<int>(
    'slot',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
  );
  @override
  List<GeneratedColumn> get $columns => [pokemonId, typeId, slot];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'pokemon_types';
  @override
  VerificationContext validateIntegrity(
    Insertable<PokemonType> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('pokemon_id')) {
      context.handle(
        _pokemonIdMeta,
        pokemonId.isAcceptableOrUnknown(data['pokemon_id']!, _pokemonIdMeta),
      );
    } else if (isInserting) {
      context.missing(_pokemonIdMeta);
    }
    if (data.containsKey('type_id')) {
      context.handle(
        _typeIdMeta,
        typeId.isAcceptableOrUnknown(data['type_id']!, _typeIdMeta),
      );
    } else if (isInserting) {
      context.missing(_typeIdMeta);
    }
    if (data.containsKey('slot')) {
      context.handle(
        _slotMeta,
        slot.isAcceptableOrUnknown(data['slot']!, _slotMeta),
      );
    } else if (isInserting) {
      context.missing(_slotMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {pokemonId, typeId};
  @override
  PokemonType map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return PokemonType(
      pokemonId: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}pokemon_id'],
      )!,
      typeId: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}type_id'],
      )!,
      slot: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}slot'],
      )!,
    );
  }

  @override
  $PokemonTypesTable createAlias(String alias) {
    return $PokemonTypesTable(attachedDatabase, alias);
  }
}

class PokemonType extends DataClass implements Insertable<PokemonType> {
  final int pokemonId;
  final int typeId;
  final int slot;
  const PokemonType({
    required this.pokemonId,
    required this.typeId,
    required this.slot,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['pokemon_id'] = Variable<int>(pokemonId);
    map['type_id'] = Variable<int>(typeId);
    map['slot'] = Variable<int>(slot);
    return map;
  }

  PokemonTypesCompanion toCompanion(bool nullToAbsent) {
    return PokemonTypesCompanion(
      pokemonId: Value(pokemonId),
      typeId: Value(typeId),
      slot: Value(slot),
    );
  }

  factory PokemonType.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return PokemonType(
      pokemonId: serializer.fromJson<int>(json['pokemonId']),
      typeId: serializer.fromJson<int>(json['typeId']),
      slot: serializer.fromJson<int>(json['slot']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'pokemonId': serializer.toJson<int>(pokemonId),
      'typeId': serializer.toJson<int>(typeId),
      'slot': serializer.toJson<int>(slot),
    };
  }

  PokemonType copyWith({int? pokemonId, int? typeId, int? slot}) => PokemonType(
    pokemonId: pokemonId ?? this.pokemonId,
    typeId: typeId ?? this.typeId,
    slot: slot ?? this.slot,
  );
  PokemonType copyWithCompanion(PokemonTypesCompanion data) {
    return PokemonType(
      pokemonId: data.pokemonId.present ? data.pokemonId.value : this.pokemonId,
      typeId: data.typeId.present ? data.typeId.value : this.typeId,
      slot: data.slot.present ? data.slot.value : this.slot,
    );
  }

  @override
  String toString() {
    return (StringBuffer('PokemonType(')
          ..write('pokemonId: $pokemonId, ')
          ..write('typeId: $typeId, ')
          ..write('slot: $slot')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(pokemonId, typeId, slot);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is PokemonType &&
          other.pokemonId == this.pokemonId &&
          other.typeId == this.typeId &&
          other.slot == this.slot);
}

class PokemonTypesCompanion extends UpdateCompanion<PokemonType> {
  final Value<int> pokemonId;
  final Value<int> typeId;
  final Value<int> slot;
  final Value<int> rowid;
  const PokemonTypesCompanion({
    this.pokemonId = const Value.absent(),
    this.typeId = const Value.absent(),
    this.slot = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  PokemonTypesCompanion.insert({
    required int pokemonId,
    required int typeId,
    required int slot,
    this.rowid = const Value.absent(),
  }) : pokemonId = Value(pokemonId),
       typeId = Value(typeId),
       slot = Value(slot);
  static Insertable<PokemonType> custom({
    Expression<int>? pokemonId,
    Expression<int>? typeId,
    Expression<int>? slot,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (pokemonId != null) 'pokemon_id': pokemonId,
      if (typeId != null) 'type_id': typeId,
      if (slot != null) 'slot': slot,
      if (rowid != null) 'rowid': rowid,
    });
  }

  PokemonTypesCompanion copyWith({
    Value<int>? pokemonId,
    Value<int>? typeId,
    Value<int>? slot,
    Value<int>? rowid,
  }) {
    return PokemonTypesCompanion(
      pokemonId: pokemonId ?? this.pokemonId,
      typeId: typeId ?? this.typeId,
      slot: slot ?? this.slot,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (pokemonId.present) {
      map['pokemon_id'] = Variable<int>(pokemonId.value);
    }
    if (typeId.present) {
      map['type_id'] = Variable<int>(typeId.value);
    }
    if (slot.present) {
      map['slot'] = Variable<int>(slot.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('PokemonTypesCompanion(')
          ..write('pokemonId: $pokemonId, ')
          ..write('typeId: $typeId, ')
          ..write('slot: $slot, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $PokemonStatsTable extends PokemonStats
    with TableInfo<$PokemonStatsTable, PokemonStat> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $PokemonStatsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _pokemonIdMeta = const VerificationMeta(
    'pokemonId',
  );
  @override
  late final GeneratedColumn<int> pokemonId = GeneratedColumn<int>(
    'pokemon_id',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'REFERENCES pokemons (id)',
    ),
  );
  static const VerificationMeta _statNameMeta = const VerificationMeta(
    'statName',
  );
  @override
  late final GeneratedColumn<String> statName = GeneratedColumn<String>(
    'stat_name',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _baseValueMeta = const VerificationMeta(
    'baseValue',
  );
  @override
  late final GeneratedColumn<int> baseValue = GeneratedColumn<int>(
    'base_value',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
  );
  @override
  List<GeneratedColumn> get $columns => [pokemonId, statName, baseValue];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'pokemon_stats';
  @override
  VerificationContext validateIntegrity(
    Insertable<PokemonStat> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('pokemon_id')) {
      context.handle(
        _pokemonIdMeta,
        pokemonId.isAcceptableOrUnknown(data['pokemon_id']!, _pokemonIdMeta),
      );
    } else if (isInserting) {
      context.missing(_pokemonIdMeta);
    }
    if (data.containsKey('stat_name')) {
      context.handle(
        _statNameMeta,
        statName.isAcceptableOrUnknown(data['stat_name']!, _statNameMeta),
      );
    } else if (isInserting) {
      context.missing(_statNameMeta);
    }
    if (data.containsKey('base_value')) {
      context.handle(
        _baseValueMeta,
        baseValue.isAcceptableOrUnknown(data['base_value']!, _baseValueMeta),
      );
    } else if (isInserting) {
      context.missing(_baseValueMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {pokemonId, statName};
  @override
  PokemonStat map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return PokemonStat(
      pokemonId: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}pokemon_id'],
      )!,
      statName: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}stat_name'],
      )!,
      baseValue: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}base_value'],
      )!,
    );
  }

  @override
  $PokemonStatsTable createAlias(String alias) {
    return $PokemonStatsTable(attachedDatabase, alias);
  }
}

class PokemonStat extends DataClass implements Insertable<PokemonStat> {
  final int pokemonId;
  final String statName;
  final int baseValue;
  const PokemonStat({
    required this.pokemonId,
    required this.statName,
    required this.baseValue,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['pokemon_id'] = Variable<int>(pokemonId);
    map['stat_name'] = Variable<String>(statName);
    map['base_value'] = Variable<int>(baseValue);
    return map;
  }

  PokemonStatsCompanion toCompanion(bool nullToAbsent) {
    return PokemonStatsCompanion(
      pokemonId: Value(pokemonId),
      statName: Value(statName),
      baseValue: Value(baseValue),
    );
  }

  factory PokemonStat.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return PokemonStat(
      pokemonId: serializer.fromJson<int>(json['pokemonId']),
      statName: serializer.fromJson<String>(json['statName']),
      baseValue: serializer.fromJson<int>(json['baseValue']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'pokemonId': serializer.toJson<int>(pokemonId),
      'statName': serializer.toJson<String>(statName),
      'baseValue': serializer.toJson<int>(baseValue),
    };
  }

  PokemonStat copyWith({int? pokemonId, String? statName, int? baseValue}) =>
      PokemonStat(
        pokemonId: pokemonId ?? this.pokemonId,
        statName: statName ?? this.statName,
        baseValue: baseValue ?? this.baseValue,
      );
  PokemonStat copyWithCompanion(PokemonStatsCompanion data) {
    return PokemonStat(
      pokemonId: data.pokemonId.present ? data.pokemonId.value : this.pokemonId,
      statName: data.statName.present ? data.statName.value : this.statName,
      baseValue: data.baseValue.present ? data.baseValue.value : this.baseValue,
    );
  }

  @override
  String toString() {
    return (StringBuffer('PokemonStat(')
          ..write('pokemonId: $pokemonId, ')
          ..write('statName: $statName, ')
          ..write('baseValue: $baseValue')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(pokemonId, statName, baseValue);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is PokemonStat &&
          other.pokemonId == this.pokemonId &&
          other.statName == this.statName &&
          other.baseValue == this.baseValue);
}

class PokemonStatsCompanion extends UpdateCompanion<PokemonStat> {
  final Value<int> pokemonId;
  final Value<String> statName;
  final Value<int> baseValue;
  final Value<int> rowid;
  const PokemonStatsCompanion({
    this.pokemonId = const Value.absent(),
    this.statName = const Value.absent(),
    this.baseValue = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  PokemonStatsCompanion.insert({
    required int pokemonId,
    required String statName,
    required int baseValue,
    this.rowid = const Value.absent(),
  }) : pokemonId = Value(pokemonId),
       statName = Value(statName),
       baseValue = Value(baseValue);
  static Insertable<PokemonStat> custom({
    Expression<int>? pokemonId,
    Expression<String>? statName,
    Expression<int>? baseValue,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (pokemonId != null) 'pokemon_id': pokemonId,
      if (statName != null) 'stat_name': statName,
      if (baseValue != null) 'base_value': baseValue,
      if (rowid != null) 'rowid': rowid,
    });
  }

  PokemonStatsCompanion copyWith({
    Value<int>? pokemonId,
    Value<String>? statName,
    Value<int>? baseValue,
    Value<int>? rowid,
  }) {
    return PokemonStatsCompanion(
      pokemonId: pokemonId ?? this.pokemonId,
      statName: statName ?? this.statName,
      baseValue: baseValue ?? this.baseValue,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (pokemonId.present) {
      map['pokemon_id'] = Variable<int>(pokemonId.value);
    }
    if (statName.present) {
      map['stat_name'] = Variable<String>(statName.value);
    }
    if (baseValue.present) {
      map['base_value'] = Variable<int>(baseValue.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('PokemonStatsCompanion(')
          ..write('pokemonId: $pokemonId, ')
          ..write('statName: $statName, ')
          ..write('baseValue: $baseValue, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $AbilitiesTable extends Abilities
    with TableInfo<$AbilitiesTable, Ability> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $AbilitiesTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
    'id',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _nameMeta = const VerificationMeta('name');
  @override
  late final GeneratedColumn<String> name = GeneratedColumn<String>(
    'name',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _effectEsMeta = const VerificationMeta(
    'effectEs',
  );
  @override
  late final GeneratedColumn<String> effectEs = GeneratedColumn<String>(
    'effect_es',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _effectEnMeta = const VerificationMeta(
    'effectEn',
  );
  @override
  late final GeneratedColumn<String> effectEn = GeneratedColumn<String>(
    'effect_en',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  @override
  List<GeneratedColumn> get $columns => [id, name, effectEs, effectEn];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'abilities';
  @override
  VerificationContext validateIntegrity(
    Insertable<Ability> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('name')) {
      context.handle(
        _nameMeta,
        name.isAcceptableOrUnknown(data['name']!, _nameMeta),
      );
    } else if (isInserting) {
      context.missing(_nameMeta);
    }
    if (data.containsKey('effect_es')) {
      context.handle(
        _effectEsMeta,
        effectEs.isAcceptableOrUnknown(data['effect_es']!, _effectEsMeta),
      );
    }
    if (data.containsKey('effect_en')) {
      context.handle(
        _effectEnMeta,
        effectEn.isAcceptableOrUnknown(data['effect_en']!, _effectEnMeta),
      );
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  Ability map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return Ability(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}id'],
      )!,
      name: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}name'],
      )!,
      effectEs: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}effect_es'],
      ),
      effectEn: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}effect_en'],
      ),
    );
  }

  @override
  $AbilitiesTable createAlias(String alias) {
    return $AbilitiesTable(attachedDatabase, alias);
  }
}

class Ability extends DataClass implements Insertable<Ability> {
  final int id;
  final String name;
  final String? effectEs;
  final String? effectEn;
  const Ability({
    required this.id,
    required this.name,
    this.effectEs,
    this.effectEn,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['name'] = Variable<String>(name);
    if (!nullToAbsent || effectEs != null) {
      map['effect_es'] = Variable<String>(effectEs);
    }
    if (!nullToAbsent || effectEn != null) {
      map['effect_en'] = Variable<String>(effectEn);
    }
    return map;
  }

  AbilitiesCompanion toCompanion(bool nullToAbsent) {
    return AbilitiesCompanion(
      id: Value(id),
      name: Value(name),
      effectEs: effectEs == null && nullToAbsent
          ? const Value.absent()
          : Value(effectEs),
      effectEn: effectEn == null && nullToAbsent
          ? const Value.absent()
          : Value(effectEn),
    );
  }

  factory Ability.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return Ability(
      id: serializer.fromJson<int>(json['id']),
      name: serializer.fromJson<String>(json['name']),
      effectEs: serializer.fromJson<String?>(json['effectEs']),
      effectEn: serializer.fromJson<String?>(json['effectEn']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'name': serializer.toJson<String>(name),
      'effectEs': serializer.toJson<String?>(effectEs),
      'effectEn': serializer.toJson<String?>(effectEn),
    };
  }

  Ability copyWith({
    int? id,
    String? name,
    Value<String?> effectEs = const Value.absent(),
    Value<String?> effectEn = const Value.absent(),
  }) => Ability(
    id: id ?? this.id,
    name: name ?? this.name,
    effectEs: effectEs.present ? effectEs.value : this.effectEs,
    effectEn: effectEn.present ? effectEn.value : this.effectEn,
  );
  Ability copyWithCompanion(AbilitiesCompanion data) {
    return Ability(
      id: data.id.present ? data.id.value : this.id,
      name: data.name.present ? data.name.value : this.name,
      effectEs: data.effectEs.present ? data.effectEs.value : this.effectEs,
      effectEn: data.effectEn.present ? data.effectEn.value : this.effectEn,
    );
  }

  @override
  String toString() {
    return (StringBuffer('Ability(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('effectEs: $effectEs, ')
          ..write('effectEn: $effectEn')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, name, effectEs, effectEn);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Ability &&
          other.id == this.id &&
          other.name == this.name &&
          other.effectEs == this.effectEs &&
          other.effectEn == this.effectEn);
}

class AbilitiesCompanion extends UpdateCompanion<Ability> {
  final Value<int> id;
  final Value<String> name;
  final Value<String?> effectEs;
  final Value<String?> effectEn;
  const AbilitiesCompanion({
    this.id = const Value.absent(),
    this.name = const Value.absent(),
    this.effectEs = const Value.absent(),
    this.effectEn = const Value.absent(),
  });
  AbilitiesCompanion.insert({
    this.id = const Value.absent(),
    required String name,
    this.effectEs = const Value.absent(),
    this.effectEn = const Value.absent(),
  }) : name = Value(name);
  static Insertable<Ability> custom({
    Expression<int>? id,
    Expression<String>? name,
    Expression<String>? effectEs,
    Expression<String>? effectEn,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (name != null) 'name': name,
      if (effectEs != null) 'effect_es': effectEs,
      if (effectEn != null) 'effect_en': effectEn,
    });
  }

  AbilitiesCompanion copyWith({
    Value<int>? id,
    Value<String>? name,
    Value<String?>? effectEs,
    Value<String?>? effectEn,
  }) {
    return AbilitiesCompanion(
      id: id ?? this.id,
      name: name ?? this.name,
      effectEs: effectEs ?? this.effectEs,
      effectEn: effectEn ?? this.effectEn,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    if (effectEs.present) {
      map['effect_es'] = Variable<String>(effectEs.value);
    }
    if (effectEn.present) {
      map['effect_en'] = Variable<String>(effectEn.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('AbilitiesCompanion(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('effectEs: $effectEs, ')
          ..write('effectEn: $effectEn')
          ..write(')'))
        .toString();
  }
}

class $PokemonAbilitiesTable extends PokemonAbilities
    with TableInfo<$PokemonAbilitiesTable, PokemonAbility> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $PokemonAbilitiesTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _pokemonIdMeta = const VerificationMeta(
    'pokemonId',
  );
  @override
  late final GeneratedColumn<int> pokemonId = GeneratedColumn<int>(
    'pokemon_id',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'REFERENCES pokemons (id)',
    ),
  );
  static const VerificationMeta _abilityIdMeta = const VerificationMeta(
    'abilityId',
  );
  @override
  late final GeneratedColumn<int> abilityId = GeneratedColumn<int>(
    'ability_id',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'REFERENCES abilities (id)',
    ),
  );
  static const VerificationMeta _slotMeta = const VerificationMeta('slot');
  @override
  late final GeneratedColumn<int> slot = GeneratedColumn<int>(
    'slot',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _isHiddenMeta = const VerificationMeta(
    'isHidden',
  );
  @override
  late final GeneratedColumn<bool> isHidden = GeneratedColumn<bool>(
    'is_hidden',
    aliasedName,
    false,
    type: DriftSqlType.bool,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'CHECK ("is_hidden" IN (0, 1))',
    ),
    defaultValue: const Constant(false),
  );
  @override
  List<GeneratedColumn> get $columns => [pokemonId, abilityId, slot, isHidden];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'pokemon_abilities';
  @override
  VerificationContext validateIntegrity(
    Insertable<PokemonAbility> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('pokemon_id')) {
      context.handle(
        _pokemonIdMeta,
        pokemonId.isAcceptableOrUnknown(data['pokemon_id']!, _pokemonIdMeta),
      );
    } else if (isInserting) {
      context.missing(_pokemonIdMeta);
    }
    if (data.containsKey('ability_id')) {
      context.handle(
        _abilityIdMeta,
        abilityId.isAcceptableOrUnknown(data['ability_id']!, _abilityIdMeta),
      );
    } else if (isInserting) {
      context.missing(_abilityIdMeta);
    }
    if (data.containsKey('slot')) {
      context.handle(
        _slotMeta,
        slot.isAcceptableOrUnknown(data['slot']!, _slotMeta),
      );
    } else if (isInserting) {
      context.missing(_slotMeta);
    }
    if (data.containsKey('is_hidden')) {
      context.handle(
        _isHiddenMeta,
        isHidden.isAcceptableOrUnknown(data['is_hidden']!, _isHiddenMeta),
      );
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {pokemonId, abilityId};
  @override
  PokemonAbility map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return PokemonAbility(
      pokemonId: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}pokemon_id'],
      )!,
      abilityId: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}ability_id'],
      )!,
      slot: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}slot'],
      )!,
      isHidden: attachedDatabase.typeMapping.read(
        DriftSqlType.bool,
        data['${effectivePrefix}is_hidden'],
      )!,
    );
  }

  @override
  $PokemonAbilitiesTable createAlias(String alias) {
    return $PokemonAbilitiesTable(attachedDatabase, alias);
  }
}

class PokemonAbility extends DataClass implements Insertable<PokemonAbility> {
  final int pokemonId;
  final int abilityId;
  final int slot;
  final bool isHidden;
  const PokemonAbility({
    required this.pokemonId,
    required this.abilityId,
    required this.slot,
    required this.isHidden,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['pokemon_id'] = Variable<int>(pokemonId);
    map['ability_id'] = Variable<int>(abilityId);
    map['slot'] = Variable<int>(slot);
    map['is_hidden'] = Variable<bool>(isHidden);
    return map;
  }

  PokemonAbilitiesCompanion toCompanion(bool nullToAbsent) {
    return PokemonAbilitiesCompanion(
      pokemonId: Value(pokemonId),
      abilityId: Value(abilityId),
      slot: Value(slot),
      isHidden: Value(isHidden),
    );
  }

  factory PokemonAbility.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return PokemonAbility(
      pokemonId: serializer.fromJson<int>(json['pokemonId']),
      abilityId: serializer.fromJson<int>(json['abilityId']),
      slot: serializer.fromJson<int>(json['slot']),
      isHidden: serializer.fromJson<bool>(json['isHidden']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'pokemonId': serializer.toJson<int>(pokemonId),
      'abilityId': serializer.toJson<int>(abilityId),
      'slot': serializer.toJson<int>(slot),
      'isHidden': serializer.toJson<bool>(isHidden),
    };
  }

  PokemonAbility copyWith({
    int? pokemonId,
    int? abilityId,
    int? slot,
    bool? isHidden,
  }) => PokemonAbility(
    pokemonId: pokemonId ?? this.pokemonId,
    abilityId: abilityId ?? this.abilityId,
    slot: slot ?? this.slot,
    isHidden: isHidden ?? this.isHidden,
  );
  PokemonAbility copyWithCompanion(PokemonAbilitiesCompanion data) {
    return PokemonAbility(
      pokemonId: data.pokemonId.present ? data.pokemonId.value : this.pokemonId,
      abilityId: data.abilityId.present ? data.abilityId.value : this.abilityId,
      slot: data.slot.present ? data.slot.value : this.slot,
      isHidden: data.isHidden.present ? data.isHidden.value : this.isHidden,
    );
  }

  @override
  String toString() {
    return (StringBuffer('PokemonAbility(')
          ..write('pokemonId: $pokemonId, ')
          ..write('abilityId: $abilityId, ')
          ..write('slot: $slot, ')
          ..write('isHidden: $isHidden')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(pokemonId, abilityId, slot, isHidden);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is PokemonAbility &&
          other.pokemonId == this.pokemonId &&
          other.abilityId == this.abilityId &&
          other.slot == this.slot &&
          other.isHidden == this.isHidden);
}

class PokemonAbilitiesCompanion extends UpdateCompanion<PokemonAbility> {
  final Value<int> pokemonId;
  final Value<int> abilityId;
  final Value<int> slot;
  final Value<bool> isHidden;
  final Value<int> rowid;
  const PokemonAbilitiesCompanion({
    this.pokemonId = const Value.absent(),
    this.abilityId = const Value.absent(),
    this.slot = const Value.absent(),
    this.isHidden = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  PokemonAbilitiesCompanion.insert({
    required int pokemonId,
    required int abilityId,
    required int slot,
    this.isHidden = const Value.absent(),
    this.rowid = const Value.absent(),
  }) : pokemonId = Value(pokemonId),
       abilityId = Value(abilityId),
       slot = Value(slot);
  static Insertable<PokemonAbility> custom({
    Expression<int>? pokemonId,
    Expression<int>? abilityId,
    Expression<int>? slot,
    Expression<bool>? isHidden,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (pokemonId != null) 'pokemon_id': pokemonId,
      if (abilityId != null) 'ability_id': abilityId,
      if (slot != null) 'slot': slot,
      if (isHidden != null) 'is_hidden': isHidden,
      if (rowid != null) 'rowid': rowid,
    });
  }

  PokemonAbilitiesCompanion copyWith({
    Value<int>? pokemonId,
    Value<int>? abilityId,
    Value<int>? slot,
    Value<bool>? isHidden,
    Value<int>? rowid,
  }) {
    return PokemonAbilitiesCompanion(
      pokemonId: pokemonId ?? this.pokemonId,
      abilityId: abilityId ?? this.abilityId,
      slot: slot ?? this.slot,
      isHidden: isHidden ?? this.isHidden,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (pokemonId.present) {
      map['pokemon_id'] = Variable<int>(pokemonId.value);
    }
    if (abilityId.present) {
      map['ability_id'] = Variable<int>(abilityId.value);
    }
    if (slot.present) {
      map['slot'] = Variable<int>(slot.value);
    }
    if (isHidden.present) {
      map['is_hidden'] = Variable<bool>(isHidden.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('PokemonAbilitiesCompanion(')
          ..write('pokemonId: $pokemonId, ')
          ..write('abilityId: $abilityId, ')
          ..write('slot: $slot, ')
          ..write('isHidden: $isHidden, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $MovesTable extends Moves with TableInfo<$MovesTable, Move> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $MovesTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
    'id',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _nameMeta = const VerificationMeta('name');
  @override
  late final GeneratedColumn<String> name = GeneratedColumn<String>(
    'name',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _typeIdMeta = const VerificationMeta('typeId');
  @override
  late final GeneratedColumn<int> typeId = GeneratedColumn<int>(
    'type_id',
    aliasedName,
    true,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _powerMeta = const VerificationMeta('power');
  @override
  late final GeneratedColumn<int> power = GeneratedColumn<int>(
    'power',
    aliasedName,
    true,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _accuracyMeta = const VerificationMeta(
    'accuracy',
  );
  @override
  late final GeneratedColumn<int> accuracy = GeneratedColumn<int>(
    'accuracy',
    aliasedName,
    true,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _ppMeta = const VerificationMeta('pp');
  @override
  late final GeneratedColumn<int> pp = GeneratedColumn<int>(
    'pp',
    aliasedName,
    true,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
  );
  @override
  List<GeneratedColumn> get $columns => [id, name, typeId, power, accuracy, pp];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'moves';
  @override
  VerificationContext validateIntegrity(
    Insertable<Move> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('name')) {
      context.handle(
        _nameMeta,
        name.isAcceptableOrUnknown(data['name']!, _nameMeta),
      );
    } else if (isInserting) {
      context.missing(_nameMeta);
    }
    if (data.containsKey('type_id')) {
      context.handle(
        _typeIdMeta,
        typeId.isAcceptableOrUnknown(data['type_id']!, _typeIdMeta),
      );
    }
    if (data.containsKey('power')) {
      context.handle(
        _powerMeta,
        power.isAcceptableOrUnknown(data['power']!, _powerMeta),
      );
    }
    if (data.containsKey('accuracy')) {
      context.handle(
        _accuracyMeta,
        accuracy.isAcceptableOrUnknown(data['accuracy']!, _accuracyMeta),
      );
    }
    if (data.containsKey('pp')) {
      context.handle(_ppMeta, pp.isAcceptableOrUnknown(data['pp']!, _ppMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  Move map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return Move(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}id'],
      )!,
      name: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}name'],
      )!,
      typeId: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}type_id'],
      ),
      power: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}power'],
      ),
      accuracy: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}accuracy'],
      ),
      pp: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}pp'],
      ),
    );
  }

  @override
  $MovesTable createAlias(String alias) {
    return $MovesTable(attachedDatabase, alias);
  }
}

class Move extends DataClass implements Insertable<Move> {
  final int id;
  final String name;
  final int? typeId;
  final int? power;
  final int? accuracy;
  final int? pp;
  const Move({
    required this.id,
    required this.name,
    this.typeId,
    this.power,
    this.accuracy,
    this.pp,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['name'] = Variable<String>(name);
    if (!nullToAbsent || typeId != null) {
      map['type_id'] = Variable<int>(typeId);
    }
    if (!nullToAbsent || power != null) {
      map['power'] = Variable<int>(power);
    }
    if (!nullToAbsent || accuracy != null) {
      map['accuracy'] = Variable<int>(accuracy);
    }
    if (!nullToAbsent || pp != null) {
      map['pp'] = Variable<int>(pp);
    }
    return map;
  }

  MovesCompanion toCompanion(bool nullToAbsent) {
    return MovesCompanion(
      id: Value(id),
      name: Value(name),
      typeId: typeId == null && nullToAbsent
          ? const Value.absent()
          : Value(typeId),
      power: power == null && nullToAbsent
          ? const Value.absent()
          : Value(power),
      accuracy: accuracy == null && nullToAbsent
          ? const Value.absent()
          : Value(accuracy),
      pp: pp == null && nullToAbsent ? const Value.absent() : Value(pp),
    );
  }

  factory Move.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return Move(
      id: serializer.fromJson<int>(json['id']),
      name: serializer.fromJson<String>(json['name']),
      typeId: serializer.fromJson<int?>(json['typeId']),
      power: serializer.fromJson<int?>(json['power']),
      accuracy: serializer.fromJson<int?>(json['accuracy']),
      pp: serializer.fromJson<int?>(json['pp']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'name': serializer.toJson<String>(name),
      'typeId': serializer.toJson<int?>(typeId),
      'power': serializer.toJson<int?>(power),
      'accuracy': serializer.toJson<int?>(accuracy),
      'pp': serializer.toJson<int?>(pp),
    };
  }

  Move copyWith({
    int? id,
    String? name,
    Value<int?> typeId = const Value.absent(),
    Value<int?> power = const Value.absent(),
    Value<int?> accuracy = const Value.absent(),
    Value<int?> pp = const Value.absent(),
  }) => Move(
    id: id ?? this.id,
    name: name ?? this.name,
    typeId: typeId.present ? typeId.value : this.typeId,
    power: power.present ? power.value : this.power,
    accuracy: accuracy.present ? accuracy.value : this.accuracy,
    pp: pp.present ? pp.value : this.pp,
  );
  Move copyWithCompanion(MovesCompanion data) {
    return Move(
      id: data.id.present ? data.id.value : this.id,
      name: data.name.present ? data.name.value : this.name,
      typeId: data.typeId.present ? data.typeId.value : this.typeId,
      power: data.power.present ? data.power.value : this.power,
      accuracy: data.accuracy.present ? data.accuracy.value : this.accuracy,
      pp: data.pp.present ? data.pp.value : this.pp,
    );
  }

  @override
  String toString() {
    return (StringBuffer('Move(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('typeId: $typeId, ')
          ..write('power: $power, ')
          ..write('accuracy: $accuracy, ')
          ..write('pp: $pp')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, name, typeId, power, accuracy, pp);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Move &&
          other.id == this.id &&
          other.name == this.name &&
          other.typeId == this.typeId &&
          other.power == this.power &&
          other.accuracy == this.accuracy &&
          other.pp == this.pp);
}

class MovesCompanion extends UpdateCompanion<Move> {
  final Value<int> id;
  final Value<String> name;
  final Value<int?> typeId;
  final Value<int?> power;
  final Value<int?> accuracy;
  final Value<int?> pp;
  const MovesCompanion({
    this.id = const Value.absent(),
    this.name = const Value.absent(),
    this.typeId = const Value.absent(),
    this.power = const Value.absent(),
    this.accuracy = const Value.absent(),
    this.pp = const Value.absent(),
  });
  MovesCompanion.insert({
    this.id = const Value.absent(),
    required String name,
    this.typeId = const Value.absent(),
    this.power = const Value.absent(),
    this.accuracy = const Value.absent(),
    this.pp = const Value.absent(),
  }) : name = Value(name);
  static Insertable<Move> custom({
    Expression<int>? id,
    Expression<String>? name,
    Expression<int>? typeId,
    Expression<int>? power,
    Expression<int>? accuracy,
    Expression<int>? pp,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (name != null) 'name': name,
      if (typeId != null) 'type_id': typeId,
      if (power != null) 'power': power,
      if (accuracy != null) 'accuracy': accuracy,
      if (pp != null) 'pp': pp,
    });
  }

  MovesCompanion copyWith({
    Value<int>? id,
    Value<String>? name,
    Value<int?>? typeId,
    Value<int?>? power,
    Value<int?>? accuracy,
    Value<int?>? pp,
  }) {
    return MovesCompanion(
      id: id ?? this.id,
      name: name ?? this.name,
      typeId: typeId ?? this.typeId,
      power: power ?? this.power,
      accuracy: accuracy ?? this.accuracy,
      pp: pp ?? this.pp,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    if (typeId.present) {
      map['type_id'] = Variable<int>(typeId.value);
    }
    if (power.present) {
      map['power'] = Variable<int>(power.value);
    }
    if (accuracy.present) {
      map['accuracy'] = Variable<int>(accuracy.value);
    }
    if (pp.present) {
      map['pp'] = Variable<int>(pp.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('MovesCompanion(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('typeId: $typeId, ')
          ..write('power: $power, ')
          ..write('accuracy: $accuracy, ')
          ..write('pp: $pp')
          ..write(')'))
        .toString();
  }
}

class $PokemonMovesTable extends PokemonMoves
    with TableInfo<$PokemonMovesTable, PokemonMove> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $PokemonMovesTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _pokemonIdMeta = const VerificationMeta(
    'pokemonId',
  );
  @override
  late final GeneratedColumn<int> pokemonId = GeneratedColumn<int>(
    'pokemon_id',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'REFERENCES pokemons (id)',
    ),
  );
  static const VerificationMeta _moveIdMeta = const VerificationMeta('moveId');
  @override
  late final GeneratedColumn<int> moveId = GeneratedColumn<int>(
    'move_id',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'REFERENCES moves (id)',
    ),
  );
  static const VerificationMeta _versionGroupIdMeta = const VerificationMeta(
    'versionGroupId',
  );
  @override
  late final GeneratedColumn<int> versionGroupId = GeneratedColumn<int>(
    'version_group_id',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _methodMeta = const VerificationMeta('method');
  @override
  late final GeneratedColumn<String> method = GeneratedColumn<String>(
    'method',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _levelLearnedAtMeta = const VerificationMeta(
    'levelLearnedAt',
  );
  @override
  late final GeneratedColumn<int> levelLearnedAt = GeneratedColumn<int>(
    'level_learned_at',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    defaultValue: const Constant(0),
  );
  @override
  List<GeneratedColumn> get $columns => [
    pokemonId,
    moveId,
    versionGroupId,
    method,
    levelLearnedAt,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'pokemon_moves';
  @override
  VerificationContext validateIntegrity(
    Insertable<PokemonMove> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('pokemon_id')) {
      context.handle(
        _pokemonIdMeta,
        pokemonId.isAcceptableOrUnknown(data['pokemon_id']!, _pokemonIdMeta),
      );
    } else if (isInserting) {
      context.missing(_pokemonIdMeta);
    }
    if (data.containsKey('move_id')) {
      context.handle(
        _moveIdMeta,
        moveId.isAcceptableOrUnknown(data['move_id']!, _moveIdMeta),
      );
    } else if (isInserting) {
      context.missing(_moveIdMeta);
    }
    if (data.containsKey('version_group_id')) {
      context.handle(
        _versionGroupIdMeta,
        versionGroupId.isAcceptableOrUnknown(
          data['version_group_id']!,
          _versionGroupIdMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_versionGroupIdMeta);
    }
    if (data.containsKey('method')) {
      context.handle(
        _methodMeta,
        method.isAcceptableOrUnknown(data['method']!, _methodMeta),
      );
    } else if (isInserting) {
      context.missing(_methodMeta);
    }
    if (data.containsKey('level_learned_at')) {
      context.handle(
        _levelLearnedAtMeta,
        levelLearnedAt.isAcceptableOrUnknown(
          data['level_learned_at']!,
          _levelLearnedAtMeta,
        ),
      );
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {
    pokemonId,
    moveId,
    versionGroupId,
    method,
    levelLearnedAt,
  };
  @override
  PokemonMove map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return PokemonMove(
      pokemonId: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}pokemon_id'],
      )!,
      moveId: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}move_id'],
      )!,
      versionGroupId: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}version_group_id'],
      )!,
      method: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}method'],
      )!,
      levelLearnedAt: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}level_learned_at'],
      )!,
    );
  }

  @override
  $PokemonMovesTable createAlias(String alias) {
    return $PokemonMovesTable(attachedDatabase, alias);
  }
}

class PokemonMove extends DataClass implements Insertable<PokemonMove> {
  final int pokemonId;
  final int moveId;
  final int versionGroupId;
  final String method;
  final int levelLearnedAt;
  const PokemonMove({
    required this.pokemonId,
    required this.moveId,
    required this.versionGroupId,
    required this.method,
    required this.levelLearnedAt,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['pokemon_id'] = Variable<int>(pokemonId);
    map['move_id'] = Variable<int>(moveId);
    map['version_group_id'] = Variable<int>(versionGroupId);
    map['method'] = Variable<String>(method);
    map['level_learned_at'] = Variable<int>(levelLearnedAt);
    return map;
  }

  PokemonMovesCompanion toCompanion(bool nullToAbsent) {
    return PokemonMovesCompanion(
      pokemonId: Value(pokemonId),
      moveId: Value(moveId),
      versionGroupId: Value(versionGroupId),
      method: Value(method),
      levelLearnedAt: Value(levelLearnedAt),
    );
  }

  factory PokemonMove.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return PokemonMove(
      pokemonId: serializer.fromJson<int>(json['pokemonId']),
      moveId: serializer.fromJson<int>(json['moveId']),
      versionGroupId: serializer.fromJson<int>(json['versionGroupId']),
      method: serializer.fromJson<String>(json['method']),
      levelLearnedAt: serializer.fromJson<int>(json['levelLearnedAt']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'pokemonId': serializer.toJson<int>(pokemonId),
      'moveId': serializer.toJson<int>(moveId),
      'versionGroupId': serializer.toJson<int>(versionGroupId),
      'method': serializer.toJson<String>(method),
      'levelLearnedAt': serializer.toJson<int>(levelLearnedAt),
    };
  }

  PokemonMove copyWith({
    int? pokemonId,
    int? moveId,
    int? versionGroupId,
    String? method,
    int? levelLearnedAt,
  }) => PokemonMove(
    pokemonId: pokemonId ?? this.pokemonId,
    moveId: moveId ?? this.moveId,
    versionGroupId: versionGroupId ?? this.versionGroupId,
    method: method ?? this.method,
    levelLearnedAt: levelLearnedAt ?? this.levelLearnedAt,
  );
  PokemonMove copyWithCompanion(PokemonMovesCompanion data) {
    return PokemonMove(
      pokemonId: data.pokemonId.present ? data.pokemonId.value : this.pokemonId,
      moveId: data.moveId.present ? data.moveId.value : this.moveId,
      versionGroupId: data.versionGroupId.present
          ? data.versionGroupId.value
          : this.versionGroupId,
      method: data.method.present ? data.method.value : this.method,
      levelLearnedAt: data.levelLearnedAt.present
          ? data.levelLearnedAt.value
          : this.levelLearnedAt,
    );
  }

  @override
  String toString() {
    return (StringBuffer('PokemonMove(')
          ..write('pokemonId: $pokemonId, ')
          ..write('moveId: $moveId, ')
          ..write('versionGroupId: $versionGroupId, ')
          ..write('method: $method, ')
          ..write('levelLearnedAt: $levelLearnedAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode =>
      Object.hash(pokemonId, moveId, versionGroupId, method, levelLearnedAt);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is PokemonMove &&
          other.pokemonId == this.pokemonId &&
          other.moveId == this.moveId &&
          other.versionGroupId == this.versionGroupId &&
          other.method == this.method &&
          other.levelLearnedAt == this.levelLearnedAt);
}

class PokemonMovesCompanion extends UpdateCompanion<PokemonMove> {
  final Value<int> pokemonId;
  final Value<int> moveId;
  final Value<int> versionGroupId;
  final Value<String> method;
  final Value<int> levelLearnedAt;
  final Value<int> rowid;
  const PokemonMovesCompanion({
    this.pokemonId = const Value.absent(),
    this.moveId = const Value.absent(),
    this.versionGroupId = const Value.absent(),
    this.method = const Value.absent(),
    this.levelLearnedAt = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  PokemonMovesCompanion.insert({
    required int pokemonId,
    required int moveId,
    required int versionGroupId,
    required String method,
    this.levelLearnedAt = const Value.absent(),
    this.rowid = const Value.absent(),
  }) : pokemonId = Value(pokemonId),
       moveId = Value(moveId),
       versionGroupId = Value(versionGroupId),
       method = Value(method);
  static Insertable<PokemonMove> custom({
    Expression<int>? pokemonId,
    Expression<int>? moveId,
    Expression<int>? versionGroupId,
    Expression<String>? method,
    Expression<int>? levelLearnedAt,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (pokemonId != null) 'pokemon_id': pokemonId,
      if (moveId != null) 'move_id': moveId,
      if (versionGroupId != null) 'version_group_id': versionGroupId,
      if (method != null) 'method': method,
      if (levelLearnedAt != null) 'level_learned_at': levelLearnedAt,
      if (rowid != null) 'rowid': rowid,
    });
  }

  PokemonMovesCompanion copyWith({
    Value<int>? pokemonId,
    Value<int>? moveId,
    Value<int>? versionGroupId,
    Value<String>? method,
    Value<int>? levelLearnedAt,
    Value<int>? rowid,
  }) {
    return PokemonMovesCompanion(
      pokemonId: pokemonId ?? this.pokemonId,
      moveId: moveId ?? this.moveId,
      versionGroupId: versionGroupId ?? this.versionGroupId,
      method: method ?? this.method,
      levelLearnedAt: levelLearnedAt ?? this.levelLearnedAt,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (pokemonId.present) {
      map['pokemon_id'] = Variable<int>(pokemonId.value);
    }
    if (moveId.present) {
      map['move_id'] = Variable<int>(moveId.value);
    }
    if (versionGroupId.present) {
      map['version_group_id'] = Variable<int>(versionGroupId.value);
    }
    if (method.present) {
      map['method'] = Variable<String>(method.value);
    }
    if (levelLearnedAt.present) {
      map['level_learned_at'] = Variable<int>(levelLearnedAt.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('PokemonMovesCompanion(')
          ..write('pokemonId: $pokemonId, ')
          ..write('moveId: $moveId, ')
          ..write('versionGroupId: $versionGroupId, ')
          ..write('method: $method, ')
          ..write('levelLearnedAt: $levelLearnedAt, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $PokemonImagesTable extends PokemonImages
    with TableInfo<$PokemonImagesTable, PokemonImage> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $PokemonImagesTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _pokemonIdMeta = const VerificationMeta(
    'pokemonId',
  );
  @override
  late final GeneratedColumn<int> pokemonId = GeneratedColumn<int>(
    'pokemon_id',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'REFERENCES pokemons (id)',
    ),
  );
  static const VerificationMeta _kindMeta = const VerificationMeta('kind');
  @override
  late final GeneratedColumn<String> kind = GeneratedColumn<String>(
    'kind',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _remoteUrlMeta = const VerificationMeta(
    'remoteUrl',
  );
  @override
  late final GeneratedColumn<String> remoteUrl = GeneratedColumn<String>(
    'remote_url',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _localPathMeta = const VerificationMeta(
    'localPath',
  );
  @override
  late final GeneratedColumn<String> localPath = GeneratedColumn<String>(
    'local_path',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _cachedAtMeta = const VerificationMeta(
    'cachedAt',
  );
  @override
  late final GeneratedColumn<DateTime> cachedAt = GeneratedColumn<DateTime>(
    'cached_at',
    aliasedName,
    true,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: false,
  );
  @override
  List<GeneratedColumn> get $columns => [
    pokemonId,
    kind,
    remoteUrl,
    localPath,
    cachedAt,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'pokemon_images';
  @override
  VerificationContext validateIntegrity(
    Insertable<PokemonImage> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('pokemon_id')) {
      context.handle(
        _pokemonIdMeta,
        pokemonId.isAcceptableOrUnknown(data['pokemon_id']!, _pokemonIdMeta),
      );
    } else if (isInserting) {
      context.missing(_pokemonIdMeta);
    }
    if (data.containsKey('kind')) {
      context.handle(
        _kindMeta,
        kind.isAcceptableOrUnknown(data['kind']!, _kindMeta),
      );
    } else if (isInserting) {
      context.missing(_kindMeta);
    }
    if (data.containsKey('remote_url')) {
      context.handle(
        _remoteUrlMeta,
        remoteUrl.isAcceptableOrUnknown(data['remote_url']!, _remoteUrlMeta),
      );
    }
    if (data.containsKey('local_path')) {
      context.handle(
        _localPathMeta,
        localPath.isAcceptableOrUnknown(data['local_path']!, _localPathMeta),
      );
    }
    if (data.containsKey('cached_at')) {
      context.handle(
        _cachedAtMeta,
        cachedAt.isAcceptableOrUnknown(data['cached_at']!, _cachedAtMeta),
      );
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {pokemonId, kind};
  @override
  PokemonImage map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return PokemonImage(
      pokemonId: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}pokemon_id'],
      )!,
      kind: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}kind'],
      )!,
      remoteUrl: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}remote_url'],
      ),
      localPath: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}local_path'],
      ),
      cachedAt: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}cached_at'],
      ),
    );
  }

  @override
  $PokemonImagesTable createAlias(String alias) {
    return $PokemonImagesTable(attachedDatabase, alias);
  }
}

class PokemonImage extends DataClass implements Insertable<PokemonImage> {
  final int pokemonId;
  final String kind;
  final String? remoteUrl;
  final String? localPath;
  final DateTime? cachedAt;
  const PokemonImage({
    required this.pokemonId,
    required this.kind,
    this.remoteUrl,
    this.localPath,
    this.cachedAt,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['pokemon_id'] = Variable<int>(pokemonId);
    map['kind'] = Variable<String>(kind);
    if (!nullToAbsent || remoteUrl != null) {
      map['remote_url'] = Variable<String>(remoteUrl);
    }
    if (!nullToAbsent || localPath != null) {
      map['local_path'] = Variable<String>(localPath);
    }
    if (!nullToAbsent || cachedAt != null) {
      map['cached_at'] = Variable<DateTime>(cachedAt);
    }
    return map;
  }

  PokemonImagesCompanion toCompanion(bool nullToAbsent) {
    return PokemonImagesCompanion(
      pokemonId: Value(pokemonId),
      kind: Value(kind),
      remoteUrl: remoteUrl == null && nullToAbsent
          ? const Value.absent()
          : Value(remoteUrl),
      localPath: localPath == null && nullToAbsent
          ? const Value.absent()
          : Value(localPath),
      cachedAt: cachedAt == null && nullToAbsent
          ? const Value.absent()
          : Value(cachedAt),
    );
  }

  factory PokemonImage.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return PokemonImage(
      pokemonId: serializer.fromJson<int>(json['pokemonId']),
      kind: serializer.fromJson<String>(json['kind']),
      remoteUrl: serializer.fromJson<String?>(json['remoteUrl']),
      localPath: serializer.fromJson<String?>(json['localPath']),
      cachedAt: serializer.fromJson<DateTime?>(json['cachedAt']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'pokemonId': serializer.toJson<int>(pokemonId),
      'kind': serializer.toJson<String>(kind),
      'remoteUrl': serializer.toJson<String?>(remoteUrl),
      'localPath': serializer.toJson<String?>(localPath),
      'cachedAt': serializer.toJson<DateTime?>(cachedAt),
    };
  }

  PokemonImage copyWith({
    int? pokemonId,
    String? kind,
    Value<String?> remoteUrl = const Value.absent(),
    Value<String?> localPath = const Value.absent(),
    Value<DateTime?> cachedAt = const Value.absent(),
  }) => PokemonImage(
    pokemonId: pokemonId ?? this.pokemonId,
    kind: kind ?? this.kind,
    remoteUrl: remoteUrl.present ? remoteUrl.value : this.remoteUrl,
    localPath: localPath.present ? localPath.value : this.localPath,
    cachedAt: cachedAt.present ? cachedAt.value : this.cachedAt,
  );
  PokemonImage copyWithCompanion(PokemonImagesCompanion data) {
    return PokemonImage(
      pokemonId: data.pokemonId.present ? data.pokemonId.value : this.pokemonId,
      kind: data.kind.present ? data.kind.value : this.kind,
      remoteUrl: data.remoteUrl.present ? data.remoteUrl.value : this.remoteUrl,
      localPath: data.localPath.present ? data.localPath.value : this.localPath,
      cachedAt: data.cachedAt.present ? data.cachedAt.value : this.cachedAt,
    );
  }

  @override
  String toString() {
    return (StringBuffer('PokemonImage(')
          ..write('pokemonId: $pokemonId, ')
          ..write('kind: $kind, ')
          ..write('remoteUrl: $remoteUrl, ')
          ..write('localPath: $localPath, ')
          ..write('cachedAt: $cachedAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode =>
      Object.hash(pokemonId, kind, remoteUrl, localPath, cachedAt);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is PokemonImage &&
          other.pokemonId == this.pokemonId &&
          other.kind == this.kind &&
          other.remoteUrl == this.remoteUrl &&
          other.localPath == this.localPath &&
          other.cachedAt == this.cachedAt);
}

class PokemonImagesCompanion extends UpdateCompanion<PokemonImage> {
  final Value<int> pokemonId;
  final Value<String> kind;
  final Value<String?> remoteUrl;
  final Value<String?> localPath;
  final Value<DateTime?> cachedAt;
  final Value<int> rowid;
  const PokemonImagesCompanion({
    this.pokemonId = const Value.absent(),
    this.kind = const Value.absent(),
    this.remoteUrl = const Value.absent(),
    this.localPath = const Value.absent(),
    this.cachedAt = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  PokemonImagesCompanion.insert({
    required int pokemonId,
    required String kind,
    this.remoteUrl = const Value.absent(),
    this.localPath = const Value.absent(),
    this.cachedAt = const Value.absent(),
    this.rowid = const Value.absent(),
  }) : pokemonId = Value(pokemonId),
       kind = Value(kind);
  static Insertable<PokemonImage> custom({
    Expression<int>? pokemonId,
    Expression<String>? kind,
    Expression<String>? remoteUrl,
    Expression<String>? localPath,
    Expression<DateTime>? cachedAt,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (pokemonId != null) 'pokemon_id': pokemonId,
      if (kind != null) 'kind': kind,
      if (remoteUrl != null) 'remote_url': remoteUrl,
      if (localPath != null) 'local_path': localPath,
      if (cachedAt != null) 'cached_at': cachedAt,
      if (rowid != null) 'rowid': rowid,
    });
  }

  PokemonImagesCompanion copyWith({
    Value<int>? pokemonId,
    Value<String>? kind,
    Value<String?>? remoteUrl,
    Value<String?>? localPath,
    Value<DateTime?>? cachedAt,
    Value<int>? rowid,
  }) {
    return PokemonImagesCompanion(
      pokemonId: pokemonId ?? this.pokemonId,
      kind: kind ?? this.kind,
      remoteUrl: remoteUrl ?? this.remoteUrl,
      localPath: localPath ?? this.localPath,
      cachedAt: cachedAt ?? this.cachedAt,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (pokemonId.present) {
      map['pokemon_id'] = Variable<int>(pokemonId.value);
    }
    if (kind.present) {
      map['kind'] = Variable<String>(kind.value);
    }
    if (remoteUrl.present) {
      map['remote_url'] = Variable<String>(remoteUrl.value);
    }
    if (localPath.present) {
      map['local_path'] = Variable<String>(localPath.value);
    }
    if (cachedAt.present) {
      map['cached_at'] = Variable<DateTime>(cachedAt.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('PokemonImagesCompanion(')
          ..write('pokemonId: $pokemonId, ')
          ..write('kind: $kind, ')
          ..write('remoteUrl: $remoteUrl, ')
          ..write('localPath: $localPath, ')
          ..write('cachedAt: $cachedAt, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $EvolutionLinksTable extends EvolutionLinks
    with TableInfo<$EvolutionLinksTable, EvolutionLink> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $EvolutionLinksTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _fromSpeciesIdMeta = const VerificationMeta(
    'fromSpeciesId',
  );
  @override
  late final GeneratedColumn<int> fromSpeciesId = GeneratedColumn<int>(
    'from_species_id',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'REFERENCES pokemon_species (id)',
    ),
  );
  static const VerificationMeta _toSpeciesIdMeta = const VerificationMeta(
    'toSpeciesId',
  );
  @override
  late final GeneratedColumn<int> toSpeciesId = GeneratedColumn<int>(
    'to_species_id',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'REFERENCES pokemon_species (id)',
    ),
  );
  static const VerificationMeta _triggerMeta = const VerificationMeta(
    'trigger',
  );
  @override
  late final GeneratedColumn<String> trigger = GeneratedColumn<String>(
    'trigger',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _minLevelMeta = const VerificationMeta(
    'minLevel',
  );
  @override
  late final GeneratedColumn<int> minLevel = GeneratedColumn<int>(
    'min_level',
    aliasedName,
    true,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _itemNameMeta = const VerificationMeta(
    'itemName',
  );
  @override
  late final GeneratedColumn<String> itemName = GeneratedColumn<String>(
    'item_name',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _minHappinessMeta = const VerificationMeta(
    'minHappiness',
  );
  @override
  late final GeneratedColumn<int> minHappiness = GeneratedColumn<int>(
    'min_happiness',
    aliasedName,
    true,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _timeOfDayMeta = const VerificationMeta(
    'timeOfDay',
  );
  @override
  late final GeneratedColumn<String> timeOfDay = GeneratedColumn<String>(
    'time_of_day',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _conditionsJsonMeta = const VerificationMeta(
    'conditionsJson',
  );
  @override
  late final GeneratedColumn<String> conditionsJson = GeneratedColumn<String>(
    'conditions_json',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  @override
  List<GeneratedColumn> get $columns => [
    fromSpeciesId,
    toSpeciesId,
    trigger,
    minLevel,
    itemName,
    minHappiness,
    timeOfDay,
    conditionsJson,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'evolution_links';
  @override
  VerificationContext validateIntegrity(
    Insertable<EvolutionLink> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('from_species_id')) {
      context.handle(
        _fromSpeciesIdMeta,
        fromSpeciesId.isAcceptableOrUnknown(
          data['from_species_id']!,
          _fromSpeciesIdMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_fromSpeciesIdMeta);
    }
    if (data.containsKey('to_species_id')) {
      context.handle(
        _toSpeciesIdMeta,
        toSpeciesId.isAcceptableOrUnknown(
          data['to_species_id']!,
          _toSpeciesIdMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_toSpeciesIdMeta);
    }
    if (data.containsKey('trigger')) {
      context.handle(
        _triggerMeta,
        trigger.isAcceptableOrUnknown(data['trigger']!, _triggerMeta),
      );
    } else if (isInserting) {
      context.missing(_triggerMeta);
    }
    if (data.containsKey('min_level')) {
      context.handle(
        _minLevelMeta,
        minLevel.isAcceptableOrUnknown(data['min_level']!, _minLevelMeta),
      );
    }
    if (data.containsKey('item_name')) {
      context.handle(
        _itemNameMeta,
        itemName.isAcceptableOrUnknown(data['item_name']!, _itemNameMeta),
      );
    }
    if (data.containsKey('min_happiness')) {
      context.handle(
        _minHappinessMeta,
        minHappiness.isAcceptableOrUnknown(
          data['min_happiness']!,
          _minHappinessMeta,
        ),
      );
    }
    if (data.containsKey('time_of_day')) {
      context.handle(
        _timeOfDayMeta,
        timeOfDay.isAcceptableOrUnknown(data['time_of_day']!, _timeOfDayMeta),
      );
    }
    if (data.containsKey('conditions_json')) {
      context.handle(
        _conditionsJsonMeta,
        conditionsJson.isAcceptableOrUnknown(
          data['conditions_json']!,
          _conditionsJsonMeta,
        ),
      );
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {fromSpeciesId, toSpeciesId};
  @override
  EvolutionLink map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return EvolutionLink(
      fromSpeciesId: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}from_species_id'],
      )!,
      toSpeciesId: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}to_species_id'],
      )!,
      trigger: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}trigger'],
      )!,
      minLevel: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}min_level'],
      ),
      itemName: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}item_name'],
      ),
      minHappiness: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}min_happiness'],
      ),
      timeOfDay: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}time_of_day'],
      ),
      conditionsJson: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}conditions_json'],
      ),
    );
  }

  @override
  $EvolutionLinksTable createAlias(String alias) {
    return $EvolutionLinksTable(attachedDatabase, alias);
  }
}

class EvolutionLink extends DataClass implements Insertable<EvolutionLink> {
  final int fromSpeciesId;
  final int toSpeciesId;
  final String trigger;
  final int? minLevel;
  final String? itemName;
  final int? minHappiness;
  final String? timeOfDay;
  final String? conditionsJson;
  const EvolutionLink({
    required this.fromSpeciesId,
    required this.toSpeciesId,
    required this.trigger,
    this.minLevel,
    this.itemName,
    this.minHappiness,
    this.timeOfDay,
    this.conditionsJson,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['from_species_id'] = Variable<int>(fromSpeciesId);
    map['to_species_id'] = Variable<int>(toSpeciesId);
    map['trigger'] = Variable<String>(trigger);
    if (!nullToAbsent || minLevel != null) {
      map['min_level'] = Variable<int>(minLevel);
    }
    if (!nullToAbsent || itemName != null) {
      map['item_name'] = Variable<String>(itemName);
    }
    if (!nullToAbsent || minHappiness != null) {
      map['min_happiness'] = Variable<int>(minHappiness);
    }
    if (!nullToAbsent || timeOfDay != null) {
      map['time_of_day'] = Variable<String>(timeOfDay);
    }
    if (!nullToAbsent || conditionsJson != null) {
      map['conditions_json'] = Variable<String>(conditionsJson);
    }
    return map;
  }

  EvolutionLinksCompanion toCompanion(bool nullToAbsent) {
    return EvolutionLinksCompanion(
      fromSpeciesId: Value(fromSpeciesId),
      toSpeciesId: Value(toSpeciesId),
      trigger: Value(trigger),
      minLevel: minLevel == null && nullToAbsent
          ? const Value.absent()
          : Value(minLevel),
      itemName: itemName == null && nullToAbsent
          ? const Value.absent()
          : Value(itemName),
      minHappiness: minHappiness == null && nullToAbsent
          ? const Value.absent()
          : Value(minHappiness),
      timeOfDay: timeOfDay == null && nullToAbsent
          ? const Value.absent()
          : Value(timeOfDay),
      conditionsJson: conditionsJson == null && nullToAbsent
          ? const Value.absent()
          : Value(conditionsJson),
    );
  }

  factory EvolutionLink.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return EvolutionLink(
      fromSpeciesId: serializer.fromJson<int>(json['fromSpeciesId']),
      toSpeciesId: serializer.fromJson<int>(json['toSpeciesId']),
      trigger: serializer.fromJson<String>(json['trigger']),
      minLevel: serializer.fromJson<int?>(json['minLevel']),
      itemName: serializer.fromJson<String?>(json['itemName']),
      minHappiness: serializer.fromJson<int?>(json['minHappiness']),
      timeOfDay: serializer.fromJson<String?>(json['timeOfDay']),
      conditionsJson: serializer.fromJson<String?>(json['conditionsJson']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'fromSpeciesId': serializer.toJson<int>(fromSpeciesId),
      'toSpeciesId': serializer.toJson<int>(toSpeciesId),
      'trigger': serializer.toJson<String>(trigger),
      'minLevel': serializer.toJson<int?>(minLevel),
      'itemName': serializer.toJson<String?>(itemName),
      'minHappiness': serializer.toJson<int?>(minHappiness),
      'timeOfDay': serializer.toJson<String?>(timeOfDay),
      'conditionsJson': serializer.toJson<String?>(conditionsJson),
    };
  }

  EvolutionLink copyWith({
    int? fromSpeciesId,
    int? toSpeciesId,
    String? trigger,
    Value<int?> minLevel = const Value.absent(),
    Value<String?> itemName = const Value.absent(),
    Value<int?> minHappiness = const Value.absent(),
    Value<String?> timeOfDay = const Value.absent(),
    Value<String?> conditionsJson = const Value.absent(),
  }) => EvolutionLink(
    fromSpeciesId: fromSpeciesId ?? this.fromSpeciesId,
    toSpeciesId: toSpeciesId ?? this.toSpeciesId,
    trigger: trigger ?? this.trigger,
    minLevel: minLevel.present ? minLevel.value : this.minLevel,
    itemName: itemName.present ? itemName.value : this.itemName,
    minHappiness: minHappiness.present ? minHappiness.value : this.minHappiness,
    timeOfDay: timeOfDay.present ? timeOfDay.value : this.timeOfDay,
    conditionsJson: conditionsJson.present
        ? conditionsJson.value
        : this.conditionsJson,
  );
  EvolutionLink copyWithCompanion(EvolutionLinksCompanion data) {
    return EvolutionLink(
      fromSpeciesId: data.fromSpeciesId.present
          ? data.fromSpeciesId.value
          : this.fromSpeciesId,
      toSpeciesId: data.toSpeciesId.present
          ? data.toSpeciesId.value
          : this.toSpeciesId,
      trigger: data.trigger.present ? data.trigger.value : this.trigger,
      minLevel: data.minLevel.present ? data.minLevel.value : this.minLevel,
      itemName: data.itemName.present ? data.itemName.value : this.itemName,
      minHappiness: data.minHappiness.present
          ? data.minHappiness.value
          : this.minHappiness,
      timeOfDay: data.timeOfDay.present ? data.timeOfDay.value : this.timeOfDay,
      conditionsJson: data.conditionsJson.present
          ? data.conditionsJson.value
          : this.conditionsJson,
    );
  }

  @override
  String toString() {
    return (StringBuffer('EvolutionLink(')
          ..write('fromSpeciesId: $fromSpeciesId, ')
          ..write('toSpeciesId: $toSpeciesId, ')
          ..write('trigger: $trigger, ')
          ..write('minLevel: $minLevel, ')
          ..write('itemName: $itemName, ')
          ..write('minHappiness: $minHappiness, ')
          ..write('timeOfDay: $timeOfDay, ')
          ..write('conditionsJson: $conditionsJson')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
    fromSpeciesId,
    toSpeciesId,
    trigger,
    minLevel,
    itemName,
    minHappiness,
    timeOfDay,
    conditionsJson,
  );
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is EvolutionLink &&
          other.fromSpeciesId == this.fromSpeciesId &&
          other.toSpeciesId == this.toSpeciesId &&
          other.trigger == this.trigger &&
          other.minLevel == this.minLevel &&
          other.itemName == this.itemName &&
          other.minHappiness == this.minHappiness &&
          other.timeOfDay == this.timeOfDay &&
          other.conditionsJson == this.conditionsJson);
}

class EvolutionLinksCompanion extends UpdateCompanion<EvolutionLink> {
  final Value<int> fromSpeciesId;
  final Value<int> toSpeciesId;
  final Value<String> trigger;
  final Value<int?> minLevel;
  final Value<String?> itemName;
  final Value<int?> minHappiness;
  final Value<String?> timeOfDay;
  final Value<String?> conditionsJson;
  final Value<int> rowid;
  const EvolutionLinksCompanion({
    this.fromSpeciesId = const Value.absent(),
    this.toSpeciesId = const Value.absent(),
    this.trigger = const Value.absent(),
    this.minLevel = const Value.absent(),
    this.itemName = const Value.absent(),
    this.minHappiness = const Value.absent(),
    this.timeOfDay = const Value.absent(),
    this.conditionsJson = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  EvolutionLinksCompanion.insert({
    required int fromSpeciesId,
    required int toSpeciesId,
    required String trigger,
    this.minLevel = const Value.absent(),
    this.itemName = const Value.absent(),
    this.minHappiness = const Value.absent(),
    this.timeOfDay = const Value.absent(),
    this.conditionsJson = const Value.absent(),
    this.rowid = const Value.absent(),
  }) : fromSpeciesId = Value(fromSpeciesId),
       toSpeciesId = Value(toSpeciesId),
       trigger = Value(trigger);
  static Insertable<EvolutionLink> custom({
    Expression<int>? fromSpeciesId,
    Expression<int>? toSpeciesId,
    Expression<String>? trigger,
    Expression<int>? minLevel,
    Expression<String>? itemName,
    Expression<int>? minHappiness,
    Expression<String>? timeOfDay,
    Expression<String>? conditionsJson,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (fromSpeciesId != null) 'from_species_id': fromSpeciesId,
      if (toSpeciesId != null) 'to_species_id': toSpeciesId,
      if (trigger != null) 'trigger': trigger,
      if (minLevel != null) 'min_level': minLevel,
      if (itemName != null) 'item_name': itemName,
      if (minHappiness != null) 'min_happiness': minHappiness,
      if (timeOfDay != null) 'time_of_day': timeOfDay,
      if (conditionsJson != null) 'conditions_json': conditionsJson,
      if (rowid != null) 'rowid': rowid,
    });
  }

  EvolutionLinksCompanion copyWith({
    Value<int>? fromSpeciesId,
    Value<int>? toSpeciesId,
    Value<String>? trigger,
    Value<int?>? minLevel,
    Value<String?>? itemName,
    Value<int?>? minHappiness,
    Value<String?>? timeOfDay,
    Value<String?>? conditionsJson,
    Value<int>? rowid,
  }) {
    return EvolutionLinksCompanion(
      fromSpeciesId: fromSpeciesId ?? this.fromSpeciesId,
      toSpeciesId: toSpeciesId ?? this.toSpeciesId,
      trigger: trigger ?? this.trigger,
      minLevel: minLevel ?? this.minLevel,
      itemName: itemName ?? this.itemName,
      minHappiness: minHappiness ?? this.minHappiness,
      timeOfDay: timeOfDay ?? this.timeOfDay,
      conditionsJson: conditionsJson ?? this.conditionsJson,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (fromSpeciesId.present) {
      map['from_species_id'] = Variable<int>(fromSpeciesId.value);
    }
    if (toSpeciesId.present) {
      map['to_species_id'] = Variable<int>(toSpeciesId.value);
    }
    if (trigger.present) {
      map['trigger'] = Variable<String>(trigger.value);
    }
    if (minLevel.present) {
      map['min_level'] = Variable<int>(minLevel.value);
    }
    if (itemName.present) {
      map['item_name'] = Variable<String>(itemName.value);
    }
    if (minHappiness.present) {
      map['min_happiness'] = Variable<int>(minHappiness.value);
    }
    if (timeOfDay.present) {
      map['time_of_day'] = Variable<String>(timeOfDay.value);
    }
    if (conditionsJson.present) {
      map['conditions_json'] = Variable<String>(conditionsJson.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('EvolutionLinksCompanion(')
          ..write('fromSpeciesId: $fromSpeciesId, ')
          ..write('toSpeciesId: $toSpeciesId, ')
          ..write('trigger: $trigger, ')
          ..write('minLevel: $minLevel, ')
          ..write('itemName: $itemName, ')
          ..write('minHappiness: $minHappiness, ')
          ..write('timeOfDay: $timeOfDay, ')
          ..write('conditionsJson: $conditionsJson, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $EggGroupsTable extends EggGroups
    with TableInfo<$EggGroupsTable, EggGroup> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $EggGroupsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
    'id',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _nameMeta = const VerificationMeta('name');
  @override
  late final GeneratedColumn<String> name = GeneratedColumn<String>(
    'name',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  @override
  List<GeneratedColumn> get $columns => [id, name];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'egg_groups';
  @override
  VerificationContext validateIntegrity(
    Insertable<EggGroup> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('name')) {
      context.handle(
        _nameMeta,
        name.isAcceptableOrUnknown(data['name']!, _nameMeta),
      );
    } else if (isInserting) {
      context.missing(_nameMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  EggGroup map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return EggGroup(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}id'],
      )!,
      name: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}name'],
      )!,
    );
  }

  @override
  $EggGroupsTable createAlias(String alias) {
    return $EggGroupsTable(attachedDatabase, alias);
  }
}

class EggGroup extends DataClass implements Insertable<EggGroup> {
  final int id;
  final String name;
  const EggGroup({required this.id, required this.name});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['name'] = Variable<String>(name);
    return map;
  }

  EggGroupsCompanion toCompanion(bool nullToAbsent) {
    return EggGroupsCompanion(id: Value(id), name: Value(name));
  }

  factory EggGroup.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return EggGroup(
      id: serializer.fromJson<int>(json['id']),
      name: serializer.fromJson<String>(json['name']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'name': serializer.toJson<String>(name),
    };
  }

  EggGroup copyWith({int? id, String? name}) =>
      EggGroup(id: id ?? this.id, name: name ?? this.name);
  EggGroup copyWithCompanion(EggGroupsCompanion data) {
    return EggGroup(
      id: data.id.present ? data.id.value : this.id,
      name: data.name.present ? data.name.value : this.name,
    );
  }

  @override
  String toString() {
    return (StringBuffer('EggGroup(')
          ..write('id: $id, ')
          ..write('name: $name')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, name);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is EggGroup && other.id == this.id && other.name == this.name);
}

class EggGroupsCompanion extends UpdateCompanion<EggGroup> {
  final Value<int> id;
  final Value<String> name;
  const EggGroupsCompanion({
    this.id = const Value.absent(),
    this.name = const Value.absent(),
  });
  EggGroupsCompanion.insert({
    this.id = const Value.absent(),
    required String name,
  }) : name = Value(name);
  static Insertable<EggGroup> custom({
    Expression<int>? id,
    Expression<String>? name,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (name != null) 'name': name,
    });
  }

  EggGroupsCompanion copyWith({Value<int>? id, Value<String>? name}) {
    return EggGroupsCompanion(id: id ?? this.id, name: name ?? this.name);
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('EggGroupsCompanion(')
          ..write('id: $id, ')
          ..write('name: $name')
          ..write(')'))
        .toString();
  }
}

class $SpeciesEggGroupsTable extends SpeciesEggGroups
    with TableInfo<$SpeciesEggGroupsTable, SpeciesEggGroup> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $SpeciesEggGroupsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _speciesIdMeta = const VerificationMeta(
    'speciesId',
  );
  @override
  late final GeneratedColumn<int> speciesId = GeneratedColumn<int>(
    'species_id',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'REFERENCES pokemon_species (id)',
    ),
  );
  static const VerificationMeta _eggGroupIdMeta = const VerificationMeta(
    'eggGroupId',
  );
  @override
  late final GeneratedColumn<int> eggGroupId = GeneratedColumn<int>(
    'egg_group_id',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'REFERENCES egg_groups (id)',
    ),
  );
  @override
  List<GeneratedColumn> get $columns => [speciesId, eggGroupId];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'species_egg_groups';
  @override
  VerificationContext validateIntegrity(
    Insertable<SpeciesEggGroup> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('species_id')) {
      context.handle(
        _speciesIdMeta,
        speciesId.isAcceptableOrUnknown(data['species_id']!, _speciesIdMeta),
      );
    } else if (isInserting) {
      context.missing(_speciesIdMeta);
    }
    if (data.containsKey('egg_group_id')) {
      context.handle(
        _eggGroupIdMeta,
        eggGroupId.isAcceptableOrUnknown(
          data['egg_group_id']!,
          _eggGroupIdMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_eggGroupIdMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {speciesId, eggGroupId};
  @override
  SpeciesEggGroup map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return SpeciesEggGroup(
      speciesId: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}species_id'],
      )!,
      eggGroupId: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}egg_group_id'],
      )!,
    );
  }

  @override
  $SpeciesEggGroupsTable createAlias(String alias) {
    return $SpeciesEggGroupsTable(attachedDatabase, alias);
  }
}

class SpeciesEggGroup extends DataClass implements Insertable<SpeciesEggGroup> {
  final int speciesId;
  final int eggGroupId;
  const SpeciesEggGroup({required this.speciesId, required this.eggGroupId});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['species_id'] = Variable<int>(speciesId);
    map['egg_group_id'] = Variable<int>(eggGroupId);
    return map;
  }

  SpeciesEggGroupsCompanion toCompanion(bool nullToAbsent) {
    return SpeciesEggGroupsCompanion(
      speciesId: Value(speciesId),
      eggGroupId: Value(eggGroupId),
    );
  }

  factory SpeciesEggGroup.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return SpeciesEggGroup(
      speciesId: serializer.fromJson<int>(json['speciesId']),
      eggGroupId: serializer.fromJson<int>(json['eggGroupId']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'speciesId': serializer.toJson<int>(speciesId),
      'eggGroupId': serializer.toJson<int>(eggGroupId),
    };
  }

  SpeciesEggGroup copyWith({int? speciesId, int? eggGroupId}) =>
      SpeciesEggGroup(
        speciesId: speciesId ?? this.speciesId,
        eggGroupId: eggGroupId ?? this.eggGroupId,
      );
  SpeciesEggGroup copyWithCompanion(SpeciesEggGroupsCompanion data) {
    return SpeciesEggGroup(
      speciesId: data.speciesId.present ? data.speciesId.value : this.speciesId,
      eggGroupId: data.eggGroupId.present
          ? data.eggGroupId.value
          : this.eggGroupId,
    );
  }

  @override
  String toString() {
    return (StringBuffer('SpeciesEggGroup(')
          ..write('speciesId: $speciesId, ')
          ..write('eggGroupId: $eggGroupId')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(speciesId, eggGroupId);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is SpeciesEggGroup &&
          other.speciesId == this.speciesId &&
          other.eggGroupId == this.eggGroupId);
}

class SpeciesEggGroupsCompanion extends UpdateCompanion<SpeciesEggGroup> {
  final Value<int> speciesId;
  final Value<int> eggGroupId;
  final Value<int> rowid;
  const SpeciesEggGroupsCompanion({
    this.speciesId = const Value.absent(),
    this.eggGroupId = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  SpeciesEggGroupsCompanion.insert({
    required int speciesId,
    required int eggGroupId,
    this.rowid = const Value.absent(),
  }) : speciesId = Value(speciesId),
       eggGroupId = Value(eggGroupId);
  static Insertable<SpeciesEggGroup> custom({
    Expression<int>? speciesId,
    Expression<int>? eggGroupId,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (speciesId != null) 'species_id': speciesId,
      if (eggGroupId != null) 'egg_group_id': eggGroupId,
      if (rowid != null) 'rowid': rowid,
    });
  }

  SpeciesEggGroupsCompanion copyWith({
    Value<int>? speciesId,
    Value<int>? eggGroupId,
    Value<int>? rowid,
  }) {
    return SpeciesEggGroupsCompanion(
      speciesId: speciesId ?? this.speciesId,
      eggGroupId: eggGroupId ?? this.eggGroupId,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (speciesId.present) {
      map['species_id'] = Variable<int>(speciesId.value);
    }
    if (eggGroupId.present) {
      map['egg_group_id'] = Variable<int>(eggGroupId.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('SpeciesEggGroupsCompanion(')
          ..write('speciesId: $speciesId, ')
          ..write('eggGroupId: $eggGroupId, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $TypeEfficacyTable extends TypeEfficacy
    with TableInfo<$TypeEfficacyTable, TypeEfficacyData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $TypeEfficacyTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _attackingTypeIdMeta = const VerificationMeta(
    'attackingTypeId',
  );
  @override
  late final GeneratedColumn<int> attackingTypeId = GeneratedColumn<int>(
    'attacking_type_id',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'REFERENCES types (id)',
    ),
  );
  static const VerificationMeta _defendingTypeIdMeta = const VerificationMeta(
    'defendingTypeId',
  );
  @override
  late final GeneratedColumn<int> defendingTypeId = GeneratedColumn<int>(
    'defending_type_id',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'REFERENCES types (id)',
    ),
  );
  static const VerificationMeta _damageFactorMeta = const VerificationMeta(
    'damageFactor',
  );
  @override
  late final GeneratedColumn<int> damageFactor = GeneratedColumn<int>(
    'damage_factor',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
  );
  @override
  List<GeneratedColumn> get $columns => [
    attackingTypeId,
    defendingTypeId,
    damageFactor,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'type_efficacy';
  @override
  VerificationContext validateIntegrity(
    Insertable<TypeEfficacyData> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('attacking_type_id')) {
      context.handle(
        _attackingTypeIdMeta,
        attackingTypeId.isAcceptableOrUnknown(
          data['attacking_type_id']!,
          _attackingTypeIdMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_attackingTypeIdMeta);
    }
    if (data.containsKey('defending_type_id')) {
      context.handle(
        _defendingTypeIdMeta,
        defendingTypeId.isAcceptableOrUnknown(
          data['defending_type_id']!,
          _defendingTypeIdMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_defendingTypeIdMeta);
    }
    if (data.containsKey('damage_factor')) {
      context.handle(
        _damageFactorMeta,
        damageFactor.isAcceptableOrUnknown(
          data['damage_factor']!,
          _damageFactorMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_damageFactorMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {attackingTypeId, defendingTypeId};
  @override
  TypeEfficacyData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return TypeEfficacyData(
      attackingTypeId: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}attacking_type_id'],
      )!,
      defendingTypeId: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}defending_type_id'],
      )!,
      damageFactor: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}damage_factor'],
      )!,
    );
  }

  @override
  $TypeEfficacyTable createAlias(String alias) {
    return $TypeEfficacyTable(attachedDatabase, alias);
  }
}

class TypeEfficacyData extends DataClass
    implements Insertable<TypeEfficacyData> {
  final int attackingTypeId;
  final int defendingTypeId;
  final int damageFactor;
  const TypeEfficacyData({
    required this.attackingTypeId,
    required this.defendingTypeId,
    required this.damageFactor,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['attacking_type_id'] = Variable<int>(attackingTypeId);
    map['defending_type_id'] = Variable<int>(defendingTypeId);
    map['damage_factor'] = Variable<int>(damageFactor);
    return map;
  }

  TypeEfficacyCompanion toCompanion(bool nullToAbsent) {
    return TypeEfficacyCompanion(
      attackingTypeId: Value(attackingTypeId),
      defendingTypeId: Value(defendingTypeId),
      damageFactor: Value(damageFactor),
    );
  }

  factory TypeEfficacyData.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return TypeEfficacyData(
      attackingTypeId: serializer.fromJson<int>(json['attackingTypeId']),
      defendingTypeId: serializer.fromJson<int>(json['defendingTypeId']),
      damageFactor: serializer.fromJson<int>(json['damageFactor']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'attackingTypeId': serializer.toJson<int>(attackingTypeId),
      'defendingTypeId': serializer.toJson<int>(defendingTypeId),
      'damageFactor': serializer.toJson<int>(damageFactor),
    };
  }

  TypeEfficacyData copyWith({
    int? attackingTypeId,
    int? defendingTypeId,
    int? damageFactor,
  }) => TypeEfficacyData(
    attackingTypeId: attackingTypeId ?? this.attackingTypeId,
    defendingTypeId: defendingTypeId ?? this.defendingTypeId,
    damageFactor: damageFactor ?? this.damageFactor,
  );
  TypeEfficacyData copyWithCompanion(TypeEfficacyCompanion data) {
    return TypeEfficacyData(
      attackingTypeId: data.attackingTypeId.present
          ? data.attackingTypeId.value
          : this.attackingTypeId,
      defendingTypeId: data.defendingTypeId.present
          ? data.defendingTypeId.value
          : this.defendingTypeId,
      damageFactor: data.damageFactor.present
          ? data.damageFactor.value
          : this.damageFactor,
    );
  }

  @override
  String toString() {
    return (StringBuffer('TypeEfficacyData(')
          ..write('attackingTypeId: $attackingTypeId, ')
          ..write('defendingTypeId: $defendingTypeId, ')
          ..write('damageFactor: $damageFactor')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode =>
      Object.hash(attackingTypeId, defendingTypeId, damageFactor);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is TypeEfficacyData &&
          other.attackingTypeId == this.attackingTypeId &&
          other.defendingTypeId == this.defendingTypeId &&
          other.damageFactor == this.damageFactor);
}

class TypeEfficacyCompanion extends UpdateCompanion<TypeEfficacyData> {
  final Value<int> attackingTypeId;
  final Value<int> defendingTypeId;
  final Value<int> damageFactor;
  final Value<int> rowid;
  const TypeEfficacyCompanion({
    this.attackingTypeId = const Value.absent(),
    this.defendingTypeId = const Value.absent(),
    this.damageFactor = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  TypeEfficacyCompanion.insert({
    required int attackingTypeId,
    required int defendingTypeId,
    required int damageFactor,
    this.rowid = const Value.absent(),
  }) : attackingTypeId = Value(attackingTypeId),
       defendingTypeId = Value(defendingTypeId),
       damageFactor = Value(damageFactor);
  static Insertable<TypeEfficacyData> custom({
    Expression<int>? attackingTypeId,
    Expression<int>? defendingTypeId,
    Expression<int>? damageFactor,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (attackingTypeId != null) 'attacking_type_id': attackingTypeId,
      if (defendingTypeId != null) 'defending_type_id': defendingTypeId,
      if (damageFactor != null) 'damage_factor': damageFactor,
      if (rowid != null) 'rowid': rowid,
    });
  }

  TypeEfficacyCompanion copyWith({
    Value<int>? attackingTypeId,
    Value<int>? defendingTypeId,
    Value<int>? damageFactor,
    Value<int>? rowid,
  }) {
    return TypeEfficacyCompanion(
      attackingTypeId: attackingTypeId ?? this.attackingTypeId,
      defendingTypeId: defendingTypeId ?? this.defendingTypeId,
      damageFactor: damageFactor ?? this.damageFactor,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (attackingTypeId.present) {
      map['attacking_type_id'] = Variable<int>(attackingTypeId.value);
    }
    if (defendingTypeId.present) {
      map['defending_type_id'] = Variable<int>(defendingTypeId.value);
    }
    if (damageFactor.present) {
      map['damage_factor'] = Variable<int>(damageFactor.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('TypeEfficacyCompanion(')
          ..write('attackingTypeId: $attackingTypeId, ')
          ..write('defendingTypeId: $defendingTypeId, ')
          ..write('damageFactor: $damageFactor, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $PokemonGameAppearancesTable extends PokemonGameAppearances
    with TableInfo<$PokemonGameAppearancesTable, PokemonGameAppearance> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $PokemonGameAppearancesTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _pokemonIdMeta = const VerificationMeta(
    'pokemonId',
  );
  @override
  late final GeneratedColumn<int> pokemonId = GeneratedColumn<int>(
    'pokemon_id',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'REFERENCES pokemons (id)',
    ),
  );
  static const VerificationMeta _versionIdMeta = const VerificationMeta(
    'versionId',
  );
  @override
  late final GeneratedColumn<int> versionId = GeneratedColumn<int>(
    'version_id',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _versionNameMeta = const VerificationMeta(
    'versionName',
  );
  @override
  late final GeneratedColumn<String> versionName = GeneratedColumn<String>(
    'version_name',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _regionNameMeta = const VerificationMeta(
    'regionName',
  );
  @override
  late final GeneratedColumn<String> regionName = GeneratedColumn<String>(
    'region_name',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  @override
  List<GeneratedColumn> get $columns => [
    pokemonId,
    versionId,
    versionName,
    regionName,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'pokemon_game_appearances';
  @override
  VerificationContext validateIntegrity(
    Insertable<PokemonGameAppearance> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('pokemon_id')) {
      context.handle(
        _pokemonIdMeta,
        pokemonId.isAcceptableOrUnknown(data['pokemon_id']!, _pokemonIdMeta),
      );
    } else if (isInserting) {
      context.missing(_pokemonIdMeta);
    }
    if (data.containsKey('version_id')) {
      context.handle(
        _versionIdMeta,
        versionId.isAcceptableOrUnknown(data['version_id']!, _versionIdMeta),
      );
    } else if (isInserting) {
      context.missing(_versionIdMeta);
    }
    if (data.containsKey('version_name')) {
      context.handle(
        _versionNameMeta,
        versionName.isAcceptableOrUnknown(
          data['version_name']!,
          _versionNameMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_versionNameMeta);
    }
    if (data.containsKey('region_name')) {
      context.handle(
        _regionNameMeta,
        regionName.isAcceptableOrUnknown(data['region_name']!, _regionNameMeta),
      );
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {pokemonId, versionId};
  @override
  PokemonGameAppearance map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return PokemonGameAppearance(
      pokemonId: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}pokemon_id'],
      )!,
      versionId: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}version_id'],
      )!,
      versionName: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}version_name'],
      )!,
      regionName: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}region_name'],
      ),
    );
  }

  @override
  $PokemonGameAppearancesTable createAlias(String alias) {
    return $PokemonGameAppearancesTable(attachedDatabase, alias);
  }
}

class PokemonGameAppearance extends DataClass
    implements Insertable<PokemonGameAppearance> {
  final int pokemonId;
  final int versionId;
  final String versionName;
  final String? regionName;
  const PokemonGameAppearance({
    required this.pokemonId,
    required this.versionId,
    required this.versionName,
    this.regionName,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['pokemon_id'] = Variable<int>(pokemonId);
    map['version_id'] = Variable<int>(versionId);
    map['version_name'] = Variable<String>(versionName);
    if (!nullToAbsent || regionName != null) {
      map['region_name'] = Variable<String>(regionName);
    }
    return map;
  }

  PokemonGameAppearancesCompanion toCompanion(bool nullToAbsent) {
    return PokemonGameAppearancesCompanion(
      pokemonId: Value(pokemonId),
      versionId: Value(versionId),
      versionName: Value(versionName),
      regionName: regionName == null && nullToAbsent
          ? const Value.absent()
          : Value(regionName),
    );
  }

  factory PokemonGameAppearance.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return PokemonGameAppearance(
      pokemonId: serializer.fromJson<int>(json['pokemonId']),
      versionId: serializer.fromJson<int>(json['versionId']),
      versionName: serializer.fromJson<String>(json['versionName']),
      regionName: serializer.fromJson<String?>(json['regionName']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'pokemonId': serializer.toJson<int>(pokemonId),
      'versionId': serializer.toJson<int>(versionId),
      'versionName': serializer.toJson<String>(versionName),
      'regionName': serializer.toJson<String?>(regionName),
    };
  }

  PokemonGameAppearance copyWith({
    int? pokemonId,
    int? versionId,
    String? versionName,
    Value<String?> regionName = const Value.absent(),
  }) => PokemonGameAppearance(
    pokemonId: pokemonId ?? this.pokemonId,
    versionId: versionId ?? this.versionId,
    versionName: versionName ?? this.versionName,
    regionName: regionName.present ? regionName.value : this.regionName,
  );
  PokemonGameAppearance copyWithCompanion(
    PokemonGameAppearancesCompanion data,
  ) {
    return PokemonGameAppearance(
      pokemonId: data.pokemonId.present ? data.pokemonId.value : this.pokemonId,
      versionId: data.versionId.present ? data.versionId.value : this.versionId,
      versionName: data.versionName.present
          ? data.versionName.value
          : this.versionName,
      regionName: data.regionName.present
          ? data.regionName.value
          : this.regionName,
    );
  }

  @override
  String toString() {
    return (StringBuffer('PokemonGameAppearance(')
          ..write('pokemonId: $pokemonId, ')
          ..write('versionId: $versionId, ')
          ..write('versionName: $versionName, ')
          ..write('regionName: $regionName')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode =>
      Object.hash(pokemonId, versionId, versionName, regionName);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is PokemonGameAppearance &&
          other.pokemonId == this.pokemonId &&
          other.versionId == this.versionId &&
          other.versionName == this.versionName &&
          other.regionName == this.regionName);
}

class PokemonGameAppearancesCompanion
    extends UpdateCompanion<PokemonGameAppearance> {
  final Value<int> pokemonId;
  final Value<int> versionId;
  final Value<String> versionName;
  final Value<String?> regionName;
  final Value<int> rowid;
  const PokemonGameAppearancesCompanion({
    this.pokemonId = const Value.absent(),
    this.versionId = const Value.absent(),
    this.versionName = const Value.absent(),
    this.regionName = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  PokemonGameAppearancesCompanion.insert({
    required int pokemonId,
    required int versionId,
    required String versionName,
    this.regionName = const Value.absent(),
    this.rowid = const Value.absent(),
  }) : pokemonId = Value(pokemonId),
       versionId = Value(versionId),
       versionName = Value(versionName);
  static Insertable<PokemonGameAppearance> custom({
    Expression<int>? pokemonId,
    Expression<int>? versionId,
    Expression<String>? versionName,
    Expression<String>? regionName,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (pokemonId != null) 'pokemon_id': pokemonId,
      if (versionId != null) 'version_id': versionId,
      if (versionName != null) 'version_name': versionName,
      if (regionName != null) 'region_name': regionName,
      if (rowid != null) 'rowid': rowid,
    });
  }

  PokemonGameAppearancesCompanion copyWith({
    Value<int>? pokemonId,
    Value<int>? versionId,
    Value<String>? versionName,
    Value<String?>? regionName,
    Value<int>? rowid,
  }) {
    return PokemonGameAppearancesCompanion(
      pokemonId: pokemonId ?? this.pokemonId,
      versionId: versionId ?? this.versionId,
      versionName: versionName ?? this.versionName,
      regionName: regionName ?? this.regionName,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (pokemonId.present) {
      map['pokemon_id'] = Variable<int>(pokemonId.value);
    }
    if (versionId.present) {
      map['version_id'] = Variable<int>(versionId.value);
    }
    if (versionName.present) {
      map['version_name'] = Variable<String>(versionName.value);
    }
    if (regionName.present) {
      map['region_name'] = Variable<String>(regionName.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('PokemonGameAppearancesCompanion(')
          ..write('pokemonId: $pokemonId, ')
          ..write('versionId: $versionId, ')
          ..write('versionName: $versionName, ')
          ..write('regionName: $regionName, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $FavoritesTable extends Favorites
    with TableInfo<$FavoritesTable, Favorite> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $FavoritesTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _pokemonIdMeta = const VerificationMeta(
    'pokemonId',
  );
  @override
  late final GeneratedColumn<int> pokemonId = GeneratedColumn<int>(
    'pokemon_id',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'REFERENCES pokemons (id)',
    ),
  );
  static const VerificationMeta _createdAtMeta = const VerificationMeta(
    'createdAt',
  );
  @override
  late final GeneratedColumn<DateTime> createdAt = GeneratedColumn<DateTime>(
    'created_at',
    aliasedName,
    false,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: true,
  );
  @override
  List<GeneratedColumn> get $columns => [pokemonId, createdAt];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'favorites';
  @override
  VerificationContext validateIntegrity(
    Insertable<Favorite> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('pokemon_id')) {
      context.handle(
        _pokemonIdMeta,
        pokemonId.isAcceptableOrUnknown(data['pokemon_id']!, _pokemonIdMeta),
      );
    }
    if (data.containsKey('created_at')) {
      context.handle(
        _createdAtMeta,
        createdAt.isAcceptableOrUnknown(data['created_at']!, _createdAtMeta),
      );
    } else if (isInserting) {
      context.missing(_createdAtMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {pokemonId};
  @override
  Favorite map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return Favorite(
      pokemonId: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}pokemon_id'],
      )!,
      createdAt: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}created_at'],
      )!,
    );
  }

  @override
  $FavoritesTable createAlias(String alias) {
    return $FavoritesTable(attachedDatabase, alias);
  }
}

class Favorite extends DataClass implements Insertable<Favorite> {
  final int pokemonId;
  final DateTime createdAt;
  const Favorite({required this.pokemonId, required this.createdAt});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['pokemon_id'] = Variable<int>(pokemonId);
    map['created_at'] = Variable<DateTime>(createdAt);
    return map;
  }

  FavoritesCompanion toCompanion(bool nullToAbsent) {
    return FavoritesCompanion(
      pokemonId: Value(pokemonId),
      createdAt: Value(createdAt),
    );
  }

  factory Favorite.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return Favorite(
      pokemonId: serializer.fromJson<int>(json['pokemonId']),
      createdAt: serializer.fromJson<DateTime>(json['createdAt']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'pokemonId': serializer.toJson<int>(pokemonId),
      'createdAt': serializer.toJson<DateTime>(createdAt),
    };
  }

  Favorite copyWith({int? pokemonId, DateTime? createdAt}) => Favorite(
    pokemonId: pokemonId ?? this.pokemonId,
    createdAt: createdAt ?? this.createdAt,
  );
  Favorite copyWithCompanion(FavoritesCompanion data) {
    return Favorite(
      pokemonId: data.pokemonId.present ? data.pokemonId.value : this.pokemonId,
      createdAt: data.createdAt.present ? data.createdAt.value : this.createdAt,
    );
  }

  @override
  String toString() {
    return (StringBuffer('Favorite(')
          ..write('pokemonId: $pokemonId, ')
          ..write('createdAt: $createdAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(pokemonId, createdAt);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Favorite &&
          other.pokemonId == this.pokemonId &&
          other.createdAt == this.createdAt);
}

class FavoritesCompanion extends UpdateCompanion<Favorite> {
  final Value<int> pokemonId;
  final Value<DateTime> createdAt;
  const FavoritesCompanion({
    this.pokemonId = const Value.absent(),
    this.createdAt = const Value.absent(),
  });
  FavoritesCompanion.insert({
    this.pokemonId = const Value.absent(),
    required DateTime createdAt,
  }) : createdAt = Value(createdAt);
  static Insertable<Favorite> custom({
    Expression<int>? pokemonId,
    Expression<DateTime>? createdAt,
  }) {
    return RawValuesInsertable({
      if (pokemonId != null) 'pokemon_id': pokemonId,
      if (createdAt != null) 'created_at': createdAt,
    });
  }

  FavoritesCompanion copyWith({
    Value<int>? pokemonId,
    Value<DateTime>? createdAt,
  }) {
    return FavoritesCompanion(
      pokemonId: pokemonId ?? this.pokemonId,
      createdAt: createdAt ?? this.createdAt,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (pokemonId.present) {
      map['pokemon_id'] = Variable<int>(pokemonId.value);
    }
    if (createdAt.present) {
      map['created_at'] = Variable<DateTime>(createdAt.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('FavoritesCompanion(')
          ..write('pokemonId: $pokemonId, ')
          ..write('createdAt: $createdAt')
          ..write(')'))
        .toString();
  }
}

class $TriviaResultsTable extends TriviaResults
    with TableInfo<$TriviaResultsTable, TriviaResult> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $TriviaResultsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
    'id',
    aliasedName,
    false,
    hasAutoIncrement: true,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'PRIMARY KEY AUTOINCREMENT',
    ),
  );
  static const VerificationMeta _scoreMeta = const VerificationMeta('score');
  @override
  late final GeneratedColumn<int> score = GeneratedColumn<int>(
    'score',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _correctAnswersMeta = const VerificationMeta(
    'correctAnswers',
  );
  @override
  late final GeneratedColumn<int> correctAnswers = GeneratedColumn<int>(
    'correct_answers',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _totalQuestionsMeta = const VerificationMeta(
    'totalQuestions',
  );
  @override
  late final GeneratedColumn<int> totalQuestions = GeneratedColumn<int>(
    'total_questions',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _durationSecondsMeta = const VerificationMeta(
    'durationSeconds',
  );
  @override
  late final GeneratedColumn<int> durationSeconds = GeneratedColumn<int>(
    'duration_seconds',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _playedAtMeta = const VerificationMeta(
    'playedAt',
  );
  @override
  late final GeneratedColumn<DateTime> playedAt = GeneratedColumn<DateTime>(
    'played_at',
    aliasedName,
    false,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _languageMeta = const VerificationMeta(
    'language',
  );
  @override
  late final GeneratedColumn<String> language = GeneratedColumn<String>(
    'language',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  @override
  List<GeneratedColumn> get $columns => [
    id,
    score,
    correctAnswers,
    totalQuestions,
    durationSeconds,
    playedAt,
    language,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'trivia_results';
  @override
  VerificationContext validateIntegrity(
    Insertable<TriviaResult> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('score')) {
      context.handle(
        _scoreMeta,
        score.isAcceptableOrUnknown(data['score']!, _scoreMeta),
      );
    } else if (isInserting) {
      context.missing(_scoreMeta);
    }
    if (data.containsKey('correct_answers')) {
      context.handle(
        _correctAnswersMeta,
        correctAnswers.isAcceptableOrUnknown(
          data['correct_answers']!,
          _correctAnswersMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_correctAnswersMeta);
    }
    if (data.containsKey('total_questions')) {
      context.handle(
        _totalQuestionsMeta,
        totalQuestions.isAcceptableOrUnknown(
          data['total_questions']!,
          _totalQuestionsMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_totalQuestionsMeta);
    }
    if (data.containsKey('duration_seconds')) {
      context.handle(
        _durationSecondsMeta,
        durationSeconds.isAcceptableOrUnknown(
          data['duration_seconds']!,
          _durationSecondsMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_durationSecondsMeta);
    }
    if (data.containsKey('played_at')) {
      context.handle(
        _playedAtMeta,
        playedAt.isAcceptableOrUnknown(data['played_at']!, _playedAtMeta),
      );
    } else if (isInserting) {
      context.missing(_playedAtMeta);
    }
    if (data.containsKey('language')) {
      context.handle(
        _languageMeta,
        language.isAcceptableOrUnknown(data['language']!, _languageMeta),
      );
    } else if (isInserting) {
      context.missing(_languageMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  TriviaResult map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return TriviaResult(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}id'],
      )!,
      score: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}score'],
      )!,
      correctAnswers: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}correct_answers'],
      )!,
      totalQuestions: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}total_questions'],
      )!,
      durationSeconds: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}duration_seconds'],
      )!,
      playedAt: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}played_at'],
      )!,
      language: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}language'],
      )!,
    );
  }

  @override
  $TriviaResultsTable createAlias(String alias) {
    return $TriviaResultsTable(attachedDatabase, alias);
  }
}

class TriviaResult extends DataClass implements Insertable<TriviaResult> {
  final int id;
  final int score;
  final int correctAnswers;
  final int totalQuestions;
  final int durationSeconds;
  final DateTime playedAt;
  final String language;
  const TriviaResult({
    required this.id,
    required this.score,
    required this.correctAnswers,
    required this.totalQuestions,
    required this.durationSeconds,
    required this.playedAt,
    required this.language,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['score'] = Variable<int>(score);
    map['correct_answers'] = Variable<int>(correctAnswers);
    map['total_questions'] = Variable<int>(totalQuestions);
    map['duration_seconds'] = Variable<int>(durationSeconds);
    map['played_at'] = Variable<DateTime>(playedAt);
    map['language'] = Variable<String>(language);
    return map;
  }

  TriviaResultsCompanion toCompanion(bool nullToAbsent) {
    return TriviaResultsCompanion(
      id: Value(id),
      score: Value(score),
      correctAnswers: Value(correctAnswers),
      totalQuestions: Value(totalQuestions),
      durationSeconds: Value(durationSeconds),
      playedAt: Value(playedAt),
      language: Value(language),
    );
  }

  factory TriviaResult.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return TriviaResult(
      id: serializer.fromJson<int>(json['id']),
      score: serializer.fromJson<int>(json['score']),
      correctAnswers: serializer.fromJson<int>(json['correctAnswers']),
      totalQuestions: serializer.fromJson<int>(json['totalQuestions']),
      durationSeconds: serializer.fromJson<int>(json['durationSeconds']),
      playedAt: serializer.fromJson<DateTime>(json['playedAt']),
      language: serializer.fromJson<String>(json['language']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'score': serializer.toJson<int>(score),
      'correctAnswers': serializer.toJson<int>(correctAnswers),
      'totalQuestions': serializer.toJson<int>(totalQuestions),
      'durationSeconds': serializer.toJson<int>(durationSeconds),
      'playedAt': serializer.toJson<DateTime>(playedAt),
      'language': serializer.toJson<String>(language),
    };
  }

  TriviaResult copyWith({
    int? id,
    int? score,
    int? correctAnswers,
    int? totalQuestions,
    int? durationSeconds,
    DateTime? playedAt,
    String? language,
  }) => TriviaResult(
    id: id ?? this.id,
    score: score ?? this.score,
    correctAnswers: correctAnswers ?? this.correctAnswers,
    totalQuestions: totalQuestions ?? this.totalQuestions,
    durationSeconds: durationSeconds ?? this.durationSeconds,
    playedAt: playedAt ?? this.playedAt,
    language: language ?? this.language,
  );
  TriviaResult copyWithCompanion(TriviaResultsCompanion data) {
    return TriviaResult(
      id: data.id.present ? data.id.value : this.id,
      score: data.score.present ? data.score.value : this.score,
      correctAnswers: data.correctAnswers.present
          ? data.correctAnswers.value
          : this.correctAnswers,
      totalQuestions: data.totalQuestions.present
          ? data.totalQuestions.value
          : this.totalQuestions,
      durationSeconds: data.durationSeconds.present
          ? data.durationSeconds.value
          : this.durationSeconds,
      playedAt: data.playedAt.present ? data.playedAt.value : this.playedAt,
      language: data.language.present ? data.language.value : this.language,
    );
  }

  @override
  String toString() {
    return (StringBuffer('TriviaResult(')
          ..write('id: $id, ')
          ..write('score: $score, ')
          ..write('correctAnswers: $correctAnswers, ')
          ..write('totalQuestions: $totalQuestions, ')
          ..write('durationSeconds: $durationSeconds, ')
          ..write('playedAt: $playedAt, ')
          ..write('language: $language')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
    id,
    score,
    correctAnswers,
    totalQuestions,
    durationSeconds,
    playedAt,
    language,
  );
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is TriviaResult &&
          other.id == this.id &&
          other.score == this.score &&
          other.correctAnswers == this.correctAnswers &&
          other.totalQuestions == this.totalQuestions &&
          other.durationSeconds == this.durationSeconds &&
          other.playedAt == this.playedAt &&
          other.language == this.language);
}

class TriviaResultsCompanion extends UpdateCompanion<TriviaResult> {
  final Value<int> id;
  final Value<int> score;
  final Value<int> correctAnswers;
  final Value<int> totalQuestions;
  final Value<int> durationSeconds;
  final Value<DateTime> playedAt;
  final Value<String> language;
  const TriviaResultsCompanion({
    this.id = const Value.absent(),
    this.score = const Value.absent(),
    this.correctAnswers = const Value.absent(),
    this.totalQuestions = const Value.absent(),
    this.durationSeconds = const Value.absent(),
    this.playedAt = const Value.absent(),
    this.language = const Value.absent(),
  });
  TriviaResultsCompanion.insert({
    this.id = const Value.absent(),
    required int score,
    required int correctAnswers,
    required int totalQuestions,
    required int durationSeconds,
    required DateTime playedAt,
    required String language,
  }) : score = Value(score),
       correctAnswers = Value(correctAnswers),
       totalQuestions = Value(totalQuestions),
       durationSeconds = Value(durationSeconds),
       playedAt = Value(playedAt),
       language = Value(language);
  static Insertable<TriviaResult> custom({
    Expression<int>? id,
    Expression<int>? score,
    Expression<int>? correctAnswers,
    Expression<int>? totalQuestions,
    Expression<int>? durationSeconds,
    Expression<DateTime>? playedAt,
    Expression<String>? language,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (score != null) 'score': score,
      if (correctAnswers != null) 'correct_answers': correctAnswers,
      if (totalQuestions != null) 'total_questions': totalQuestions,
      if (durationSeconds != null) 'duration_seconds': durationSeconds,
      if (playedAt != null) 'played_at': playedAt,
      if (language != null) 'language': language,
    });
  }

  TriviaResultsCompanion copyWith({
    Value<int>? id,
    Value<int>? score,
    Value<int>? correctAnswers,
    Value<int>? totalQuestions,
    Value<int>? durationSeconds,
    Value<DateTime>? playedAt,
    Value<String>? language,
  }) {
    return TriviaResultsCompanion(
      id: id ?? this.id,
      score: score ?? this.score,
      correctAnswers: correctAnswers ?? this.correctAnswers,
      totalQuestions: totalQuestions ?? this.totalQuestions,
      durationSeconds: durationSeconds ?? this.durationSeconds,
      playedAt: playedAt ?? this.playedAt,
      language: language ?? this.language,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (score.present) {
      map['score'] = Variable<int>(score.value);
    }
    if (correctAnswers.present) {
      map['correct_answers'] = Variable<int>(correctAnswers.value);
    }
    if (totalQuestions.present) {
      map['total_questions'] = Variable<int>(totalQuestions.value);
    }
    if (durationSeconds.present) {
      map['duration_seconds'] = Variable<int>(durationSeconds.value);
    }
    if (playedAt.present) {
      map['played_at'] = Variable<DateTime>(playedAt.value);
    }
    if (language.present) {
      map['language'] = Variable<String>(language.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('TriviaResultsCompanion(')
          ..write('id: $id, ')
          ..write('score: $score, ')
          ..write('correctAnswers: $correctAnswers, ')
          ..write('totalQuestions: $totalQuestions, ')
          ..write('durationSeconds: $durationSeconds, ')
          ..write('playedAt: $playedAt, ')
          ..write('language: $language')
          ..write(')'))
        .toString();
  }
}

class $AchievementsTable extends Achievements
    with TableInfo<$AchievementsTable, Achievement> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $AchievementsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String> id = GeneratedColumn<String>(
    'id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _titleKeyMeta = const VerificationMeta(
    'titleKey',
  );
  @override
  late final GeneratedColumn<String> titleKey = GeneratedColumn<String>(
    'title_key',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _requiredScoreMeta = const VerificationMeta(
    'requiredScore',
  );
  @override
  late final GeneratedColumn<int> requiredScore = GeneratedColumn<int>(
    'required_score',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
  );
  @override
  List<GeneratedColumn> get $columns => [id, titleKey, requiredScore];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'achievements';
  @override
  VerificationContext validateIntegrity(
    Insertable<Achievement> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('title_key')) {
      context.handle(
        _titleKeyMeta,
        titleKey.isAcceptableOrUnknown(data['title_key']!, _titleKeyMeta),
      );
    } else if (isInserting) {
      context.missing(_titleKeyMeta);
    }
    if (data.containsKey('required_score')) {
      context.handle(
        _requiredScoreMeta,
        requiredScore.isAcceptableOrUnknown(
          data['required_score']!,
          _requiredScoreMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_requiredScoreMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  Achievement map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return Achievement(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}id'],
      )!,
      titleKey: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}title_key'],
      )!,
      requiredScore: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}required_score'],
      )!,
    );
  }

  @override
  $AchievementsTable createAlias(String alias) {
    return $AchievementsTable(attachedDatabase, alias);
  }
}

class Achievement extends DataClass implements Insertable<Achievement> {
  final String id;
  final String titleKey;
  final int requiredScore;
  const Achievement({
    required this.id,
    required this.titleKey,
    required this.requiredScore,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<String>(id);
    map['title_key'] = Variable<String>(titleKey);
    map['required_score'] = Variable<int>(requiredScore);
    return map;
  }

  AchievementsCompanion toCompanion(bool nullToAbsent) {
    return AchievementsCompanion(
      id: Value(id),
      titleKey: Value(titleKey),
      requiredScore: Value(requiredScore),
    );
  }

  factory Achievement.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return Achievement(
      id: serializer.fromJson<String>(json['id']),
      titleKey: serializer.fromJson<String>(json['titleKey']),
      requiredScore: serializer.fromJson<int>(json['requiredScore']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'titleKey': serializer.toJson<String>(titleKey),
      'requiredScore': serializer.toJson<int>(requiredScore),
    };
  }

  Achievement copyWith({String? id, String? titleKey, int? requiredScore}) =>
      Achievement(
        id: id ?? this.id,
        titleKey: titleKey ?? this.titleKey,
        requiredScore: requiredScore ?? this.requiredScore,
      );
  Achievement copyWithCompanion(AchievementsCompanion data) {
    return Achievement(
      id: data.id.present ? data.id.value : this.id,
      titleKey: data.titleKey.present ? data.titleKey.value : this.titleKey,
      requiredScore: data.requiredScore.present
          ? data.requiredScore.value
          : this.requiredScore,
    );
  }

  @override
  String toString() {
    return (StringBuffer('Achievement(')
          ..write('id: $id, ')
          ..write('titleKey: $titleKey, ')
          ..write('requiredScore: $requiredScore')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, titleKey, requiredScore);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Achievement &&
          other.id == this.id &&
          other.titleKey == this.titleKey &&
          other.requiredScore == this.requiredScore);
}

class AchievementsCompanion extends UpdateCompanion<Achievement> {
  final Value<String> id;
  final Value<String> titleKey;
  final Value<int> requiredScore;
  final Value<int> rowid;
  const AchievementsCompanion({
    this.id = const Value.absent(),
    this.titleKey = const Value.absent(),
    this.requiredScore = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  AchievementsCompanion.insert({
    required String id,
    required String titleKey,
    required int requiredScore,
    this.rowid = const Value.absent(),
  }) : id = Value(id),
       titleKey = Value(titleKey),
       requiredScore = Value(requiredScore);
  static Insertable<Achievement> custom({
    Expression<String>? id,
    Expression<String>? titleKey,
    Expression<int>? requiredScore,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (titleKey != null) 'title_key': titleKey,
      if (requiredScore != null) 'required_score': requiredScore,
      if (rowid != null) 'rowid': rowid,
    });
  }

  AchievementsCompanion copyWith({
    Value<String>? id,
    Value<String>? titleKey,
    Value<int>? requiredScore,
    Value<int>? rowid,
  }) {
    return AchievementsCompanion(
      id: id ?? this.id,
      titleKey: titleKey ?? this.titleKey,
      requiredScore: requiredScore ?? this.requiredScore,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (titleKey.present) {
      map['title_key'] = Variable<String>(titleKey.value);
    }
    if (requiredScore.present) {
      map['required_score'] = Variable<int>(requiredScore.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('AchievementsCompanion(')
          ..write('id: $id, ')
          ..write('titleKey: $titleKey, ')
          ..write('requiredScore: $requiredScore, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $UnlockedAchievementsTable extends UnlockedAchievements
    with TableInfo<$UnlockedAchievementsTable, UnlockedAchievement> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $UnlockedAchievementsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _achievementIdMeta = const VerificationMeta(
    'achievementId',
  );
  @override
  late final GeneratedColumn<String> achievementId = GeneratedColumn<String>(
    'achievement_id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'REFERENCES achievements (id)',
    ),
  );
  static const VerificationMeta _unlockedAtMeta = const VerificationMeta(
    'unlockedAt',
  );
  @override
  late final GeneratedColumn<DateTime> unlockedAt = GeneratedColumn<DateTime>(
    'unlocked_at',
    aliasedName,
    false,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: true,
  );
  @override
  List<GeneratedColumn> get $columns => [achievementId, unlockedAt];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'unlocked_achievements';
  @override
  VerificationContext validateIntegrity(
    Insertable<UnlockedAchievement> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('achievement_id')) {
      context.handle(
        _achievementIdMeta,
        achievementId.isAcceptableOrUnknown(
          data['achievement_id']!,
          _achievementIdMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_achievementIdMeta);
    }
    if (data.containsKey('unlocked_at')) {
      context.handle(
        _unlockedAtMeta,
        unlockedAt.isAcceptableOrUnknown(data['unlocked_at']!, _unlockedAtMeta),
      );
    } else if (isInserting) {
      context.missing(_unlockedAtMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {achievementId};
  @override
  UnlockedAchievement map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return UnlockedAchievement(
      achievementId: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}achievement_id'],
      )!,
      unlockedAt: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}unlocked_at'],
      )!,
    );
  }

  @override
  $UnlockedAchievementsTable createAlias(String alias) {
    return $UnlockedAchievementsTable(attachedDatabase, alias);
  }
}

class UnlockedAchievement extends DataClass
    implements Insertable<UnlockedAchievement> {
  final String achievementId;
  final DateTime unlockedAt;
  const UnlockedAchievement({
    required this.achievementId,
    required this.unlockedAt,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['achievement_id'] = Variable<String>(achievementId);
    map['unlocked_at'] = Variable<DateTime>(unlockedAt);
    return map;
  }

  UnlockedAchievementsCompanion toCompanion(bool nullToAbsent) {
    return UnlockedAchievementsCompanion(
      achievementId: Value(achievementId),
      unlockedAt: Value(unlockedAt),
    );
  }

  factory UnlockedAchievement.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return UnlockedAchievement(
      achievementId: serializer.fromJson<String>(json['achievementId']),
      unlockedAt: serializer.fromJson<DateTime>(json['unlockedAt']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'achievementId': serializer.toJson<String>(achievementId),
      'unlockedAt': serializer.toJson<DateTime>(unlockedAt),
    };
  }

  UnlockedAchievement copyWith({String? achievementId, DateTime? unlockedAt}) =>
      UnlockedAchievement(
        achievementId: achievementId ?? this.achievementId,
        unlockedAt: unlockedAt ?? this.unlockedAt,
      );
  UnlockedAchievement copyWithCompanion(UnlockedAchievementsCompanion data) {
    return UnlockedAchievement(
      achievementId: data.achievementId.present
          ? data.achievementId.value
          : this.achievementId,
      unlockedAt: data.unlockedAt.present
          ? data.unlockedAt.value
          : this.unlockedAt,
    );
  }

  @override
  String toString() {
    return (StringBuffer('UnlockedAchievement(')
          ..write('achievementId: $achievementId, ')
          ..write('unlockedAt: $unlockedAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(achievementId, unlockedAt);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is UnlockedAchievement &&
          other.achievementId == this.achievementId &&
          other.unlockedAt == this.unlockedAt);
}

class UnlockedAchievementsCompanion
    extends UpdateCompanion<UnlockedAchievement> {
  final Value<String> achievementId;
  final Value<DateTime> unlockedAt;
  final Value<int> rowid;
  const UnlockedAchievementsCompanion({
    this.achievementId = const Value.absent(),
    this.unlockedAt = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  UnlockedAchievementsCompanion.insert({
    required String achievementId,
    required DateTime unlockedAt,
    this.rowid = const Value.absent(),
  }) : achievementId = Value(achievementId),
       unlockedAt = Value(unlockedAt);
  static Insertable<UnlockedAchievement> custom({
    Expression<String>? achievementId,
    Expression<DateTime>? unlockedAt,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (achievementId != null) 'achievement_id': achievementId,
      if (unlockedAt != null) 'unlocked_at': unlockedAt,
      if (rowid != null) 'rowid': rowid,
    });
  }

  UnlockedAchievementsCompanion copyWith({
    Value<String>? achievementId,
    Value<DateTime>? unlockedAt,
    Value<int>? rowid,
  }) {
    return UnlockedAchievementsCompanion(
      achievementId: achievementId ?? this.achievementId,
      unlockedAt: unlockedAt ?? this.unlockedAt,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (achievementId.present) {
      map['achievement_id'] = Variable<String>(achievementId.value);
    }
    if (unlockedAt.present) {
      map['unlocked_at'] = Variable<DateTime>(unlockedAt.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('UnlockedAchievementsCompanion(')
          ..write('achievementId: $achievementId, ')
          ..write('unlockedAt: $unlockedAt, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $UserPreferencesTable extends UserPreferences
    with TableInfo<$UserPreferencesTable, UserPreference> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $UserPreferencesTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _keyMeta = const VerificationMeta('key');
  @override
  late final GeneratedColumn<String> key = GeneratedColumn<String>(
    'key',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _valueMeta = const VerificationMeta('value');
  @override
  late final GeneratedColumn<String> value = GeneratedColumn<String>(
    'value',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  @override
  List<GeneratedColumn> get $columns => [key, value];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'user_preferences';
  @override
  VerificationContext validateIntegrity(
    Insertable<UserPreference> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('key')) {
      context.handle(
        _keyMeta,
        key.isAcceptableOrUnknown(data['key']!, _keyMeta),
      );
    } else if (isInserting) {
      context.missing(_keyMeta);
    }
    if (data.containsKey('value')) {
      context.handle(
        _valueMeta,
        value.isAcceptableOrUnknown(data['value']!, _valueMeta),
      );
    } else if (isInserting) {
      context.missing(_valueMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {key};
  @override
  UserPreference map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return UserPreference(
      key: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}key'],
      )!,
      value: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}value'],
      )!,
    );
  }

  @override
  $UserPreferencesTable createAlias(String alias) {
    return $UserPreferencesTable(attachedDatabase, alias);
  }
}

class UserPreference extends DataClass implements Insertable<UserPreference> {
  final String key;
  final String value;
  const UserPreference({required this.key, required this.value});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['key'] = Variable<String>(key);
    map['value'] = Variable<String>(value);
    return map;
  }

  UserPreferencesCompanion toCompanion(bool nullToAbsent) {
    return UserPreferencesCompanion(key: Value(key), value: Value(value));
  }

  factory UserPreference.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return UserPreference(
      key: serializer.fromJson<String>(json['key']),
      value: serializer.fromJson<String>(json['value']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'key': serializer.toJson<String>(key),
      'value': serializer.toJson<String>(value),
    };
  }

  UserPreference copyWith({String? key, String? value}) =>
      UserPreference(key: key ?? this.key, value: value ?? this.value);
  UserPreference copyWithCompanion(UserPreferencesCompanion data) {
    return UserPreference(
      key: data.key.present ? data.key.value : this.key,
      value: data.value.present ? data.value.value : this.value,
    );
  }

  @override
  String toString() {
    return (StringBuffer('UserPreference(')
          ..write('key: $key, ')
          ..write('value: $value')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(key, value);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is UserPreference &&
          other.key == this.key &&
          other.value == this.value);
}

class UserPreferencesCompanion extends UpdateCompanion<UserPreference> {
  final Value<String> key;
  final Value<String> value;
  final Value<int> rowid;
  const UserPreferencesCompanion({
    this.key = const Value.absent(),
    this.value = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  UserPreferencesCompanion.insert({
    required String key,
    required String value,
    this.rowid = const Value.absent(),
  }) : key = Value(key),
       value = Value(value);
  static Insertable<UserPreference> custom({
    Expression<String>? key,
    Expression<String>? value,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (key != null) 'key': key,
      if (value != null) 'value': value,
      if (rowid != null) 'rowid': rowid,
    });
  }

  UserPreferencesCompanion copyWith({
    Value<String>? key,
    Value<String>? value,
    Value<int>? rowid,
  }) {
    return UserPreferencesCompanion(
      key: key ?? this.key,
      value: value ?? this.value,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (key.present) {
      map['key'] = Variable<String>(key.value);
    }
    if (value.present) {
      map['value'] = Variable<String>(value.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('UserPreferencesCompanion(')
          ..write('key: $key, ')
          ..write('value: $value, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $SyncMetadataTable extends SyncMetadata
    with TableInfo<$SyncMetadataTable, SyncMetadataData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $SyncMetadataTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _resourceKeyMeta = const VerificationMeta(
    'resourceKey',
  );
  @override
  late final GeneratedColumn<String> resourceKey = GeneratedColumn<String>(
    'resource_key',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _lastAttemptAtMeta = const VerificationMeta(
    'lastAttemptAt',
  );
  @override
  late final GeneratedColumn<DateTime> lastAttemptAt =
      GeneratedColumn<DateTime>(
        'last_attempt_at',
        aliasedName,
        true,
        type: DriftSqlType.dateTime,
        requiredDuringInsert: false,
      );
  static const VerificationMeta _lastSuccessAtMeta = const VerificationMeta(
    'lastSuccessAt',
  );
  @override
  late final GeneratedColumn<DateTime> lastSuccessAt =
      GeneratedColumn<DateTime>(
        'last_success_at',
        aliasedName,
        true,
        type: DriftSqlType.dateTime,
        requiredDuringInsert: false,
      );
  static const VerificationMeta _statusMeta = const VerificationMeta('status');
  @override
  late final GeneratedColumn<String> status = GeneratedColumn<String>(
    'status',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _lastErrorMeta = const VerificationMeta(
    'lastError',
  );
  @override
  late final GeneratedColumn<String> lastError = GeneratedColumn<String>(
    'last_error',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _failureCountMeta = const VerificationMeta(
    'failureCount',
  );
  @override
  late final GeneratedColumn<int> failureCount = GeneratedColumn<int>(
    'failure_count',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    defaultValue: const Constant(0),
  );
  @override
  List<GeneratedColumn> get $columns => [
    resourceKey,
    lastAttemptAt,
    lastSuccessAt,
    status,
    lastError,
    failureCount,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'sync_metadata';
  @override
  VerificationContext validateIntegrity(
    Insertable<SyncMetadataData> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('resource_key')) {
      context.handle(
        _resourceKeyMeta,
        resourceKey.isAcceptableOrUnknown(
          data['resource_key']!,
          _resourceKeyMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_resourceKeyMeta);
    }
    if (data.containsKey('last_attempt_at')) {
      context.handle(
        _lastAttemptAtMeta,
        lastAttemptAt.isAcceptableOrUnknown(
          data['last_attempt_at']!,
          _lastAttemptAtMeta,
        ),
      );
    }
    if (data.containsKey('last_success_at')) {
      context.handle(
        _lastSuccessAtMeta,
        lastSuccessAt.isAcceptableOrUnknown(
          data['last_success_at']!,
          _lastSuccessAtMeta,
        ),
      );
    }
    if (data.containsKey('status')) {
      context.handle(
        _statusMeta,
        status.isAcceptableOrUnknown(data['status']!, _statusMeta),
      );
    } else if (isInserting) {
      context.missing(_statusMeta);
    }
    if (data.containsKey('last_error')) {
      context.handle(
        _lastErrorMeta,
        lastError.isAcceptableOrUnknown(data['last_error']!, _lastErrorMeta),
      );
    }
    if (data.containsKey('failure_count')) {
      context.handle(
        _failureCountMeta,
        failureCount.isAcceptableOrUnknown(
          data['failure_count']!,
          _failureCountMeta,
        ),
      );
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {resourceKey};
  @override
  SyncMetadataData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return SyncMetadataData(
      resourceKey: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}resource_key'],
      )!,
      lastAttemptAt: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}last_attempt_at'],
      ),
      lastSuccessAt: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}last_success_at'],
      ),
      status: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}status'],
      )!,
      lastError: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}last_error'],
      ),
      failureCount: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}failure_count'],
      )!,
    );
  }

  @override
  $SyncMetadataTable createAlias(String alias) {
    return $SyncMetadataTable(attachedDatabase, alias);
  }
}

class SyncMetadataData extends DataClass
    implements Insertable<SyncMetadataData> {
  final String resourceKey;
  final DateTime? lastAttemptAt;
  final DateTime? lastSuccessAt;
  final String status;
  final String? lastError;
  final int failureCount;
  const SyncMetadataData({
    required this.resourceKey,
    this.lastAttemptAt,
    this.lastSuccessAt,
    required this.status,
    this.lastError,
    required this.failureCount,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['resource_key'] = Variable<String>(resourceKey);
    if (!nullToAbsent || lastAttemptAt != null) {
      map['last_attempt_at'] = Variable<DateTime>(lastAttemptAt);
    }
    if (!nullToAbsent || lastSuccessAt != null) {
      map['last_success_at'] = Variable<DateTime>(lastSuccessAt);
    }
    map['status'] = Variable<String>(status);
    if (!nullToAbsent || lastError != null) {
      map['last_error'] = Variable<String>(lastError);
    }
    map['failure_count'] = Variable<int>(failureCount);
    return map;
  }

  SyncMetadataCompanion toCompanion(bool nullToAbsent) {
    return SyncMetadataCompanion(
      resourceKey: Value(resourceKey),
      lastAttemptAt: lastAttemptAt == null && nullToAbsent
          ? const Value.absent()
          : Value(lastAttemptAt),
      lastSuccessAt: lastSuccessAt == null && nullToAbsent
          ? const Value.absent()
          : Value(lastSuccessAt),
      status: Value(status),
      lastError: lastError == null && nullToAbsent
          ? const Value.absent()
          : Value(lastError),
      failureCount: Value(failureCount),
    );
  }

  factory SyncMetadataData.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return SyncMetadataData(
      resourceKey: serializer.fromJson<String>(json['resourceKey']),
      lastAttemptAt: serializer.fromJson<DateTime?>(json['lastAttemptAt']),
      lastSuccessAt: serializer.fromJson<DateTime?>(json['lastSuccessAt']),
      status: serializer.fromJson<String>(json['status']),
      lastError: serializer.fromJson<String?>(json['lastError']),
      failureCount: serializer.fromJson<int>(json['failureCount']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'resourceKey': serializer.toJson<String>(resourceKey),
      'lastAttemptAt': serializer.toJson<DateTime?>(lastAttemptAt),
      'lastSuccessAt': serializer.toJson<DateTime?>(lastSuccessAt),
      'status': serializer.toJson<String>(status),
      'lastError': serializer.toJson<String?>(lastError),
      'failureCount': serializer.toJson<int>(failureCount),
    };
  }

  SyncMetadataData copyWith({
    String? resourceKey,
    Value<DateTime?> lastAttemptAt = const Value.absent(),
    Value<DateTime?> lastSuccessAt = const Value.absent(),
    String? status,
    Value<String?> lastError = const Value.absent(),
    int? failureCount,
  }) => SyncMetadataData(
    resourceKey: resourceKey ?? this.resourceKey,
    lastAttemptAt: lastAttemptAt.present
        ? lastAttemptAt.value
        : this.lastAttemptAt,
    lastSuccessAt: lastSuccessAt.present
        ? lastSuccessAt.value
        : this.lastSuccessAt,
    status: status ?? this.status,
    lastError: lastError.present ? lastError.value : this.lastError,
    failureCount: failureCount ?? this.failureCount,
  );
  SyncMetadataData copyWithCompanion(SyncMetadataCompanion data) {
    return SyncMetadataData(
      resourceKey: data.resourceKey.present
          ? data.resourceKey.value
          : this.resourceKey,
      lastAttemptAt: data.lastAttemptAt.present
          ? data.lastAttemptAt.value
          : this.lastAttemptAt,
      lastSuccessAt: data.lastSuccessAt.present
          ? data.lastSuccessAt.value
          : this.lastSuccessAt,
      status: data.status.present ? data.status.value : this.status,
      lastError: data.lastError.present ? data.lastError.value : this.lastError,
      failureCount: data.failureCount.present
          ? data.failureCount.value
          : this.failureCount,
    );
  }

  @override
  String toString() {
    return (StringBuffer('SyncMetadataData(')
          ..write('resourceKey: $resourceKey, ')
          ..write('lastAttemptAt: $lastAttemptAt, ')
          ..write('lastSuccessAt: $lastSuccessAt, ')
          ..write('status: $status, ')
          ..write('lastError: $lastError, ')
          ..write('failureCount: $failureCount')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
    resourceKey,
    lastAttemptAt,
    lastSuccessAt,
    status,
    lastError,
    failureCount,
  );
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is SyncMetadataData &&
          other.resourceKey == this.resourceKey &&
          other.lastAttemptAt == this.lastAttemptAt &&
          other.lastSuccessAt == this.lastSuccessAt &&
          other.status == this.status &&
          other.lastError == this.lastError &&
          other.failureCount == this.failureCount);
}

class SyncMetadataCompanion extends UpdateCompanion<SyncMetadataData> {
  final Value<String> resourceKey;
  final Value<DateTime?> lastAttemptAt;
  final Value<DateTime?> lastSuccessAt;
  final Value<String> status;
  final Value<String?> lastError;
  final Value<int> failureCount;
  final Value<int> rowid;
  const SyncMetadataCompanion({
    this.resourceKey = const Value.absent(),
    this.lastAttemptAt = const Value.absent(),
    this.lastSuccessAt = const Value.absent(),
    this.status = const Value.absent(),
    this.lastError = const Value.absent(),
    this.failureCount = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  SyncMetadataCompanion.insert({
    required String resourceKey,
    this.lastAttemptAt = const Value.absent(),
    this.lastSuccessAt = const Value.absent(),
    required String status,
    this.lastError = const Value.absent(),
    this.failureCount = const Value.absent(),
    this.rowid = const Value.absent(),
  }) : resourceKey = Value(resourceKey),
       status = Value(status);
  static Insertable<SyncMetadataData> custom({
    Expression<String>? resourceKey,
    Expression<DateTime>? lastAttemptAt,
    Expression<DateTime>? lastSuccessAt,
    Expression<String>? status,
    Expression<String>? lastError,
    Expression<int>? failureCount,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (resourceKey != null) 'resource_key': resourceKey,
      if (lastAttemptAt != null) 'last_attempt_at': lastAttemptAt,
      if (lastSuccessAt != null) 'last_success_at': lastSuccessAt,
      if (status != null) 'status': status,
      if (lastError != null) 'last_error': lastError,
      if (failureCount != null) 'failure_count': failureCount,
      if (rowid != null) 'rowid': rowid,
    });
  }

  SyncMetadataCompanion copyWith({
    Value<String>? resourceKey,
    Value<DateTime?>? lastAttemptAt,
    Value<DateTime?>? lastSuccessAt,
    Value<String>? status,
    Value<String?>? lastError,
    Value<int>? failureCount,
    Value<int>? rowid,
  }) {
    return SyncMetadataCompanion(
      resourceKey: resourceKey ?? this.resourceKey,
      lastAttemptAt: lastAttemptAt ?? this.lastAttemptAt,
      lastSuccessAt: lastSuccessAt ?? this.lastSuccessAt,
      status: status ?? this.status,
      lastError: lastError ?? this.lastError,
      failureCount: failureCount ?? this.failureCount,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (resourceKey.present) {
      map['resource_key'] = Variable<String>(resourceKey.value);
    }
    if (lastAttemptAt.present) {
      map['last_attempt_at'] = Variable<DateTime>(lastAttemptAt.value);
    }
    if (lastSuccessAt.present) {
      map['last_success_at'] = Variable<DateTime>(lastSuccessAt.value);
    }
    if (status.present) {
      map['status'] = Variable<String>(status.value);
    }
    if (lastError.present) {
      map['last_error'] = Variable<String>(lastError.value);
    }
    if (failureCount.present) {
      map['failure_count'] = Variable<int>(failureCount.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('SyncMetadataCompanion(')
          ..write('resourceKey: $resourceKey, ')
          ..write('lastAttemptAt: $lastAttemptAt, ')
          ..write('lastSuccessAt: $lastSuccessAt, ')
          ..write('status: $status, ')
          ..write('lastError: $lastError, ')
          ..write('failureCount: $failureCount, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $CatalogPagesTable extends CatalogPages
    with TableInfo<$CatalogPagesTable, CatalogPage> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $CatalogPagesTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _pageKeyMeta = const VerificationMeta(
    'pageKey',
  );
  @override
  late final GeneratedColumn<String> pageKey = GeneratedColumn<String>(
    'page_key',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _offsetMeta = const VerificationMeta('offset');
  @override
  late final GeneratedColumn<int> offset = GeneratedColumn<int>(
    'offset',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _pageSizeMeta = const VerificationMeta(
    'pageSize',
  );
  @override
  late final GeneratedColumn<int> pageSize = GeneratedColumn<int>(
    'page_size',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _returnedCountMeta = const VerificationMeta(
    'returnedCount',
  );
  @override
  late final GeneratedColumn<int> returnedCount = GeneratedColumn<int>(
    'returned_count',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _fetchedAtMeta = const VerificationMeta(
    'fetchedAt',
  );
  @override
  late final GeneratedColumn<DateTime> fetchedAt = GeneratedColumn<DateTime>(
    'fetched_at',
    aliasedName,
    false,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: true,
  );
  @override
  List<GeneratedColumn> get $columns => [
    pageKey,
    offset,
    pageSize,
    returnedCount,
    fetchedAt,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'catalog_pages';
  @override
  VerificationContext validateIntegrity(
    Insertable<CatalogPage> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('page_key')) {
      context.handle(
        _pageKeyMeta,
        pageKey.isAcceptableOrUnknown(data['page_key']!, _pageKeyMeta),
      );
    } else if (isInserting) {
      context.missing(_pageKeyMeta);
    }
    if (data.containsKey('offset')) {
      context.handle(
        _offsetMeta,
        offset.isAcceptableOrUnknown(data['offset']!, _offsetMeta),
      );
    } else if (isInserting) {
      context.missing(_offsetMeta);
    }
    if (data.containsKey('page_size')) {
      context.handle(
        _pageSizeMeta,
        pageSize.isAcceptableOrUnknown(data['page_size']!, _pageSizeMeta),
      );
    } else if (isInserting) {
      context.missing(_pageSizeMeta);
    }
    if (data.containsKey('returned_count')) {
      context.handle(
        _returnedCountMeta,
        returnedCount.isAcceptableOrUnknown(
          data['returned_count']!,
          _returnedCountMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_returnedCountMeta);
    }
    if (data.containsKey('fetched_at')) {
      context.handle(
        _fetchedAtMeta,
        fetchedAt.isAcceptableOrUnknown(data['fetched_at']!, _fetchedAtMeta),
      );
    } else if (isInserting) {
      context.missing(_fetchedAtMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {pageKey};
  @override
  CatalogPage map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return CatalogPage(
      pageKey: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}page_key'],
      )!,
      offset: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}offset'],
      )!,
      pageSize: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}page_size'],
      )!,
      returnedCount: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}returned_count'],
      )!,
      fetchedAt: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}fetched_at'],
      )!,
    );
  }

  @override
  $CatalogPagesTable createAlias(String alias) {
    return $CatalogPagesTable(attachedDatabase, alias);
  }
}

class CatalogPage extends DataClass implements Insertable<CatalogPage> {
  final String pageKey;
  final int offset;
  final int pageSize;
  final int returnedCount;
  final DateTime fetchedAt;
  const CatalogPage({
    required this.pageKey,
    required this.offset,
    required this.pageSize,
    required this.returnedCount,
    required this.fetchedAt,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['page_key'] = Variable<String>(pageKey);
    map['offset'] = Variable<int>(offset);
    map['page_size'] = Variable<int>(pageSize);
    map['returned_count'] = Variable<int>(returnedCount);
    map['fetched_at'] = Variable<DateTime>(fetchedAt);
    return map;
  }

  CatalogPagesCompanion toCompanion(bool nullToAbsent) {
    return CatalogPagesCompanion(
      pageKey: Value(pageKey),
      offset: Value(offset),
      pageSize: Value(pageSize),
      returnedCount: Value(returnedCount),
      fetchedAt: Value(fetchedAt),
    );
  }

  factory CatalogPage.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return CatalogPage(
      pageKey: serializer.fromJson<String>(json['pageKey']),
      offset: serializer.fromJson<int>(json['offset']),
      pageSize: serializer.fromJson<int>(json['pageSize']),
      returnedCount: serializer.fromJson<int>(json['returnedCount']),
      fetchedAt: serializer.fromJson<DateTime>(json['fetchedAt']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'pageKey': serializer.toJson<String>(pageKey),
      'offset': serializer.toJson<int>(offset),
      'pageSize': serializer.toJson<int>(pageSize),
      'returnedCount': serializer.toJson<int>(returnedCount),
      'fetchedAt': serializer.toJson<DateTime>(fetchedAt),
    };
  }

  CatalogPage copyWith({
    String? pageKey,
    int? offset,
    int? pageSize,
    int? returnedCount,
    DateTime? fetchedAt,
  }) => CatalogPage(
    pageKey: pageKey ?? this.pageKey,
    offset: offset ?? this.offset,
    pageSize: pageSize ?? this.pageSize,
    returnedCount: returnedCount ?? this.returnedCount,
    fetchedAt: fetchedAt ?? this.fetchedAt,
  );
  CatalogPage copyWithCompanion(CatalogPagesCompanion data) {
    return CatalogPage(
      pageKey: data.pageKey.present ? data.pageKey.value : this.pageKey,
      offset: data.offset.present ? data.offset.value : this.offset,
      pageSize: data.pageSize.present ? data.pageSize.value : this.pageSize,
      returnedCount: data.returnedCount.present
          ? data.returnedCount.value
          : this.returnedCount,
      fetchedAt: data.fetchedAt.present ? data.fetchedAt.value : this.fetchedAt,
    );
  }

  @override
  String toString() {
    return (StringBuffer('CatalogPage(')
          ..write('pageKey: $pageKey, ')
          ..write('offset: $offset, ')
          ..write('pageSize: $pageSize, ')
          ..write('returnedCount: $returnedCount, ')
          ..write('fetchedAt: $fetchedAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode =>
      Object.hash(pageKey, offset, pageSize, returnedCount, fetchedAt);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is CatalogPage &&
          other.pageKey == this.pageKey &&
          other.offset == this.offset &&
          other.pageSize == this.pageSize &&
          other.returnedCount == this.returnedCount &&
          other.fetchedAt == this.fetchedAt);
}

class CatalogPagesCompanion extends UpdateCompanion<CatalogPage> {
  final Value<String> pageKey;
  final Value<int> offset;
  final Value<int> pageSize;
  final Value<int> returnedCount;
  final Value<DateTime> fetchedAt;
  final Value<int> rowid;
  const CatalogPagesCompanion({
    this.pageKey = const Value.absent(),
    this.offset = const Value.absent(),
    this.pageSize = const Value.absent(),
    this.returnedCount = const Value.absent(),
    this.fetchedAt = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  CatalogPagesCompanion.insert({
    required String pageKey,
    required int offset,
    required int pageSize,
    required int returnedCount,
    required DateTime fetchedAt,
    this.rowid = const Value.absent(),
  }) : pageKey = Value(pageKey),
       offset = Value(offset),
       pageSize = Value(pageSize),
       returnedCount = Value(returnedCount),
       fetchedAt = Value(fetchedAt);
  static Insertable<CatalogPage> custom({
    Expression<String>? pageKey,
    Expression<int>? offset,
    Expression<int>? pageSize,
    Expression<int>? returnedCount,
    Expression<DateTime>? fetchedAt,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (pageKey != null) 'page_key': pageKey,
      if (offset != null) 'offset': offset,
      if (pageSize != null) 'page_size': pageSize,
      if (returnedCount != null) 'returned_count': returnedCount,
      if (fetchedAt != null) 'fetched_at': fetchedAt,
      if (rowid != null) 'rowid': rowid,
    });
  }

  CatalogPagesCompanion copyWith({
    Value<String>? pageKey,
    Value<int>? offset,
    Value<int>? pageSize,
    Value<int>? returnedCount,
    Value<DateTime>? fetchedAt,
    Value<int>? rowid,
  }) {
    return CatalogPagesCompanion(
      pageKey: pageKey ?? this.pageKey,
      offset: offset ?? this.offset,
      pageSize: pageSize ?? this.pageSize,
      returnedCount: returnedCount ?? this.returnedCount,
      fetchedAt: fetchedAt ?? this.fetchedAt,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (pageKey.present) {
      map['page_key'] = Variable<String>(pageKey.value);
    }
    if (offset.present) {
      map['offset'] = Variable<int>(offset.value);
    }
    if (pageSize.present) {
      map['page_size'] = Variable<int>(pageSize.value);
    }
    if (returnedCount.present) {
      map['returned_count'] = Variable<int>(returnedCount.value);
    }
    if (fetchedAt.present) {
      map['fetched_at'] = Variable<DateTime>(fetchedAt.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('CatalogPagesCompanion(')
          ..write('pageKey: $pageKey, ')
          ..write('offset: $offset, ')
          ..write('pageSize: $pageSize, ')
          ..write('returnedCount: $returnedCount, ')
          ..write('fetchedAt: $fetchedAt, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

abstract class _$AppDatabase extends GeneratedDatabase {
  _$AppDatabase(QueryExecutor e) : super(e);
  $AppDatabaseManager get managers => $AppDatabaseManager(this);
  late final $PokemonSpeciesTable pokemonSpecies = $PokemonSpeciesTable(this);
  late final $PokemonsTable pokemons = $PokemonsTable(this);
  late final $TypesTable types = $TypesTable(this);
  late final $PokemonTypesTable pokemonTypes = $PokemonTypesTable(this);
  late final $PokemonStatsTable pokemonStats = $PokemonStatsTable(this);
  late final $AbilitiesTable abilities = $AbilitiesTable(this);
  late final $PokemonAbilitiesTable pokemonAbilities = $PokemonAbilitiesTable(
    this,
  );
  late final $MovesTable moves = $MovesTable(this);
  late final $PokemonMovesTable pokemonMoves = $PokemonMovesTable(this);
  late final $PokemonImagesTable pokemonImages = $PokemonImagesTable(this);
  late final $EvolutionLinksTable evolutionLinks = $EvolutionLinksTable(this);
  late final $EggGroupsTable eggGroups = $EggGroupsTable(this);
  late final $SpeciesEggGroupsTable speciesEggGroups = $SpeciesEggGroupsTable(
    this,
  );
  late final $TypeEfficacyTable typeEfficacy = $TypeEfficacyTable(this);
  late final $PokemonGameAppearancesTable pokemonGameAppearances =
      $PokemonGameAppearancesTable(this);
  late final $FavoritesTable favorites = $FavoritesTable(this);
  late final $TriviaResultsTable triviaResults = $TriviaResultsTable(this);
  late final $AchievementsTable achievements = $AchievementsTable(this);
  late final $UnlockedAchievementsTable unlockedAchievements =
      $UnlockedAchievementsTable(this);
  late final $UserPreferencesTable userPreferences = $UserPreferencesTable(
    this,
  );
  late final $SyncMetadataTable syncMetadata = $SyncMetadataTable(this);
  late final $CatalogPagesTable catalogPages = $CatalogPagesTable(this);
  late final Index idxPokemonName = Index(
    'idx_pokemon_name',
    'CREATE INDEX idx_pokemon_name ON pokemons (name)',
  );
  late final Index idxPokemonSpecies = Index(
    'idx_pokemon_species',
    'CREATE INDEX idx_pokemon_species ON pokemons (species_id)',
  );
  late final Index idxPokemonTotal = Index(
    'idx_pokemon_total',
    'CREATE INDEX idx_pokemon_total ON pokemons (base_stat_total)',
  );
  late final Index idxPokemonMovesLookup = Index(
    'idx_pokemon_moves_lookup',
    'CREATE INDEX idx_pokemon_moves_lookup ON pokemon_moves (pokemon_id, version_group_id, method)',
  );
  late final PokemonDao pokemonDao = PokemonDao(this as AppDatabase);
  late final FavoriteDao favoriteDao = FavoriteDao(this as AppDatabase);
  late final SyncMetadataDao syncMetadataDao = SyncMetadataDao(
    this as AppDatabase,
  );
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [
    pokemonSpecies,
    pokemons,
    types,
    pokemonTypes,
    pokemonStats,
    abilities,
    pokemonAbilities,
    moves,
    pokemonMoves,
    pokemonImages,
    evolutionLinks,
    eggGroups,
    speciesEggGroups,
    typeEfficacy,
    pokemonGameAppearances,
    favorites,
    triviaResults,
    achievements,
    unlockedAchievements,
    userPreferences,
    syncMetadata,
    catalogPages,
    idxPokemonName,
    idxPokemonSpecies,
    idxPokemonTotal,
    idxPokemonMovesLookup,
  ];
}

typedef $$PokemonSpeciesTableCreateCompanionBuilder =
    PokemonSpeciesCompanion Function({
      Value<int> id,
      required String name,
      Value<int?> generationId,
      Value<int?> evolutionChainId,
      Value<bool> isLegendary,
      Value<bool> isMythical,
    });
typedef $$PokemonSpeciesTableUpdateCompanionBuilder =
    PokemonSpeciesCompanion Function({
      Value<int> id,
      Value<String> name,
      Value<int?> generationId,
      Value<int?> evolutionChainId,
      Value<bool> isLegendary,
      Value<bool> isMythical,
    });

final class $$PokemonSpeciesTableReferences
    extends BaseReferences<_$AppDatabase, $PokemonSpeciesTable, PokemonSpecy> {
  $$PokemonSpeciesTableReferences(
    super.$_db,
    super.$_table,
    super.$_typedResult,
  );

  static MultiTypedResultKey<$PokemonsTable, List<PokemonRow>>
  _pokemonsRefsTable(_$AppDatabase db) => MultiTypedResultKey.fromTable(
    db.pokemons,
    aliasName: 'pokemon_species__id__pokemons__species_id',
  );

  $$PokemonsTableProcessedTableManager get pokemonsRefs {
    final manager = $$PokemonsTableTableManager(
      $_db,
      $_db.pokemons,
    ).filter((f) => f.speciesId.id.sqlEquals($_itemColumn<int>('id')!));

    final cache = $_typedResult.readTableOrNull(_pokemonsRefsTable($_db));
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: cache),
    );
  }

  static MultiTypedResultKey<$SpeciesEggGroupsTable, List<SpeciesEggGroup>>
  _speciesEggGroupsRefsTable(_$AppDatabase db) => MultiTypedResultKey.fromTable(
    db.speciesEggGroups,
    aliasName: 'pokemon_species__id__species_egg_groups__species_id',
  );

  $$SpeciesEggGroupsTableProcessedTableManager get speciesEggGroupsRefs {
    final manager = $$SpeciesEggGroupsTableTableManager(
      $_db,
      $_db.speciesEggGroups,
    ).filter((f) => f.speciesId.id.sqlEquals($_itemColumn<int>('id')!));

    final cache = $_typedResult.readTableOrNull(
      _speciesEggGroupsRefsTable($_db),
    );
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: cache),
    );
  }
}

class $$PokemonSpeciesTableFilterComposer
    extends Composer<_$AppDatabase, $PokemonSpeciesTable> {
  $$PokemonSpeciesTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get name => $composableBuilder(
    column: $table.name,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get generationId => $composableBuilder(
    column: $table.generationId,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get evolutionChainId => $composableBuilder(
    column: $table.evolutionChainId,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<bool> get isLegendary => $composableBuilder(
    column: $table.isLegendary,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<bool> get isMythical => $composableBuilder(
    column: $table.isMythical,
    builder: (column) => ColumnFilters(column),
  );

  Expression<bool> pokemonsRefs(
    Expression<bool> Function($$PokemonsTableFilterComposer f) f,
  ) {
    final $$PokemonsTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.pokemons,
      getReferencedColumn: (t) => t.speciesId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$PokemonsTableFilterComposer(
            $db: $db,
            $table: $db.pokemons,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }

  Expression<bool> speciesEggGroupsRefs(
    Expression<bool> Function($$SpeciesEggGroupsTableFilterComposer f) f,
  ) {
    final $$SpeciesEggGroupsTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.speciesEggGroups,
      getReferencedColumn: (t) => t.speciesId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$SpeciesEggGroupsTableFilterComposer(
            $db: $db,
            $table: $db.speciesEggGroups,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }
}

class $$PokemonSpeciesTableOrderingComposer
    extends Composer<_$AppDatabase, $PokemonSpeciesTable> {
  $$PokemonSpeciesTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get name => $composableBuilder(
    column: $table.name,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get generationId => $composableBuilder(
    column: $table.generationId,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get evolutionChainId => $composableBuilder(
    column: $table.evolutionChainId,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<bool> get isLegendary => $composableBuilder(
    column: $table.isLegendary,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<bool> get isMythical => $composableBuilder(
    column: $table.isMythical,
    builder: (column) => ColumnOrderings(column),
  );
}

class $$PokemonSpeciesTableAnnotationComposer
    extends Composer<_$AppDatabase, $PokemonSpeciesTable> {
  $$PokemonSpeciesTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get name =>
      $composableBuilder(column: $table.name, builder: (column) => column);

  GeneratedColumn<int> get generationId => $composableBuilder(
    column: $table.generationId,
    builder: (column) => column,
  );

  GeneratedColumn<int> get evolutionChainId => $composableBuilder(
    column: $table.evolutionChainId,
    builder: (column) => column,
  );

  GeneratedColumn<bool> get isLegendary => $composableBuilder(
    column: $table.isLegendary,
    builder: (column) => column,
  );

  GeneratedColumn<bool> get isMythical => $composableBuilder(
    column: $table.isMythical,
    builder: (column) => column,
  );

  Expression<T> pokemonsRefs<T extends Object>(
    Expression<T> Function($$PokemonsTableAnnotationComposer a) f,
  ) {
    final $$PokemonsTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.pokemons,
      getReferencedColumn: (t) => t.speciesId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$PokemonsTableAnnotationComposer(
            $db: $db,
            $table: $db.pokemons,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }

  Expression<T> speciesEggGroupsRefs<T extends Object>(
    Expression<T> Function($$SpeciesEggGroupsTableAnnotationComposer a) f,
  ) {
    final $$SpeciesEggGroupsTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.speciesEggGroups,
      getReferencedColumn: (t) => t.speciesId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$SpeciesEggGroupsTableAnnotationComposer(
            $db: $db,
            $table: $db.speciesEggGroups,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }
}

class $$PokemonSpeciesTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $PokemonSpeciesTable,
          PokemonSpecy,
          $$PokemonSpeciesTableFilterComposer,
          $$PokemonSpeciesTableOrderingComposer,
          $$PokemonSpeciesTableAnnotationComposer,
          $$PokemonSpeciesTableCreateCompanionBuilder,
          $$PokemonSpeciesTableUpdateCompanionBuilder,
          (PokemonSpecy, $$PokemonSpeciesTableReferences),
          PokemonSpecy,
          PrefetchHooks Function({bool pokemonsRefs, bool speciesEggGroupsRefs})
        > {
  $$PokemonSpeciesTableTableManager(
    _$AppDatabase db,
    $PokemonSpeciesTable table,
  ) : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$PokemonSpeciesTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$PokemonSpeciesTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$PokemonSpeciesTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                Value<String> name = const Value.absent(),
                Value<int?> generationId = const Value.absent(),
                Value<int?> evolutionChainId = const Value.absent(),
                Value<bool> isLegendary = const Value.absent(),
                Value<bool> isMythical = const Value.absent(),
              }) => PokemonSpeciesCompanion(
                id: id,
                name: name,
                generationId: generationId,
                evolutionChainId: evolutionChainId,
                isLegendary: isLegendary,
                isMythical: isMythical,
              ),
          createCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                required String name,
                Value<int?> generationId = const Value.absent(),
                Value<int?> evolutionChainId = const Value.absent(),
                Value<bool> isLegendary = const Value.absent(),
                Value<bool> isMythical = const Value.absent(),
              }) => PokemonSpeciesCompanion.insert(
                id: id,
                name: name,
                generationId: generationId,
                evolutionChainId: evolutionChainId,
                isLegendary: isLegendary,
                isMythical: isMythical,
              ),
          withReferenceMapper: (p0) => p0
              .map(
                (e) => (
                  e.readTable<$PokemonSpeciesTable, PokemonSpecy>(table),
                  $$PokemonSpeciesTableReferences(db, table, e),
                ),
              )
              .toList(),
          prefetchHooksCallback:
              ({pokemonsRefs = false, speciesEggGroupsRefs = false}) {
                return PrefetchHooks(
                  db: db,
                  explicitlyWatchedTables: [
                    if (pokemonsRefs) db.pokemons,
                    if (speciesEggGroupsRefs) db.speciesEggGroups,
                  ],
                  addJoins: null,
                  getPrefetchedDataCallback: (items) async {
                    return [
                      if (pokemonsRefs)
                        await $_getPrefetchedDataByColumns<
                          PokemonSpecy,
                          $PokemonSpeciesTable,
                          PokemonRow,
                          $PokemonsTable
                        >(
                          currentTable: table,
                          referencedTable: $$PokemonSpeciesTableReferences
                              ._pokemonsRefsTable(db),
                          managerFromTypedResult: (p0) =>
                              $$PokemonSpeciesTableReferences(
                                db,
                                table,
                                p0,
                              ).pokemonsRefs,
                          currentColumn: 'id',
                          referencedColumn: 'species_id',
                          typedResults: items,
                        ),
                      if (speciesEggGroupsRefs)
                        await $_getPrefetchedDataByColumns<
                          PokemonSpecy,
                          $PokemonSpeciesTable,
                          SpeciesEggGroup,
                          $SpeciesEggGroupsTable
                        >(
                          currentTable: table,
                          referencedTable: $$PokemonSpeciesTableReferences
                              ._speciesEggGroupsRefsTable(db),
                          managerFromTypedResult: (p0) =>
                              $$PokemonSpeciesTableReferences(
                                db,
                                table,
                                p0,
                              ).speciesEggGroupsRefs,
                          currentColumn: 'id',
                          referencedColumn: 'species_id',
                          typedResults: items,
                        ),
                    ];
                  },
                );
              },
        ),
      );
}

typedef $$PokemonSpeciesTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $PokemonSpeciesTable,
      PokemonSpecy,
      $$PokemonSpeciesTableFilterComposer,
      $$PokemonSpeciesTableOrderingComposer,
      $$PokemonSpeciesTableAnnotationComposer,
      $$PokemonSpeciesTableCreateCompanionBuilder,
      $$PokemonSpeciesTableUpdateCompanionBuilder,
      (PokemonSpecy, $$PokemonSpeciesTableReferences),
      PokemonSpecy,
      PrefetchHooks Function({bool pokemonsRefs, bool speciesEggGroupsRefs})
    >;
typedef $$PokemonsTableCreateCompanionBuilder = PokemonsCompanion Function({
  Value<int> id,
  Value<int?> speciesId,
  required String name,
  Value<int?> height,
  Value<int?> weight,
  Value<int?> baseStatTotal,
  Value<bool> isDefault,
  required DateTime updatedAt,
});
typedef $$PokemonsTableUpdateCompanionBuilder = PokemonsCompanion Function({
  Value<int> id,
  Value<int?> speciesId,
  Value<String> name,
  Value<int?> height,
  Value<int?> weight,
  Value<int?> baseStatTotal,
  Value<bool> isDefault,
  Value<DateTime> updatedAt,
});

final class $$PokemonsTableReferences
    extends BaseReferences<_$AppDatabase, $PokemonsTable, PokemonRow> {
  $$PokemonsTableReferences(super.$_db, super.$_table, super.$_typedResult);

  static $PokemonSpeciesTable _speciesIdTable(_$AppDatabase db) => db
      .pokemonSpecies
      .createAlias('pokemons__species_id__pokemon_species__id');

  $$PokemonSpeciesTableProcessedTableManager? get speciesId {
    final $_column = $_itemColumn<int>('species_id');
    if ($_column == null) return null;
    final manager = $$PokemonSpeciesTableTableManager(
      $_db,
      $_db.pokemonSpecies,
    ).filter((f) => f.id.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_speciesIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: [item]),
    );
  }

  static MultiTypedResultKey<$PokemonTypesTable, List<PokemonType>>
  _pokemonTypesRefsTable(_$AppDatabase db) => MultiTypedResultKey.fromTable(
    db.pokemonTypes,
    aliasName: 'pokemons__id__pokemon_types__pokemon_id',
  );

  $$PokemonTypesTableProcessedTableManager get pokemonTypesRefs {
    final manager = $$PokemonTypesTableTableManager(
      $_db,
      $_db.pokemonTypes,
    ).filter((f) => f.pokemonId.id.sqlEquals($_itemColumn<int>('id')!));

    final cache = $_typedResult.readTableOrNull(_pokemonTypesRefsTable($_db));
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: cache),
    );
  }

  static MultiTypedResultKey<$PokemonStatsTable, List<PokemonStat>>
  _pokemonStatsRefsTable(_$AppDatabase db) => MultiTypedResultKey.fromTable(
    db.pokemonStats,
    aliasName: 'pokemons__id__pokemon_stats__pokemon_id',
  );

  $$PokemonStatsTableProcessedTableManager get pokemonStatsRefs {
    final manager = $$PokemonStatsTableTableManager(
      $_db,
      $_db.pokemonStats,
    ).filter((f) => f.pokemonId.id.sqlEquals($_itemColumn<int>('id')!));

    final cache = $_typedResult.readTableOrNull(_pokemonStatsRefsTable($_db));
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: cache),
    );
  }

  static MultiTypedResultKey<$PokemonAbilitiesTable, List<PokemonAbility>>
  _pokemonAbilitiesRefsTable(_$AppDatabase db) => MultiTypedResultKey.fromTable(
    db.pokemonAbilities,
    aliasName: 'pokemons__id__pokemon_abilities__pokemon_id',
  );

  $$PokemonAbilitiesTableProcessedTableManager get pokemonAbilitiesRefs {
    final manager = $$PokemonAbilitiesTableTableManager(
      $_db,
      $_db.pokemonAbilities,
    ).filter((f) => f.pokemonId.id.sqlEquals($_itemColumn<int>('id')!));

    final cache = $_typedResult.readTableOrNull(
      _pokemonAbilitiesRefsTable($_db),
    );
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: cache),
    );
  }

  static MultiTypedResultKey<$PokemonMovesTable, List<PokemonMove>>
  _pokemonMovesRefsTable(_$AppDatabase db) => MultiTypedResultKey.fromTable(
    db.pokemonMoves,
    aliasName: 'pokemons__id__pokemon_moves__pokemon_id',
  );

  $$PokemonMovesTableProcessedTableManager get pokemonMovesRefs {
    final manager = $$PokemonMovesTableTableManager(
      $_db,
      $_db.pokemonMoves,
    ).filter((f) => f.pokemonId.id.sqlEquals($_itemColumn<int>('id')!));

    final cache = $_typedResult.readTableOrNull(_pokemonMovesRefsTable($_db));
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: cache),
    );
  }

  static MultiTypedResultKey<$PokemonImagesTable, List<PokemonImage>>
  _pokemonImagesRefsTable(_$AppDatabase db) => MultiTypedResultKey.fromTable(
    db.pokemonImages,
    aliasName: 'pokemons__id__pokemon_images__pokemon_id',
  );

  $$PokemonImagesTableProcessedTableManager get pokemonImagesRefs {
    final manager = $$PokemonImagesTableTableManager(
      $_db,
      $_db.pokemonImages,
    ).filter((f) => f.pokemonId.id.sqlEquals($_itemColumn<int>('id')!));

    final cache = $_typedResult.readTableOrNull(_pokemonImagesRefsTable($_db));
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: cache),
    );
  }

  static MultiTypedResultKey<
    $PokemonGameAppearancesTable,
    List<PokemonGameAppearance>
  >
  _pokemonGameAppearancesRefsTable(_$AppDatabase db) =>
      MultiTypedResultKey.fromTable(
        db.pokemonGameAppearances,
        aliasName: 'pokemons__id__pokemon_game_appearances__pokemon_id',
      );

  $$PokemonGameAppearancesTableProcessedTableManager
  get pokemonGameAppearancesRefs {
    final manager = $$PokemonGameAppearancesTableTableManager(
      $_db,
      $_db.pokemonGameAppearances,
    ).filter((f) => f.pokemonId.id.sqlEquals($_itemColumn<int>('id')!));

    final cache = $_typedResult.readTableOrNull(
      _pokemonGameAppearancesRefsTable($_db),
    );
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: cache),
    );
  }

  static MultiTypedResultKey<$FavoritesTable, List<Favorite>>
  _favoritesRefsTable(_$AppDatabase db) => MultiTypedResultKey.fromTable(
    db.favorites,
    aliasName: 'pokemons__id__favorites__pokemon_id',
  );

  $$FavoritesTableProcessedTableManager get favoritesRefs {
    final manager = $$FavoritesTableTableManager(
      $_db,
      $_db.favorites,
    ).filter((f) => f.pokemonId.id.sqlEquals($_itemColumn<int>('id')!));

    final cache = $_typedResult.readTableOrNull(_favoritesRefsTable($_db));
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: cache),
    );
  }
}

class $$PokemonsTableFilterComposer
    extends Composer<_$AppDatabase, $PokemonsTable> {
  $$PokemonsTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get name => $composableBuilder(
    column: $table.name,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get height => $composableBuilder(
    column: $table.height,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get weight => $composableBuilder(
    column: $table.weight,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get baseStatTotal => $composableBuilder(
    column: $table.baseStatTotal,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<bool> get isDefault => $composableBuilder(
    column: $table.isDefault,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get updatedAt => $composableBuilder(
    column: $table.updatedAt,
    builder: (column) => ColumnFilters(column),
  );

  $$PokemonSpeciesTableFilterComposer get speciesId {
    final $$PokemonSpeciesTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.speciesId,
      referencedTable: $db.pokemonSpecies,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$PokemonSpeciesTableFilterComposer(
            $db: $db,
            $table: $db.pokemonSpecies,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }

  Expression<bool> pokemonTypesRefs(
    Expression<bool> Function($$PokemonTypesTableFilterComposer f) f,
  ) {
    final $$PokemonTypesTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.pokemonTypes,
      getReferencedColumn: (t) => t.pokemonId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$PokemonTypesTableFilterComposer(
            $db: $db,
            $table: $db.pokemonTypes,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }

  Expression<bool> pokemonStatsRefs(
    Expression<bool> Function($$PokemonStatsTableFilterComposer f) f,
  ) {
    final $$PokemonStatsTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.pokemonStats,
      getReferencedColumn: (t) => t.pokemonId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$PokemonStatsTableFilterComposer(
            $db: $db,
            $table: $db.pokemonStats,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }

  Expression<bool> pokemonAbilitiesRefs(
    Expression<bool> Function($$PokemonAbilitiesTableFilterComposer f) f,
  ) {
    final $$PokemonAbilitiesTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.pokemonAbilities,
      getReferencedColumn: (t) => t.pokemonId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$PokemonAbilitiesTableFilterComposer(
            $db: $db,
            $table: $db.pokemonAbilities,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }

  Expression<bool> pokemonMovesRefs(
    Expression<bool> Function($$PokemonMovesTableFilterComposer f) f,
  ) {
    final $$PokemonMovesTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.pokemonMoves,
      getReferencedColumn: (t) => t.pokemonId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$PokemonMovesTableFilterComposer(
            $db: $db,
            $table: $db.pokemonMoves,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }

  Expression<bool> pokemonImagesRefs(
    Expression<bool> Function($$PokemonImagesTableFilterComposer f) f,
  ) {
    final $$PokemonImagesTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.pokemonImages,
      getReferencedColumn: (t) => t.pokemonId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$PokemonImagesTableFilterComposer(
            $db: $db,
            $table: $db.pokemonImages,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }

  Expression<bool> pokemonGameAppearancesRefs(
    Expression<bool> Function($$PokemonGameAppearancesTableFilterComposer f) f,
  ) {
    final $$PokemonGameAppearancesTableFilterComposer composer =
        $composerBuilder(
          composer: this,
          getCurrentColumn: (t) => t.id,
          referencedTable: $db.pokemonGameAppearances,
          getReferencedColumn: (t) => t.pokemonId,
          builder:
              (
                joinBuilder, {
                $addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer,
              }) => $$PokemonGameAppearancesTableFilterComposer(
                $db: $db,
                $table: $db.pokemonGameAppearances,
                $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
                joinBuilder: joinBuilder,
                $removeJoinBuilderFromRootComposer:
                    $removeJoinBuilderFromRootComposer,
              ),
        );
    return f(composer);
  }

  Expression<bool> favoritesRefs(
    Expression<bool> Function($$FavoritesTableFilterComposer f) f,
  ) {
    final $$FavoritesTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.favorites,
      getReferencedColumn: (t) => t.pokemonId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$FavoritesTableFilterComposer(
            $db: $db,
            $table: $db.favorites,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }
}

class $$PokemonsTableOrderingComposer
    extends Composer<_$AppDatabase, $PokemonsTable> {
  $$PokemonsTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get name => $composableBuilder(
    column: $table.name,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get height => $composableBuilder(
    column: $table.height,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get weight => $composableBuilder(
    column: $table.weight,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get baseStatTotal => $composableBuilder(
    column: $table.baseStatTotal,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<bool> get isDefault => $composableBuilder(
    column: $table.isDefault,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get updatedAt => $composableBuilder(
    column: $table.updatedAt,
    builder: (column) => ColumnOrderings(column),
  );

  $$PokemonSpeciesTableOrderingComposer get speciesId {
    final $$PokemonSpeciesTableOrderingComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.speciesId,
      referencedTable: $db.pokemonSpecies,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$PokemonSpeciesTableOrderingComposer(
            $db: $db,
            $table: $db.pokemonSpecies,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$PokemonsTableAnnotationComposer
    extends Composer<_$AppDatabase, $PokemonsTable> {
  $$PokemonsTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get name =>
      $composableBuilder(column: $table.name, builder: (column) => column);

  GeneratedColumn<int> get height =>
      $composableBuilder(column: $table.height, builder: (column) => column);

  GeneratedColumn<int> get weight =>
      $composableBuilder(column: $table.weight, builder: (column) => column);

  GeneratedColumn<int> get baseStatTotal => $composableBuilder(
    column: $table.baseStatTotal,
    builder: (column) => column,
  );

  GeneratedColumn<bool> get isDefault =>
      $composableBuilder(column: $table.isDefault, builder: (column) => column);

  GeneratedColumn<DateTime> get updatedAt =>
      $composableBuilder(column: $table.updatedAt, builder: (column) => column);

  $$PokemonSpeciesTableAnnotationComposer get speciesId {
    final $$PokemonSpeciesTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.speciesId,
      referencedTable: $db.pokemonSpecies,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$PokemonSpeciesTableAnnotationComposer(
            $db: $db,
            $table: $db.pokemonSpecies,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }

  Expression<T> pokemonTypesRefs<T extends Object>(
    Expression<T> Function($$PokemonTypesTableAnnotationComposer a) f,
  ) {
    final $$PokemonTypesTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.pokemonTypes,
      getReferencedColumn: (t) => t.pokemonId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$PokemonTypesTableAnnotationComposer(
            $db: $db,
            $table: $db.pokemonTypes,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }

  Expression<T> pokemonStatsRefs<T extends Object>(
    Expression<T> Function($$PokemonStatsTableAnnotationComposer a) f,
  ) {
    final $$PokemonStatsTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.pokemonStats,
      getReferencedColumn: (t) => t.pokemonId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$PokemonStatsTableAnnotationComposer(
            $db: $db,
            $table: $db.pokemonStats,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }

  Expression<T> pokemonAbilitiesRefs<T extends Object>(
    Expression<T> Function($$PokemonAbilitiesTableAnnotationComposer a) f,
  ) {
    final $$PokemonAbilitiesTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.pokemonAbilities,
      getReferencedColumn: (t) => t.pokemonId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$PokemonAbilitiesTableAnnotationComposer(
            $db: $db,
            $table: $db.pokemonAbilities,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }

  Expression<T> pokemonMovesRefs<T extends Object>(
    Expression<T> Function($$PokemonMovesTableAnnotationComposer a) f,
  ) {
    final $$PokemonMovesTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.pokemonMoves,
      getReferencedColumn: (t) => t.pokemonId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$PokemonMovesTableAnnotationComposer(
            $db: $db,
            $table: $db.pokemonMoves,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }

  Expression<T> pokemonImagesRefs<T extends Object>(
    Expression<T> Function($$PokemonImagesTableAnnotationComposer a) f,
  ) {
    final $$PokemonImagesTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.pokemonImages,
      getReferencedColumn: (t) => t.pokemonId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$PokemonImagesTableAnnotationComposer(
            $db: $db,
            $table: $db.pokemonImages,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }

  Expression<T> pokemonGameAppearancesRefs<T extends Object>(
    Expression<T> Function($$PokemonGameAppearancesTableAnnotationComposer a) f,
  ) {
    final $$PokemonGameAppearancesTableAnnotationComposer composer =
        $composerBuilder(
          composer: this,
          getCurrentColumn: (t) => t.id,
          referencedTable: $db.pokemonGameAppearances,
          getReferencedColumn: (t) => t.pokemonId,
          builder:
              (
                joinBuilder, {
                $addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer,
              }) => $$PokemonGameAppearancesTableAnnotationComposer(
                $db: $db,
                $table: $db.pokemonGameAppearances,
                $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
                joinBuilder: joinBuilder,
                $removeJoinBuilderFromRootComposer:
                    $removeJoinBuilderFromRootComposer,
              ),
        );
    return f(composer);
  }

  Expression<T> favoritesRefs<T extends Object>(
    Expression<T> Function($$FavoritesTableAnnotationComposer a) f,
  ) {
    final $$FavoritesTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.favorites,
      getReferencedColumn: (t) => t.pokemonId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$FavoritesTableAnnotationComposer(
            $db: $db,
            $table: $db.favorites,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }
}

class $$PokemonsTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $PokemonsTable,
          PokemonRow,
          $$PokemonsTableFilterComposer,
          $$PokemonsTableOrderingComposer,
          $$PokemonsTableAnnotationComposer,
          $$PokemonsTableCreateCompanionBuilder,
          $$PokemonsTableUpdateCompanionBuilder,
          (PokemonRow, $$PokemonsTableReferences),
          PokemonRow,
          PrefetchHooks Function({
            bool speciesId,
            bool pokemonTypesRefs,
            bool pokemonStatsRefs,
            bool pokemonAbilitiesRefs,
            bool pokemonMovesRefs,
            bool pokemonImagesRefs,
            bool pokemonGameAppearancesRefs,
            bool favoritesRefs,
          })
        > {
  $$PokemonsTableTableManager(_$AppDatabase db, $PokemonsTable table)
    : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$PokemonsTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$PokemonsTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$PokemonsTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                Value<int?> speciesId = const Value.absent(),
                Value<String> name = const Value.absent(),
                Value<int?> height = const Value.absent(),
                Value<int?> weight = const Value.absent(),
                Value<int?> baseStatTotal = const Value.absent(),
                Value<bool> isDefault = const Value.absent(),
                Value<DateTime> updatedAt = const Value.absent(),
              }) => PokemonsCompanion(
                id: id,
                speciesId: speciesId,
                name: name,
                height: height,
                weight: weight,
                baseStatTotal: baseStatTotal,
                isDefault: isDefault,
                updatedAt: updatedAt,
              ),
          createCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                Value<int?> speciesId = const Value.absent(),
                required String name,
                Value<int?> height = const Value.absent(),
                Value<int?> weight = const Value.absent(),
                Value<int?> baseStatTotal = const Value.absent(),
                Value<bool> isDefault = const Value.absent(),
                required DateTime updatedAt,
              }) => PokemonsCompanion.insert(
                id: id,
                speciesId: speciesId,
                name: name,
                height: height,
                weight: weight,
                baseStatTotal: baseStatTotal,
                isDefault: isDefault,
                updatedAt: updatedAt,
              ),
          withReferenceMapper: (p0) => p0
              .map(
                (e) => (
                  e.readTable<$PokemonsTable, PokemonRow>(table),
                  $$PokemonsTableReferences(db, table, e),
                ),
              )
              .toList(),
          prefetchHooksCallback:
              ({
                speciesId = false,
                pokemonTypesRefs = false,
                pokemonStatsRefs = false,
                pokemonAbilitiesRefs = false,
                pokemonMovesRefs = false,
                pokemonImagesRefs = false,
                pokemonGameAppearancesRefs = false,
                favoritesRefs = false,
              }) {
                return PrefetchHooks(
                  db: db,
                  explicitlyWatchedTables: [
                    if (pokemonTypesRefs) db.pokemonTypes,
                    if (pokemonStatsRefs) db.pokemonStats,
                    if (pokemonAbilitiesRefs) db.pokemonAbilities,
                    if (pokemonMovesRefs) db.pokemonMoves,
                    if (pokemonImagesRefs) db.pokemonImages,
                    if (pokemonGameAppearancesRefs) db.pokemonGameAppearances,
                    if (favoritesRefs) db.favorites,
                  ],
                  addJoins:
                      <
                        T extends TableManagerState<
                          dynamic,
                          dynamic,
                          dynamic,
                          dynamic,
                          dynamic,
                          dynamic,
                          dynamic,
                          dynamic,
                          dynamic,
                          dynamic,
                          dynamic
                        >
                      >(state) {
                        if (speciesId) {
                          state = state.withJoin(
                            currentTable: table,
                            currentColumn: table.speciesId,
                            referencedTable: $$PokemonsTableReferences
                                ._speciesIdTable(db),
                            referencedColumn: $$PokemonsTableReferences
                                ._speciesIdTable(db)
                                .id,
                          ) as T;
                        }

                        return state;
                      },
                  getPrefetchedDataCallback: (items) async {
                    return [
                      if (pokemonTypesRefs)
                        await $_getPrefetchedDataByColumns<
                          PokemonRow,
                          $PokemonsTable,
                          PokemonType,
                          $PokemonTypesTable
                        >(
                          currentTable: table,
                          referencedTable: $$PokemonsTableReferences
                              ._pokemonTypesRefsTable(db),
                          managerFromTypedResult: (p0) =>
                              $$PokemonsTableReferences(
                                db,
                                table,
                                p0,
                              ).pokemonTypesRefs,
                          currentColumn: 'id',
                          referencedColumn: 'pokemon_id',
                          typedResults: items,
                        ),
                      if (pokemonStatsRefs)
                        await $_getPrefetchedDataByColumns<
                          PokemonRow,
                          $PokemonsTable,
                          PokemonStat,
                          $PokemonStatsTable
                        >(
                          currentTable: table,
                          referencedTable: $$PokemonsTableReferences
                              ._pokemonStatsRefsTable(db),
                          managerFromTypedResult: (p0) =>
                              $$PokemonsTableReferences(
                                db,
                                table,
                                p0,
                              ).pokemonStatsRefs,
                          currentColumn: 'id',
                          referencedColumn: 'pokemon_id',
                          typedResults: items,
                        ),
                      if (pokemonAbilitiesRefs)
                        await $_getPrefetchedDataByColumns<
                          PokemonRow,
                          $PokemonsTable,
                          PokemonAbility,
                          $PokemonAbilitiesTable
                        >(
                          currentTable: table,
                          referencedTable: $$PokemonsTableReferences
                              ._pokemonAbilitiesRefsTable(db),
                          managerFromTypedResult: (p0) =>
                              $$PokemonsTableReferences(
                                db,
                                table,
                                p0,
                              ).pokemonAbilitiesRefs,
                          currentColumn: 'id',
                          referencedColumn: 'pokemon_id',
                          typedResults: items,
                        ),
                      if (pokemonMovesRefs)
                        await $_getPrefetchedDataByColumns<
                          PokemonRow,
                          $PokemonsTable,
                          PokemonMove,
                          $PokemonMovesTable
                        >(
                          currentTable: table,
                          referencedTable: $$PokemonsTableReferences
                              ._pokemonMovesRefsTable(db),
                          managerFromTypedResult: (p0) =>
                              $$PokemonsTableReferences(
                                db,
                                table,
                                p0,
                              ).pokemonMovesRefs,
                          currentColumn: 'id',
                          referencedColumn: 'pokemon_id',
                          typedResults: items,
                        ),
                      if (pokemonImagesRefs)
                        await $_getPrefetchedDataByColumns<
                          PokemonRow,
                          $PokemonsTable,
                          PokemonImage,
                          $PokemonImagesTable
                        >(
                          currentTable: table,
                          referencedTable: $$PokemonsTableReferences
                              ._pokemonImagesRefsTable(db),
                          managerFromTypedResult: (p0) =>
                              $$PokemonsTableReferences(
                                db,
                                table,
                                p0,
                              ).pokemonImagesRefs,
                          currentColumn: 'id',
                          referencedColumn: 'pokemon_id',
                          typedResults: items,
                        ),
                      if (pokemonGameAppearancesRefs)
                        await $_getPrefetchedDataByColumns<
                          PokemonRow,
                          $PokemonsTable,
                          PokemonGameAppearance,
                          $PokemonGameAppearancesTable
                        >(
                          currentTable: table,
                          referencedTable: $$PokemonsTableReferences
                              ._pokemonGameAppearancesRefsTable(db),
                          managerFromTypedResult: (p0) =>
                              $$PokemonsTableReferences(
                                db,
                                table,
                                p0,
                              ).pokemonGameAppearancesRefs,
                          currentColumn: 'id',
                          referencedColumn: 'pokemon_id',
                          typedResults: items,
                        ),
                      if (favoritesRefs)
                        await $_getPrefetchedDataByColumns<
                          PokemonRow,
                          $PokemonsTable,
                          Favorite,
                          $FavoritesTable
                        >(
                          currentTable: table,
                          referencedTable: $$PokemonsTableReferences
                              ._favoritesRefsTable(db),
                          managerFromTypedResult: (p0) =>
                              $$PokemonsTableReferences(
                                db,
                                table,
                                p0,
                              ).favoritesRefs,
                          currentColumn: 'id',
                          referencedColumn: 'pokemon_id',
                          typedResults: items,
                        ),
                    ];
                  },
                );
              },
        ),
      );
}

typedef $$PokemonsTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $PokemonsTable,
      PokemonRow,
      $$PokemonsTableFilterComposer,
      $$PokemonsTableOrderingComposer,
      $$PokemonsTableAnnotationComposer,
      $$PokemonsTableCreateCompanionBuilder,
      $$PokemonsTableUpdateCompanionBuilder,
      (PokemonRow, $$PokemonsTableReferences),
      PokemonRow,
      PrefetchHooks Function({
        bool speciesId,
        bool pokemonTypesRefs,
        bool pokemonStatsRefs,
        bool pokemonAbilitiesRefs,
        bool pokemonMovesRefs,
        bool pokemonImagesRefs,
        bool pokemonGameAppearancesRefs,
        bool favoritesRefs,
      })
    >;
typedef $$TypesTableCreateCompanionBuilder = TypesCompanion Function({
  Value<int> id,
  required String name,
});
typedef $$TypesTableUpdateCompanionBuilder = TypesCompanion Function({
  Value<int> id,
  Value<String> name,
});

final class $$TypesTableReferences
    extends BaseReferences<_$AppDatabase, $TypesTable, Type> {
  $$TypesTableReferences(super.$_db, super.$_table, super.$_typedResult);

  static MultiTypedResultKey<$PokemonTypesTable, List<PokemonType>>
  _pokemonTypesRefsTable(_$AppDatabase db) => MultiTypedResultKey.fromTable(
    db.pokemonTypes,
    aliasName: 'types__id__pokemon_types__type_id',
  );

  $$PokemonTypesTableProcessedTableManager get pokemonTypesRefs {
    final manager = $$PokemonTypesTableTableManager(
      $_db,
      $_db.pokemonTypes,
    ).filter((f) => f.typeId.id.sqlEquals($_itemColumn<int>('id')!));

    final cache = $_typedResult.readTableOrNull(_pokemonTypesRefsTable($_db));
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: cache),
    );
  }
}

class $$TypesTableFilterComposer extends Composer<_$AppDatabase, $TypesTable> {
  $$TypesTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get name => $composableBuilder(
    column: $table.name,
    builder: (column) => ColumnFilters(column),
  );

  Expression<bool> pokemonTypesRefs(
    Expression<bool> Function($$PokemonTypesTableFilterComposer f) f,
  ) {
    final $$PokemonTypesTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.pokemonTypes,
      getReferencedColumn: (t) => t.typeId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$PokemonTypesTableFilterComposer(
            $db: $db,
            $table: $db.pokemonTypes,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }
}

class $$TypesTableOrderingComposer
    extends Composer<_$AppDatabase, $TypesTable> {
  $$TypesTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get name => $composableBuilder(
    column: $table.name,
    builder: (column) => ColumnOrderings(column),
  );
}

class $$TypesTableAnnotationComposer
    extends Composer<_$AppDatabase, $TypesTable> {
  $$TypesTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get name =>
      $composableBuilder(column: $table.name, builder: (column) => column);

  Expression<T> pokemonTypesRefs<T extends Object>(
    Expression<T> Function($$PokemonTypesTableAnnotationComposer a) f,
  ) {
    final $$PokemonTypesTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.pokemonTypes,
      getReferencedColumn: (t) => t.typeId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$PokemonTypesTableAnnotationComposer(
            $db: $db,
            $table: $db.pokemonTypes,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }
}

class $$TypesTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $TypesTable,
          Type,
          $$TypesTableFilterComposer,
          $$TypesTableOrderingComposer,
          $$TypesTableAnnotationComposer,
          $$TypesTableCreateCompanionBuilder,
          $$TypesTableUpdateCompanionBuilder,
          (Type, $$TypesTableReferences),
          Type,
          PrefetchHooks Function({bool pokemonTypesRefs})
        > {
  $$TypesTableTableManager(_$AppDatabase db, $TypesTable table)
    : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$TypesTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$TypesTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$TypesTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback: ({
            Value<int> id = const Value.absent(),
            Value<String> name = const Value.absent(),
          }) => TypesCompanion(id: id, name: name),
          createCompanionCallback: ({
            Value<int> id = const Value.absent(),
            required String name,
          }) => TypesCompanion.insert(id: id, name: name),
          withReferenceMapper: (p0) => p0
              .map(
                (e) => (
                  e.readTable<$TypesTable, Type>(table),
                  $$TypesTableReferences(db, table, e),
                ),
              )
              .toList(),
          prefetchHooksCallback: ({pokemonTypesRefs = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [if (pokemonTypesRefs) db.pokemonTypes],
              addJoins: null,
              getPrefetchedDataCallback: (items) async {
                return [
                  if (pokemonTypesRefs)
                    await $_getPrefetchedDataByColumns<
                      Type,
                      $TypesTable,
                      PokemonType,
                      $PokemonTypesTable
                    >(
                      currentTable: table,
                      referencedTable: $$TypesTableReferences
                          ._pokemonTypesRefsTable(db),
                      managerFromTypedResult: (p0) => $$TypesTableReferences(
                        db,
                        table,
                        p0,
                      ).pokemonTypesRefs,
                      currentColumn: 'id',
                      referencedColumn: 'type_id',
                      typedResults: items,
                    ),
                ];
              },
            );
          },
        ),
      );
}

typedef $$TypesTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $TypesTable,
      Type,
      $$TypesTableFilterComposer,
      $$TypesTableOrderingComposer,
      $$TypesTableAnnotationComposer,
      $$TypesTableCreateCompanionBuilder,
      $$TypesTableUpdateCompanionBuilder,
      (Type, $$TypesTableReferences),
      Type,
      PrefetchHooks Function({bool pokemonTypesRefs})
    >;
typedef $$PokemonTypesTableCreateCompanionBuilder =
    PokemonTypesCompanion Function({
      required int pokemonId,
      required int typeId,
      required int slot,
      Value<int> rowid,
    });
typedef $$PokemonTypesTableUpdateCompanionBuilder =
    PokemonTypesCompanion Function({
      Value<int> pokemonId,
      Value<int> typeId,
      Value<int> slot,
      Value<int> rowid,
    });

final class $$PokemonTypesTableReferences
    extends BaseReferences<_$AppDatabase, $PokemonTypesTable, PokemonType> {
  $$PokemonTypesTableReferences(super.$_db, super.$_table, super.$_typedResult);

  static $PokemonsTable _pokemonIdTable(_$AppDatabase db) =>
      db.pokemons.createAlias('pokemon_types__pokemon_id__pokemons__id');

  $$PokemonsTableProcessedTableManager get pokemonId {
    final $_column = $_itemColumn<int>('pokemon_id')!;

    final manager = $$PokemonsTableTableManager(
      $_db,
      $_db.pokemons,
    ).filter((f) => f.id.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_pokemonIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: [item]),
    );
  }

  static $TypesTable _typeIdTable(_$AppDatabase db) =>
      db.types.createAlias('pokemon_types__type_id__types__id');

  $$TypesTableProcessedTableManager get typeId {
    final $_column = $_itemColumn<int>('type_id')!;

    final manager = $$TypesTableTableManager(
      $_db,
      $_db.types,
    ).filter((f) => f.id.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_typeIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: [item]),
    );
  }
}

class $$PokemonTypesTableFilterComposer
    extends Composer<_$AppDatabase, $PokemonTypesTable> {
  $$PokemonTypesTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get slot => $composableBuilder(
    column: $table.slot,
    builder: (column) => ColumnFilters(column),
  );

  $$PokemonsTableFilterComposer get pokemonId {
    final $$PokemonsTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.pokemonId,
      referencedTable: $db.pokemons,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$PokemonsTableFilterComposer(
            $db: $db,
            $table: $db.pokemons,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }

  $$TypesTableFilterComposer get typeId {
    final $$TypesTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.typeId,
      referencedTable: $db.types,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$TypesTableFilterComposer(
            $db: $db,
            $table: $db.types,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$PokemonTypesTableOrderingComposer
    extends Composer<_$AppDatabase, $PokemonTypesTable> {
  $$PokemonTypesTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get slot => $composableBuilder(
    column: $table.slot,
    builder: (column) => ColumnOrderings(column),
  );

  $$PokemonsTableOrderingComposer get pokemonId {
    final $$PokemonsTableOrderingComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.pokemonId,
      referencedTable: $db.pokemons,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$PokemonsTableOrderingComposer(
            $db: $db,
            $table: $db.pokemons,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }

  $$TypesTableOrderingComposer get typeId {
    final $$TypesTableOrderingComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.typeId,
      referencedTable: $db.types,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$TypesTableOrderingComposer(
            $db: $db,
            $table: $db.types,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$PokemonTypesTableAnnotationComposer
    extends Composer<_$AppDatabase, $PokemonTypesTable> {
  $$PokemonTypesTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get slot =>
      $composableBuilder(column: $table.slot, builder: (column) => column);

  $$PokemonsTableAnnotationComposer get pokemonId {
    final $$PokemonsTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.pokemonId,
      referencedTable: $db.pokemons,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$PokemonsTableAnnotationComposer(
            $db: $db,
            $table: $db.pokemons,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }

  $$TypesTableAnnotationComposer get typeId {
    final $$TypesTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.typeId,
      referencedTable: $db.types,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$TypesTableAnnotationComposer(
            $db: $db,
            $table: $db.types,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$PokemonTypesTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $PokemonTypesTable,
          PokemonType,
          $$PokemonTypesTableFilterComposer,
          $$PokemonTypesTableOrderingComposer,
          $$PokemonTypesTableAnnotationComposer,
          $$PokemonTypesTableCreateCompanionBuilder,
          $$PokemonTypesTableUpdateCompanionBuilder,
          (PokemonType, $$PokemonTypesTableReferences),
          PokemonType,
          PrefetchHooks Function({bool pokemonId, bool typeId})
        > {
  $$PokemonTypesTableTableManager(_$AppDatabase db, $PokemonTypesTable table)
    : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$PokemonTypesTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$PokemonTypesTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$PokemonTypesTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<int> pokemonId = const Value.absent(),
                Value<int> typeId = const Value.absent(),
                Value<int> slot = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => PokemonTypesCompanion(
                pokemonId: pokemonId,
                typeId: typeId,
                slot: slot,
                rowid: rowid,
              ),
          createCompanionCallback:
              ({
                required int pokemonId,
                required int typeId,
                required int slot,
                Value<int> rowid = const Value.absent(),
              }) => PokemonTypesCompanion.insert(
                pokemonId: pokemonId,
                typeId: typeId,
                slot: slot,
                rowid: rowid,
              ),
          withReferenceMapper: (p0) => p0
              .map(
                (e) => (
                  e.readTable<$PokemonTypesTable, PokemonType>(table),
                  $$PokemonTypesTableReferences(db, table, e),
                ),
              )
              .toList(),
          prefetchHooksCallback: ({pokemonId = false, typeId = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [],
              addJoins:
                  <
                    T extends TableManagerState<
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic
                    >
                  >(state) {
                    if (pokemonId) {
                      state = state.withJoin(
                        currentTable: table,
                        currentColumn: table.pokemonId,
                        referencedTable: $$PokemonTypesTableReferences
                            ._pokemonIdTable(db),
                        referencedColumn: $$PokemonTypesTableReferences
                            ._pokemonIdTable(db)
                            .id,
                      ) as T;
                    }
                    if (typeId) {
                      state = state.withJoin(
                        currentTable: table,
                        currentColumn: table.typeId,
                        referencedTable: $$PokemonTypesTableReferences
                            ._typeIdTable(db),
                        referencedColumn: $$PokemonTypesTableReferences
                            ._typeIdTable(db)
                            .id,
                      ) as T;
                    }

                    return state;
                  },
              getPrefetchedDataCallback: (items) async {
                return [];
              },
            );
          },
        ),
      );
}

typedef $$PokemonTypesTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $PokemonTypesTable,
      PokemonType,
      $$PokemonTypesTableFilterComposer,
      $$PokemonTypesTableOrderingComposer,
      $$PokemonTypesTableAnnotationComposer,
      $$PokemonTypesTableCreateCompanionBuilder,
      $$PokemonTypesTableUpdateCompanionBuilder,
      (PokemonType, $$PokemonTypesTableReferences),
      PokemonType,
      PrefetchHooks Function({bool pokemonId, bool typeId})
    >;
typedef $$PokemonStatsTableCreateCompanionBuilder =
    PokemonStatsCompanion Function({
      required int pokemonId,
      required String statName,
      required int baseValue,
      Value<int> rowid,
    });
typedef $$PokemonStatsTableUpdateCompanionBuilder =
    PokemonStatsCompanion Function({
      Value<int> pokemonId,
      Value<String> statName,
      Value<int> baseValue,
      Value<int> rowid,
    });

final class $$PokemonStatsTableReferences
    extends BaseReferences<_$AppDatabase, $PokemonStatsTable, PokemonStat> {
  $$PokemonStatsTableReferences(super.$_db, super.$_table, super.$_typedResult);

  static $PokemonsTable _pokemonIdTable(_$AppDatabase db) =>
      db.pokemons.createAlias('pokemon_stats__pokemon_id__pokemons__id');

  $$PokemonsTableProcessedTableManager get pokemonId {
    final $_column = $_itemColumn<int>('pokemon_id')!;

    final manager = $$PokemonsTableTableManager(
      $_db,
      $_db.pokemons,
    ).filter((f) => f.id.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_pokemonIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: [item]),
    );
  }
}

class $$PokemonStatsTableFilterComposer
    extends Composer<_$AppDatabase, $PokemonStatsTable> {
  $$PokemonStatsTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get statName => $composableBuilder(
    column: $table.statName,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get baseValue => $composableBuilder(
    column: $table.baseValue,
    builder: (column) => ColumnFilters(column),
  );

  $$PokemonsTableFilterComposer get pokemonId {
    final $$PokemonsTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.pokemonId,
      referencedTable: $db.pokemons,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$PokemonsTableFilterComposer(
            $db: $db,
            $table: $db.pokemons,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$PokemonStatsTableOrderingComposer
    extends Composer<_$AppDatabase, $PokemonStatsTable> {
  $$PokemonStatsTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get statName => $composableBuilder(
    column: $table.statName,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get baseValue => $composableBuilder(
    column: $table.baseValue,
    builder: (column) => ColumnOrderings(column),
  );

  $$PokemonsTableOrderingComposer get pokemonId {
    final $$PokemonsTableOrderingComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.pokemonId,
      referencedTable: $db.pokemons,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$PokemonsTableOrderingComposer(
            $db: $db,
            $table: $db.pokemons,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$PokemonStatsTableAnnotationComposer
    extends Composer<_$AppDatabase, $PokemonStatsTable> {
  $$PokemonStatsTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get statName =>
      $composableBuilder(column: $table.statName, builder: (column) => column);

  GeneratedColumn<int> get baseValue =>
      $composableBuilder(column: $table.baseValue, builder: (column) => column);

  $$PokemonsTableAnnotationComposer get pokemonId {
    final $$PokemonsTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.pokemonId,
      referencedTable: $db.pokemons,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$PokemonsTableAnnotationComposer(
            $db: $db,
            $table: $db.pokemons,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$PokemonStatsTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $PokemonStatsTable,
          PokemonStat,
          $$PokemonStatsTableFilterComposer,
          $$PokemonStatsTableOrderingComposer,
          $$PokemonStatsTableAnnotationComposer,
          $$PokemonStatsTableCreateCompanionBuilder,
          $$PokemonStatsTableUpdateCompanionBuilder,
          (PokemonStat, $$PokemonStatsTableReferences),
          PokemonStat,
          PrefetchHooks Function({bool pokemonId})
        > {
  $$PokemonStatsTableTableManager(_$AppDatabase db, $PokemonStatsTable table)
    : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$PokemonStatsTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$PokemonStatsTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$PokemonStatsTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<int> pokemonId = const Value.absent(),
                Value<String> statName = const Value.absent(),
                Value<int> baseValue = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => PokemonStatsCompanion(
                pokemonId: pokemonId,
                statName: statName,
                baseValue: baseValue,
                rowid: rowid,
              ),
          createCompanionCallback:
              ({
                required int pokemonId,
                required String statName,
                required int baseValue,
                Value<int> rowid = const Value.absent(),
              }) => PokemonStatsCompanion.insert(
                pokemonId: pokemonId,
                statName: statName,
                baseValue: baseValue,
                rowid: rowid,
              ),
          withReferenceMapper: (p0) => p0
              .map(
                (e) => (
                  e.readTable<$PokemonStatsTable, PokemonStat>(table),
                  $$PokemonStatsTableReferences(db, table, e),
                ),
              )
              .toList(),
          prefetchHooksCallback: ({pokemonId = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [],
              addJoins:
                  <
                    T extends TableManagerState<
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic
                    >
                  >(state) {
                    if (pokemonId) {
                      state = state.withJoin(
                        currentTable: table,
                        currentColumn: table.pokemonId,
                        referencedTable: $$PokemonStatsTableReferences
                            ._pokemonIdTable(db),
                        referencedColumn: $$PokemonStatsTableReferences
                            ._pokemonIdTable(db)
                            .id,
                      ) as T;
                    }

                    return state;
                  },
              getPrefetchedDataCallback: (items) async {
                return [];
              },
            );
          },
        ),
      );
}

typedef $$PokemonStatsTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $PokemonStatsTable,
      PokemonStat,
      $$PokemonStatsTableFilterComposer,
      $$PokemonStatsTableOrderingComposer,
      $$PokemonStatsTableAnnotationComposer,
      $$PokemonStatsTableCreateCompanionBuilder,
      $$PokemonStatsTableUpdateCompanionBuilder,
      (PokemonStat, $$PokemonStatsTableReferences),
      PokemonStat,
      PrefetchHooks Function({bool pokemonId})
    >;
typedef $$AbilitiesTableCreateCompanionBuilder = AbilitiesCompanion Function({
  Value<int> id,
  required String name,
  Value<String?> effectEs,
  Value<String?> effectEn,
});
typedef $$AbilitiesTableUpdateCompanionBuilder = AbilitiesCompanion Function({
  Value<int> id,
  Value<String> name,
  Value<String?> effectEs,
  Value<String?> effectEn,
});

final class $$AbilitiesTableReferences
    extends BaseReferences<_$AppDatabase, $AbilitiesTable, Ability> {
  $$AbilitiesTableReferences(super.$_db, super.$_table, super.$_typedResult);

  static MultiTypedResultKey<$PokemonAbilitiesTable, List<PokemonAbility>>
  _pokemonAbilitiesRefsTable(_$AppDatabase db) => MultiTypedResultKey.fromTable(
    db.pokemonAbilities,
    aliasName: 'abilities__id__pokemon_abilities__ability_id',
  );

  $$PokemonAbilitiesTableProcessedTableManager get pokemonAbilitiesRefs {
    final manager = $$PokemonAbilitiesTableTableManager(
      $_db,
      $_db.pokemonAbilities,
    ).filter((f) => f.abilityId.id.sqlEquals($_itemColumn<int>('id')!));

    final cache = $_typedResult.readTableOrNull(
      _pokemonAbilitiesRefsTable($_db),
    );
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: cache),
    );
  }
}

class $$AbilitiesTableFilterComposer
    extends Composer<_$AppDatabase, $AbilitiesTable> {
  $$AbilitiesTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get name => $composableBuilder(
    column: $table.name,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get effectEs => $composableBuilder(
    column: $table.effectEs,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get effectEn => $composableBuilder(
    column: $table.effectEn,
    builder: (column) => ColumnFilters(column),
  );

  Expression<bool> pokemonAbilitiesRefs(
    Expression<bool> Function($$PokemonAbilitiesTableFilterComposer f) f,
  ) {
    final $$PokemonAbilitiesTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.pokemonAbilities,
      getReferencedColumn: (t) => t.abilityId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$PokemonAbilitiesTableFilterComposer(
            $db: $db,
            $table: $db.pokemonAbilities,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }
}

class $$AbilitiesTableOrderingComposer
    extends Composer<_$AppDatabase, $AbilitiesTable> {
  $$AbilitiesTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get name => $composableBuilder(
    column: $table.name,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get effectEs => $composableBuilder(
    column: $table.effectEs,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get effectEn => $composableBuilder(
    column: $table.effectEn,
    builder: (column) => ColumnOrderings(column),
  );
}

class $$AbilitiesTableAnnotationComposer
    extends Composer<_$AppDatabase, $AbilitiesTable> {
  $$AbilitiesTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get name =>
      $composableBuilder(column: $table.name, builder: (column) => column);

  GeneratedColumn<String> get effectEs =>
      $composableBuilder(column: $table.effectEs, builder: (column) => column);

  GeneratedColumn<String> get effectEn =>
      $composableBuilder(column: $table.effectEn, builder: (column) => column);

  Expression<T> pokemonAbilitiesRefs<T extends Object>(
    Expression<T> Function($$PokemonAbilitiesTableAnnotationComposer a) f,
  ) {
    final $$PokemonAbilitiesTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.pokemonAbilities,
      getReferencedColumn: (t) => t.abilityId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$PokemonAbilitiesTableAnnotationComposer(
            $db: $db,
            $table: $db.pokemonAbilities,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }
}

class $$AbilitiesTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $AbilitiesTable,
          Ability,
          $$AbilitiesTableFilterComposer,
          $$AbilitiesTableOrderingComposer,
          $$AbilitiesTableAnnotationComposer,
          $$AbilitiesTableCreateCompanionBuilder,
          $$AbilitiesTableUpdateCompanionBuilder,
          (Ability, $$AbilitiesTableReferences),
          Ability,
          PrefetchHooks Function({bool pokemonAbilitiesRefs})
        > {
  $$AbilitiesTableTableManager(_$AppDatabase db, $AbilitiesTable table)
    : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$AbilitiesTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$AbilitiesTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$AbilitiesTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                Value<String> name = const Value.absent(),
                Value<String?> effectEs = const Value.absent(),
                Value<String?> effectEn = const Value.absent(),
              }) => AbilitiesCompanion(
                id: id,
                name: name,
                effectEs: effectEs,
                effectEn: effectEn,
              ),
          createCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                required String name,
                Value<String?> effectEs = const Value.absent(),
                Value<String?> effectEn = const Value.absent(),
              }) => AbilitiesCompanion.insert(
                id: id,
                name: name,
                effectEs: effectEs,
                effectEn: effectEn,
              ),
          withReferenceMapper: (p0) => p0
              .map(
                (e) => (
                  e.readTable<$AbilitiesTable, Ability>(table),
                  $$AbilitiesTableReferences(db, table, e),
                ),
              )
              .toList(),
          prefetchHooksCallback: ({pokemonAbilitiesRefs = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [
                if (pokemonAbilitiesRefs) db.pokemonAbilities,
              ],
              addJoins: null,
              getPrefetchedDataCallback: (items) async {
                return [
                  if (pokemonAbilitiesRefs)
                    await $_getPrefetchedDataByColumns<
                      Ability,
                      $AbilitiesTable,
                      PokemonAbility,
                      $PokemonAbilitiesTable
                    >(
                      currentTable: table,
                      referencedTable: $$AbilitiesTableReferences
                          ._pokemonAbilitiesRefsTable(db),
                      managerFromTypedResult: (p0) =>
                          $$AbilitiesTableReferences(
                            db,
                            table,
                            p0,
                          ).pokemonAbilitiesRefs,
                      currentColumn: 'id',
                      referencedColumn: 'ability_id',
                      typedResults: items,
                    ),
                ];
              },
            );
          },
        ),
      );
}

typedef $$AbilitiesTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $AbilitiesTable,
      Ability,
      $$AbilitiesTableFilterComposer,
      $$AbilitiesTableOrderingComposer,
      $$AbilitiesTableAnnotationComposer,
      $$AbilitiesTableCreateCompanionBuilder,
      $$AbilitiesTableUpdateCompanionBuilder,
      (Ability, $$AbilitiesTableReferences),
      Ability,
      PrefetchHooks Function({bool pokemonAbilitiesRefs})
    >;
typedef $$PokemonAbilitiesTableCreateCompanionBuilder =
    PokemonAbilitiesCompanion Function({
      required int pokemonId,
      required int abilityId,
      required int slot,
      Value<bool> isHidden,
      Value<int> rowid,
    });
typedef $$PokemonAbilitiesTableUpdateCompanionBuilder =
    PokemonAbilitiesCompanion Function({
      Value<int> pokemonId,
      Value<int> abilityId,
      Value<int> slot,
      Value<bool> isHidden,
      Value<int> rowid,
    });

final class $$PokemonAbilitiesTableReferences
    extends
        BaseReferences<_$AppDatabase, $PokemonAbilitiesTable, PokemonAbility> {
  $$PokemonAbilitiesTableReferences(
    super.$_db,
    super.$_table,
    super.$_typedResult,
  );

  static $PokemonsTable _pokemonIdTable(_$AppDatabase db) =>
      db.pokemons.createAlias('pokemon_abilities__pokemon_id__pokemons__id');

  $$PokemonsTableProcessedTableManager get pokemonId {
    final $_column = $_itemColumn<int>('pokemon_id')!;

    final manager = $$PokemonsTableTableManager(
      $_db,
      $_db.pokemons,
    ).filter((f) => f.id.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_pokemonIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: [item]),
    );
  }

  static $AbilitiesTable _abilityIdTable(_$AppDatabase db) =>
      db.abilities.createAlias('pokemon_abilities__ability_id__abilities__id');

  $$AbilitiesTableProcessedTableManager get abilityId {
    final $_column = $_itemColumn<int>('ability_id')!;

    final manager = $$AbilitiesTableTableManager(
      $_db,
      $_db.abilities,
    ).filter((f) => f.id.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_abilityIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: [item]),
    );
  }
}

class $$PokemonAbilitiesTableFilterComposer
    extends Composer<_$AppDatabase, $PokemonAbilitiesTable> {
  $$PokemonAbilitiesTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get slot => $composableBuilder(
    column: $table.slot,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<bool> get isHidden => $composableBuilder(
    column: $table.isHidden,
    builder: (column) => ColumnFilters(column),
  );

  $$PokemonsTableFilterComposer get pokemonId {
    final $$PokemonsTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.pokemonId,
      referencedTable: $db.pokemons,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$PokemonsTableFilterComposer(
            $db: $db,
            $table: $db.pokemons,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }

  $$AbilitiesTableFilterComposer get abilityId {
    final $$AbilitiesTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.abilityId,
      referencedTable: $db.abilities,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$AbilitiesTableFilterComposer(
            $db: $db,
            $table: $db.abilities,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$PokemonAbilitiesTableOrderingComposer
    extends Composer<_$AppDatabase, $PokemonAbilitiesTable> {
  $$PokemonAbilitiesTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get slot => $composableBuilder(
    column: $table.slot,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<bool> get isHidden => $composableBuilder(
    column: $table.isHidden,
    builder: (column) => ColumnOrderings(column),
  );

  $$PokemonsTableOrderingComposer get pokemonId {
    final $$PokemonsTableOrderingComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.pokemonId,
      referencedTable: $db.pokemons,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$PokemonsTableOrderingComposer(
            $db: $db,
            $table: $db.pokemons,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }

  $$AbilitiesTableOrderingComposer get abilityId {
    final $$AbilitiesTableOrderingComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.abilityId,
      referencedTable: $db.abilities,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$AbilitiesTableOrderingComposer(
            $db: $db,
            $table: $db.abilities,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$PokemonAbilitiesTableAnnotationComposer
    extends Composer<_$AppDatabase, $PokemonAbilitiesTable> {
  $$PokemonAbilitiesTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get slot =>
      $composableBuilder(column: $table.slot, builder: (column) => column);

  GeneratedColumn<bool> get isHidden =>
      $composableBuilder(column: $table.isHidden, builder: (column) => column);

  $$PokemonsTableAnnotationComposer get pokemonId {
    final $$PokemonsTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.pokemonId,
      referencedTable: $db.pokemons,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$PokemonsTableAnnotationComposer(
            $db: $db,
            $table: $db.pokemons,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }

  $$AbilitiesTableAnnotationComposer get abilityId {
    final $$AbilitiesTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.abilityId,
      referencedTable: $db.abilities,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$AbilitiesTableAnnotationComposer(
            $db: $db,
            $table: $db.abilities,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$PokemonAbilitiesTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $PokemonAbilitiesTable,
          PokemonAbility,
          $$PokemonAbilitiesTableFilterComposer,
          $$PokemonAbilitiesTableOrderingComposer,
          $$PokemonAbilitiesTableAnnotationComposer,
          $$PokemonAbilitiesTableCreateCompanionBuilder,
          $$PokemonAbilitiesTableUpdateCompanionBuilder,
          (PokemonAbility, $$PokemonAbilitiesTableReferences),
          PokemonAbility,
          PrefetchHooks Function({bool pokemonId, bool abilityId})
        > {
  $$PokemonAbilitiesTableTableManager(
    _$AppDatabase db,
    $PokemonAbilitiesTable table,
  ) : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$PokemonAbilitiesTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$PokemonAbilitiesTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$PokemonAbilitiesTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<int> pokemonId = const Value.absent(),
                Value<int> abilityId = const Value.absent(),
                Value<int> slot = const Value.absent(),
                Value<bool> isHidden = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => PokemonAbilitiesCompanion(
                pokemonId: pokemonId,
                abilityId: abilityId,
                slot: slot,
                isHidden: isHidden,
                rowid: rowid,
              ),
          createCompanionCallback:
              ({
                required int pokemonId,
                required int abilityId,
                required int slot,
                Value<bool> isHidden = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => PokemonAbilitiesCompanion.insert(
                pokemonId: pokemonId,
                abilityId: abilityId,
                slot: slot,
                isHidden: isHidden,
                rowid: rowid,
              ),
          withReferenceMapper: (p0) => p0
              .map(
                (e) => (
                  e.readTable<$PokemonAbilitiesTable, PokemonAbility>(table),
                  $$PokemonAbilitiesTableReferences(db, table, e),
                ),
              )
              .toList(),
          prefetchHooksCallback: ({pokemonId = false, abilityId = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [],
              addJoins:
                  <
                    T extends TableManagerState<
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic
                    >
                  >(state) {
                    if (pokemonId) {
                      state = state.withJoin(
                        currentTable: table,
                        currentColumn: table.pokemonId,
                        referencedTable: $$PokemonAbilitiesTableReferences
                            ._pokemonIdTable(db),
                        referencedColumn: $$PokemonAbilitiesTableReferences
                            ._pokemonIdTable(db)
                            .id,
                      ) as T;
                    }
                    if (abilityId) {
                      state = state.withJoin(
                        currentTable: table,
                        currentColumn: table.abilityId,
                        referencedTable: $$PokemonAbilitiesTableReferences
                            ._abilityIdTable(db),
                        referencedColumn: $$PokemonAbilitiesTableReferences
                            ._abilityIdTable(db)
                            .id,
                      ) as T;
                    }

                    return state;
                  },
              getPrefetchedDataCallback: (items) async {
                return [];
              },
            );
          },
        ),
      );
}

typedef $$PokemonAbilitiesTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $PokemonAbilitiesTable,
      PokemonAbility,
      $$PokemonAbilitiesTableFilterComposer,
      $$PokemonAbilitiesTableOrderingComposer,
      $$PokemonAbilitiesTableAnnotationComposer,
      $$PokemonAbilitiesTableCreateCompanionBuilder,
      $$PokemonAbilitiesTableUpdateCompanionBuilder,
      (PokemonAbility, $$PokemonAbilitiesTableReferences),
      PokemonAbility,
      PrefetchHooks Function({bool pokemonId, bool abilityId})
    >;
typedef $$MovesTableCreateCompanionBuilder = MovesCompanion Function({
  Value<int> id,
  required String name,
  Value<int?> typeId,
  Value<int?> power,
  Value<int?> accuracy,
  Value<int?> pp,
});
typedef $$MovesTableUpdateCompanionBuilder = MovesCompanion Function({
  Value<int> id,
  Value<String> name,
  Value<int?> typeId,
  Value<int?> power,
  Value<int?> accuracy,
  Value<int?> pp,
});

final class $$MovesTableReferences
    extends BaseReferences<_$AppDatabase, $MovesTable, Move> {
  $$MovesTableReferences(super.$_db, super.$_table, super.$_typedResult);

  static MultiTypedResultKey<$PokemonMovesTable, List<PokemonMove>>
  _pokemonMovesRefsTable(_$AppDatabase db) => MultiTypedResultKey.fromTable(
    db.pokemonMoves,
    aliasName: 'moves__id__pokemon_moves__move_id',
  );

  $$PokemonMovesTableProcessedTableManager get pokemonMovesRefs {
    final manager = $$PokemonMovesTableTableManager(
      $_db,
      $_db.pokemonMoves,
    ).filter((f) => f.moveId.id.sqlEquals($_itemColumn<int>('id')!));

    final cache = $_typedResult.readTableOrNull(_pokemonMovesRefsTable($_db));
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: cache),
    );
  }
}

class $$MovesTableFilterComposer extends Composer<_$AppDatabase, $MovesTable> {
  $$MovesTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get name => $composableBuilder(
    column: $table.name,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get typeId => $composableBuilder(
    column: $table.typeId,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get power => $composableBuilder(
    column: $table.power,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get accuracy => $composableBuilder(
    column: $table.accuracy,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get pp => $composableBuilder(
    column: $table.pp,
    builder: (column) => ColumnFilters(column),
  );

  Expression<bool> pokemonMovesRefs(
    Expression<bool> Function($$PokemonMovesTableFilterComposer f) f,
  ) {
    final $$PokemonMovesTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.pokemonMoves,
      getReferencedColumn: (t) => t.moveId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$PokemonMovesTableFilterComposer(
            $db: $db,
            $table: $db.pokemonMoves,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }
}

class $$MovesTableOrderingComposer
    extends Composer<_$AppDatabase, $MovesTable> {
  $$MovesTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get name => $composableBuilder(
    column: $table.name,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get typeId => $composableBuilder(
    column: $table.typeId,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get power => $composableBuilder(
    column: $table.power,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get accuracy => $composableBuilder(
    column: $table.accuracy,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get pp => $composableBuilder(
    column: $table.pp,
    builder: (column) => ColumnOrderings(column),
  );
}

class $$MovesTableAnnotationComposer
    extends Composer<_$AppDatabase, $MovesTable> {
  $$MovesTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get name =>
      $composableBuilder(column: $table.name, builder: (column) => column);

  GeneratedColumn<int> get typeId =>
      $composableBuilder(column: $table.typeId, builder: (column) => column);

  GeneratedColumn<int> get power =>
      $composableBuilder(column: $table.power, builder: (column) => column);

  GeneratedColumn<int> get accuracy =>
      $composableBuilder(column: $table.accuracy, builder: (column) => column);

  GeneratedColumn<int> get pp =>
      $composableBuilder(column: $table.pp, builder: (column) => column);

  Expression<T> pokemonMovesRefs<T extends Object>(
    Expression<T> Function($$PokemonMovesTableAnnotationComposer a) f,
  ) {
    final $$PokemonMovesTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.pokemonMoves,
      getReferencedColumn: (t) => t.moveId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$PokemonMovesTableAnnotationComposer(
            $db: $db,
            $table: $db.pokemonMoves,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }
}

class $$MovesTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $MovesTable,
          Move,
          $$MovesTableFilterComposer,
          $$MovesTableOrderingComposer,
          $$MovesTableAnnotationComposer,
          $$MovesTableCreateCompanionBuilder,
          $$MovesTableUpdateCompanionBuilder,
          (Move, $$MovesTableReferences),
          Move,
          PrefetchHooks Function({bool pokemonMovesRefs})
        > {
  $$MovesTableTableManager(_$AppDatabase db, $MovesTable table)
    : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$MovesTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$MovesTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$MovesTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                Value<String> name = const Value.absent(),
                Value<int?> typeId = const Value.absent(),
                Value<int?> power = const Value.absent(),
                Value<int?> accuracy = const Value.absent(),
                Value<int?> pp = const Value.absent(),
              }) => MovesCompanion(
                id: id,
                name: name,
                typeId: typeId,
                power: power,
                accuracy: accuracy,
                pp: pp,
              ),
          createCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                required String name,
                Value<int?> typeId = const Value.absent(),
                Value<int?> power = const Value.absent(),
                Value<int?> accuracy = const Value.absent(),
                Value<int?> pp = const Value.absent(),
              }) => MovesCompanion.insert(
                id: id,
                name: name,
                typeId: typeId,
                power: power,
                accuracy: accuracy,
                pp: pp,
              ),
          withReferenceMapper: (p0) => p0
              .map(
                (e) => (
                  e.readTable<$MovesTable, Move>(table),
                  $$MovesTableReferences(db, table, e),
                ),
              )
              .toList(),
          prefetchHooksCallback: ({pokemonMovesRefs = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [if (pokemonMovesRefs) db.pokemonMoves],
              addJoins: null,
              getPrefetchedDataCallback: (items) async {
                return [
                  if (pokemonMovesRefs)
                    await $_getPrefetchedDataByColumns<
                      Move,
                      $MovesTable,
                      PokemonMove,
                      $PokemonMovesTable
                    >(
                      currentTable: table,
                      referencedTable: $$MovesTableReferences
                          ._pokemonMovesRefsTable(db),
                      managerFromTypedResult: (p0) => $$MovesTableReferences(
                        db,
                        table,
                        p0,
                      ).pokemonMovesRefs,
                      currentColumn: 'id',
                      referencedColumn: 'move_id',
                      typedResults: items,
                    ),
                ];
              },
            );
          },
        ),
      );
}

typedef $$MovesTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $MovesTable,
      Move,
      $$MovesTableFilterComposer,
      $$MovesTableOrderingComposer,
      $$MovesTableAnnotationComposer,
      $$MovesTableCreateCompanionBuilder,
      $$MovesTableUpdateCompanionBuilder,
      (Move, $$MovesTableReferences),
      Move,
      PrefetchHooks Function({bool pokemonMovesRefs})
    >;
typedef $$PokemonMovesTableCreateCompanionBuilder =
    PokemonMovesCompanion Function({
      required int pokemonId,
      required int moveId,
      required int versionGroupId,
      required String method,
      Value<int> levelLearnedAt,
      Value<int> rowid,
    });
typedef $$PokemonMovesTableUpdateCompanionBuilder =
    PokemonMovesCompanion Function({
      Value<int> pokemonId,
      Value<int> moveId,
      Value<int> versionGroupId,
      Value<String> method,
      Value<int> levelLearnedAt,
      Value<int> rowid,
    });

final class $$PokemonMovesTableReferences
    extends BaseReferences<_$AppDatabase, $PokemonMovesTable, PokemonMove> {
  $$PokemonMovesTableReferences(super.$_db, super.$_table, super.$_typedResult);

  static $PokemonsTable _pokemonIdTable(_$AppDatabase db) =>
      db.pokemons.createAlias('pokemon_moves__pokemon_id__pokemons__id');

  $$PokemonsTableProcessedTableManager get pokemonId {
    final $_column = $_itemColumn<int>('pokemon_id')!;

    final manager = $$PokemonsTableTableManager(
      $_db,
      $_db.pokemons,
    ).filter((f) => f.id.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_pokemonIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: [item]),
    );
  }

  static $MovesTable _moveIdTable(_$AppDatabase db) =>
      db.moves.createAlias('pokemon_moves__move_id__moves__id');

  $$MovesTableProcessedTableManager get moveId {
    final $_column = $_itemColumn<int>('move_id')!;

    final manager = $$MovesTableTableManager(
      $_db,
      $_db.moves,
    ).filter((f) => f.id.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_moveIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: [item]),
    );
  }
}

class $$PokemonMovesTableFilterComposer
    extends Composer<_$AppDatabase, $PokemonMovesTable> {
  $$PokemonMovesTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get versionGroupId => $composableBuilder(
    column: $table.versionGroupId,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get method => $composableBuilder(
    column: $table.method,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get levelLearnedAt => $composableBuilder(
    column: $table.levelLearnedAt,
    builder: (column) => ColumnFilters(column),
  );

  $$PokemonsTableFilterComposer get pokemonId {
    final $$PokemonsTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.pokemonId,
      referencedTable: $db.pokemons,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$PokemonsTableFilterComposer(
            $db: $db,
            $table: $db.pokemons,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }

  $$MovesTableFilterComposer get moveId {
    final $$MovesTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.moveId,
      referencedTable: $db.moves,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$MovesTableFilterComposer(
            $db: $db,
            $table: $db.moves,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$PokemonMovesTableOrderingComposer
    extends Composer<_$AppDatabase, $PokemonMovesTable> {
  $$PokemonMovesTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get versionGroupId => $composableBuilder(
    column: $table.versionGroupId,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get method => $composableBuilder(
    column: $table.method,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get levelLearnedAt => $composableBuilder(
    column: $table.levelLearnedAt,
    builder: (column) => ColumnOrderings(column),
  );

  $$PokemonsTableOrderingComposer get pokemonId {
    final $$PokemonsTableOrderingComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.pokemonId,
      referencedTable: $db.pokemons,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$PokemonsTableOrderingComposer(
            $db: $db,
            $table: $db.pokemons,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }

  $$MovesTableOrderingComposer get moveId {
    final $$MovesTableOrderingComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.moveId,
      referencedTable: $db.moves,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$MovesTableOrderingComposer(
            $db: $db,
            $table: $db.moves,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$PokemonMovesTableAnnotationComposer
    extends Composer<_$AppDatabase, $PokemonMovesTable> {
  $$PokemonMovesTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get versionGroupId => $composableBuilder(
    column: $table.versionGroupId,
    builder: (column) => column,
  );

  GeneratedColumn<String> get method =>
      $composableBuilder(column: $table.method, builder: (column) => column);

  GeneratedColumn<int> get levelLearnedAt => $composableBuilder(
    column: $table.levelLearnedAt,
    builder: (column) => column,
  );

  $$PokemonsTableAnnotationComposer get pokemonId {
    final $$PokemonsTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.pokemonId,
      referencedTable: $db.pokemons,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$PokemonsTableAnnotationComposer(
            $db: $db,
            $table: $db.pokemons,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }

  $$MovesTableAnnotationComposer get moveId {
    final $$MovesTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.moveId,
      referencedTable: $db.moves,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$MovesTableAnnotationComposer(
            $db: $db,
            $table: $db.moves,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$PokemonMovesTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $PokemonMovesTable,
          PokemonMove,
          $$PokemonMovesTableFilterComposer,
          $$PokemonMovesTableOrderingComposer,
          $$PokemonMovesTableAnnotationComposer,
          $$PokemonMovesTableCreateCompanionBuilder,
          $$PokemonMovesTableUpdateCompanionBuilder,
          (PokemonMove, $$PokemonMovesTableReferences),
          PokemonMove,
          PrefetchHooks Function({bool pokemonId, bool moveId})
        > {
  $$PokemonMovesTableTableManager(_$AppDatabase db, $PokemonMovesTable table)
    : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$PokemonMovesTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$PokemonMovesTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$PokemonMovesTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<int> pokemonId = const Value.absent(),
                Value<int> moveId = const Value.absent(),
                Value<int> versionGroupId = const Value.absent(),
                Value<String> method = const Value.absent(),
                Value<int> levelLearnedAt = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => PokemonMovesCompanion(
                pokemonId: pokemonId,
                moveId: moveId,
                versionGroupId: versionGroupId,
                method: method,
                levelLearnedAt: levelLearnedAt,
                rowid: rowid,
              ),
          createCompanionCallback:
              ({
                required int pokemonId,
                required int moveId,
                required int versionGroupId,
                required String method,
                Value<int> levelLearnedAt = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => PokemonMovesCompanion.insert(
                pokemonId: pokemonId,
                moveId: moveId,
                versionGroupId: versionGroupId,
                method: method,
                levelLearnedAt: levelLearnedAt,
                rowid: rowid,
              ),
          withReferenceMapper: (p0) => p0
              .map(
                (e) => (
                  e.readTable<$PokemonMovesTable, PokemonMove>(table),
                  $$PokemonMovesTableReferences(db, table, e),
                ),
              )
              .toList(),
          prefetchHooksCallback: ({pokemonId = false, moveId = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [],
              addJoins:
                  <
                    T extends TableManagerState<
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic
                    >
                  >(state) {
                    if (pokemonId) {
                      state = state.withJoin(
                        currentTable: table,
                        currentColumn: table.pokemonId,
                        referencedTable: $$PokemonMovesTableReferences
                            ._pokemonIdTable(db),
                        referencedColumn: $$PokemonMovesTableReferences
                            ._pokemonIdTable(db)
                            .id,
                      ) as T;
                    }
                    if (moveId) {
                      state = state.withJoin(
                        currentTable: table,
                        currentColumn: table.moveId,
                        referencedTable: $$PokemonMovesTableReferences
                            ._moveIdTable(db),
                        referencedColumn: $$PokemonMovesTableReferences
                            ._moveIdTable(db)
                            .id,
                      ) as T;
                    }

                    return state;
                  },
              getPrefetchedDataCallback: (items) async {
                return [];
              },
            );
          },
        ),
      );
}

typedef $$PokemonMovesTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $PokemonMovesTable,
      PokemonMove,
      $$PokemonMovesTableFilterComposer,
      $$PokemonMovesTableOrderingComposer,
      $$PokemonMovesTableAnnotationComposer,
      $$PokemonMovesTableCreateCompanionBuilder,
      $$PokemonMovesTableUpdateCompanionBuilder,
      (PokemonMove, $$PokemonMovesTableReferences),
      PokemonMove,
      PrefetchHooks Function({bool pokemonId, bool moveId})
    >;
typedef $$PokemonImagesTableCreateCompanionBuilder =
    PokemonImagesCompanion Function({
      required int pokemonId,
      required String kind,
      Value<String?> remoteUrl,
      Value<String?> localPath,
      Value<DateTime?> cachedAt,
      Value<int> rowid,
    });
typedef $$PokemonImagesTableUpdateCompanionBuilder =
    PokemonImagesCompanion Function({
      Value<int> pokemonId,
      Value<String> kind,
      Value<String?> remoteUrl,
      Value<String?> localPath,
      Value<DateTime?> cachedAt,
      Value<int> rowid,
    });

final class $$PokemonImagesTableReferences
    extends BaseReferences<_$AppDatabase, $PokemonImagesTable, PokemonImage> {
  $$PokemonImagesTableReferences(
    super.$_db,
    super.$_table,
    super.$_typedResult,
  );

  static $PokemonsTable _pokemonIdTable(_$AppDatabase db) =>
      db.pokemons.createAlias('pokemon_images__pokemon_id__pokemons__id');

  $$PokemonsTableProcessedTableManager get pokemonId {
    final $_column = $_itemColumn<int>('pokemon_id')!;

    final manager = $$PokemonsTableTableManager(
      $_db,
      $_db.pokemons,
    ).filter((f) => f.id.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_pokemonIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: [item]),
    );
  }
}

class $$PokemonImagesTableFilterComposer
    extends Composer<_$AppDatabase, $PokemonImagesTable> {
  $$PokemonImagesTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get kind => $composableBuilder(
    column: $table.kind,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get remoteUrl => $composableBuilder(
    column: $table.remoteUrl,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get localPath => $composableBuilder(
    column: $table.localPath,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get cachedAt => $composableBuilder(
    column: $table.cachedAt,
    builder: (column) => ColumnFilters(column),
  );

  $$PokemonsTableFilterComposer get pokemonId {
    final $$PokemonsTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.pokemonId,
      referencedTable: $db.pokemons,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$PokemonsTableFilterComposer(
            $db: $db,
            $table: $db.pokemons,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$PokemonImagesTableOrderingComposer
    extends Composer<_$AppDatabase, $PokemonImagesTable> {
  $$PokemonImagesTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get kind => $composableBuilder(
    column: $table.kind,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get remoteUrl => $composableBuilder(
    column: $table.remoteUrl,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get localPath => $composableBuilder(
    column: $table.localPath,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get cachedAt => $composableBuilder(
    column: $table.cachedAt,
    builder: (column) => ColumnOrderings(column),
  );

  $$PokemonsTableOrderingComposer get pokemonId {
    final $$PokemonsTableOrderingComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.pokemonId,
      referencedTable: $db.pokemons,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$PokemonsTableOrderingComposer(
            $db: $db,
            $table: $db.pokemons,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$PokemonImagesTableAnnotationComposer
    extends Composer<_$AppDatabase, $PokemonImagesTable> {
  $$PokemonImagesTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get kind =>
      $composableBuilder(column: $table.kind, builder: (column) => column);

  GeneratedColumn<String> get remoteUrl =>
      $composableBuilder(column: $table.remoteUrl, builder: (column) => column);

  GeneratedColumn<String> get localPath =>
      $composableBuilder(column: $table.localPath, builder: (column) => column);

  GeneratedColumn<DateTime> get cachedAt =>
      $composableBuilder(column: $table.cachedAt, builder: (column) => column);

  $$PokemonsTableAnnotationComposer get pokemonId {
    final $$PokemonsTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.pokemonId,
      referencedTable: $db.pokemons,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$PokemonsTableAnnotationComposer(
            $db: $db,
            $table: $db.pokemons,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$PokemonImagesTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $PokemonImagesTable,
          PokemonImage,
          $$PokemonImagesTableFilterComposer,
          $$PokemonImagesTableOrderingComposer,
          $$PokemonImagesTableAnnotationComposer,
          $$PokemonImagesTableCreateCompanionBuilder,
          $$PokemonImagesTableUpdateCompanionBuilder,
          (PokemonImage, $$PokemonImagesTableReferences),
          PokemonImage,
          PrefetchHooks Function({bool pokemonId})
        > {
  $$PokemonImagesTableTableManager(_$AppDatabase db, $PokemonImagesTable table)
    : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$PokemonImagesTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$PokemonImagesTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$PokemonImagesTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<int> pokemonId = const Value.absent(),
                Value<String> kind = const Value.absent(),
                Value<String?> remoteUrl = const Value.absent(),
                Value<String?> localPath = const Value.absent(),
                Value<DateTime?> cachedAt = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => PokemonImagesCompanion(
                pokemonId: pokemonId,
                kind: kind,
                remoteUrl: remoteUrl,
                localPath: localPath,
                cachedAt: cachedAt,
                rowid: rowid,
              ),
          createCompanionCallback:
              ({
                required int pokemonId,
                required String kind,
                Value<String?> remoteUrl = const Value.absent(),
                Value<String?> localPath = const Value.absent(),
                Value<DateTime?> cachedAt = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => PokemonImagesCompanion.insert(
                pokemonId: pokemonId,
                kind: kind,
                remoteUrl: remoteUrl,
                localPath: localPath,
                cachedAt: cachedAt,
                rowid: rowid,
              ),
          withReferenceMapper: (p0) => p0
              .map(
                (e) => (
                  e.readTable<$PokemonImagesTable, PokemonImage>(table),
                  $$PokemonImagesTableReferences(db, table, e),
                ),
              )
              .toList(),
          prefetchHooksCallback: ({pokemonId = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [],
              addJoins:
                  <
                    T extends TableManagerState<
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic
                    >
                  >(state) {
                    if (pokemonId) {
                      state = state.withJoin(
                        currentTable: table,
                        currentColumn: table.pokemonId,
                        referencedTable: $$PokemonImagesTableReferences
                            ._pokemonIdTable(db),
                        referencedColumn: $$PokemonImagesTableReferences
                            ._pokemonIdTable(db)
                            .id,
                      ) as T;
                    }

                    return state;
                  },
              getPrefetchedDataCallback: (items) async {
                return [];
              },
            );
          },
        ),
      );
}

typedef $$PokemonImagesTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $PokemonImagesTable,
      PokemonImage,
      $$PokemonImagesTableFilterComposer,
      $$PokemonImagesTableOrderingComposer,
      $$PokemonImagesTableAnnotationComposer,
      $$PokemonImagesTableCreateCompanionBuilder,
      $$PokemonImagesTableUpdateCompanionBuilder,
      (PokemonImage, $$PokemonImagesTableReferences),
      PokemonImage,
      PrefetchHooks Function({bool pokemonId})
    >;
typedef $$EvolutionLinksTableCreateCompanionBuilder =
    EvolutionLinksCompanion Function({
      required int fromSpeciesId,
      required int toSpeciesId,
      required String trigger,
      Value<int?> minLevel,
      Value<String?> itemName,
      Value<int?> minHappiness,
      Value<String?> timeOfDay,
      Value<String?> conditionsJson,
      Value<int> rowid,
    });
typedef $$EvolutionLinksTableUpdateCompanionBuilder =
    EvolutionLinksCompanion Function({
      Value<int> fromSpeciesId,
      Value<int> toSpeciesId,
      Value<String> trigger,
      Value<int?> minLevel,
      Value<String?> itemName,
      Value<int?> minHappiness,
      Value<String?> timeOfDay,
      Value<String?> conditionsJson,
      Value<int> rowid,
    });

final class $$EvolutionLinksTableReferences
    extends BaseReferences<_$AppDatabase, $EvolutionLinksTable, EvolutionLink> {
  $$EvolutionLinksTableReferences(
    super.$_db,
    super.$_table,
    super.$_typedResult,
  );

  static $PokemonSpeciesTable _fromSpeciesIdTable(_$AppDatabase db) => db
      .pokemonSpecies
      .createAlias('evolution_links__from_species_id__pokemon_species__id');

  $$PokemonSpeciesTableProcessedTableManager get fromSpeciesId {
    final $_column = $_itemColumn<int>('from_species_id')!;

    final manager = $$PokemonSpeciesTableTableManager(
      $_db,
      $_db.pokemonSpecies,
    ).filter((f) => f.id.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_fromSpeciesIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: [item]),
    );
  }

  static $PokemonSpeciesTable _toSpeciesIdTable(_$AppDatabase db) => db
      .pokemonSpecies
      .createAlias('evolution_links__to_species_id__pokemon_species__id');

  $$PokemonSpeciesTableProcessedTableManager get toSpeciesId {
    final $_column = $_itemColumn<int>('to_species_id')!;

    final manager = $$PokemonSpeciesTableTableManager(
      $_db,
      $_db.pokemonSpecies,
    ).filter((f) => f.id.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_toSpeciesIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: [item]),
    );
  }
}

class $$EvolutionLinksTableFilterComposer
    extends Composer<_$AppDatabase, $EvolutionLinksTable> {
  $$EvolutionLinksTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get trigger => $composableBuilder(
    column: $table.trigger,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get minLevel => $composableBuilder(
    column: $table.minLevel,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get itemName => $composableBuilder(
    column: $table.itemName,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get minHappiness => $composableBuilder(
    column: $table.minHappiness,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get timeOfDay => $composableBuilder(
    column: $table.timeOfDay,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get conditionsJson => $composableBuilder(
    column: $table.conditionsJson,
    builder: (column) => ColumnFilters(column),
  );

  $$PokemonSpeciesTableFilterComposer get fromSpeciesId {
    final $$PokemonSpeciesTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.fromSpeciesId,
      referencedTable: $db.pokemonSpecies,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$PokemonSpeciesTableFilterComposer(
            $db: $db,
            $table: $db.pokemonSpecies,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }

  $$PokemonSpeciesTableFilterComposer get toSpeciesId {
    final $$PokemonSpeciesTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.toSpeciesId,
      referencedTable: $db.pokemonSpecies,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$PokemonSpeciesTableFilterComposer(
            $db: $db,
            $table: $db.pokemonSpecies,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$EvolutionLinksTableOrderingComposer
    extends Composer<_$AppDatabase, $EvolutionLinksTable> {
  $$EvolutionLinksTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get trigger => $composableBuilder(
    column: $table.trigger,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get minLevel => $composableBuilder(
    column: $table.minLevel,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get itemName => $composableBuilder(
    column: $table.itemName,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get minHappiness => $composableBuilder(
    column: $table.minHappiness,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get timeOfDay => $composableBuilder(
    column: $table.timeOfDay,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get conditionsJson => $composableBuilder(
    column: $table.conditionsJson,
    builder: (column) => ColumnOrderings(column),
  );

  $$PokemonSpeciesTableOrderingComposer get fromSpeciesId {
    final $$PokemonSpeciesTableOrderingComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.fromSpeciesId,
      referencedTable: $db.pokemonSpecies,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$PokemonSpeciesTableOrderingComposer(
            $db: $db,
            $table: $db.pokemonSpecies,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }

  $$PokemonSpeciesTableOrderingComposer get toSpeciesId {
    final $$PokemonSpeciesTableOrderingComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.toSpeciesId,
      referencedTable: $db.pokemonSpecies,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$PokemonSpeciesTableOrderingComposer(
            $db: $db,
            $table: $db.pokemonSpecies,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$EvolutionLinksTableAnnotationComposer
    extends Composer<_$AppDatabase, $EvolutionLinksTable> {
  $$EvolutionLinksTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get trigger =>
      $composableBuilder(column: $table.trigger, builder: (column) => column);

  GeneratedColumn<int> get minLevel =>
      $composableBuilder(column: $table.minLevel, builder: (column) => column);

  GeneratedColumn<String> get itemName =>
      $composableBuilder(column: $table.itemName, builder: (column) => column);

  GeneratedColumn<int> get minHappiness => $composableBuilder(
    column: $table.minHappiness,
    builder: (column) => column,
  );

  GeneratedColumn<String> get timeOfDay =>
      $composableBuilder(column: $table.timeOfDay, builder: (column) => column);

  GeneratedColumn<String> get conditionsJson => $composableBuilder(
    column: $table.conditionsJson,
    builder: (column) => column,
  );

  $$PokemonSpeciesTableAnnotationComposer get fromSpeciesId {
    final $$PokemonSpeciesTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.fromSpeciesId,
      referencedTable: $db.pokemonSpecies,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$PokemonSpeciesTableAnnotationComposer(
            $db: $db,
            $table: $db.pokemonSpecies,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }

  $$PokemonSpeciesTableAnnotationComposer get toSpeciesId {
    final $$PokemonSpeciesTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.toSpeciesId,
      referencedTable: $db.pokemonSpecies,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$PokemonSpeciesTableAnnotationComposer(
            $db: $db,
            $table: $db.pokemonSpecies,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$EvolutionLinksTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $EvolutionLinksTable,
          EvolutionLink,
          $$EvolutionLinksTableFilterComposer,
          $$EvolutionLinksTableOrderingComposer,
          $$EvolutionLinksTableAnnotationComposer,
          $$EvolutionLinksTableCreateCompanionBuilder,
          $$EvolutionLinksTableUpdateCompanionBuilder,
          (EvolutionLink, $$EvolutionLinksTableReferences),
          EvolutionLink,
          PrefetchHooks Function({bool fromSpeciesId, bool toSpeciesId})
        > {
  $$EvolutionLinksTableTableManager(
    _$AppDatabase db,
    $EvolutionLinksTable table,
  ) : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$EvolutionLinksTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$EvolutionLinksTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$EvolutionLinksTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<int> fromSpeciesId = const Value.absent(),
                Value<int> toSpeciesId = const Value.absent(),
                Value<String> trigger = const Value.absent(),
                Value<int?> minLevel = const Value.absent(),
                Value<String?> itemName = const Value.absent(),
                Value<int?> minHappiness = const Value.absent(),
                Value<String?> timeOfDay = const Value.absent(),
                Value<String?> conditionsJson = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => EvolutionLinksCompanion(
                fromSpeciesId: fromSpeciesId,
                toSpeciesId: toSpeciesId,
                trigger: trigger,
                minLevel: minLevel,
                itemName: itemName,
                minHappiness: minHappiness,
                timeOfDay: timeOfDay,
                conditionsJson: conditionsJson,
                rowid: rowid,
              ),
          createCompanionCallback:
              ({
                required int fromSpeciesId,
                required int toSpeciesId,
                required String trigger,
                Value<int?> minLevel = const Value.absent(),
                Value<String?> itemName = const Value.absent(),
                Value<int?> minHappiness = const Value.absent(),
                Value<String?> timeOfDay = const Value.absent(),
                Value<String?> conditionsJson = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => EvolutionLinksCompanion.insert(
                fromSpeciesId: fromSpeciesId,
                toSpeciesId: toSpeciesId,
                trigger: trigger,
                minLevel: minLevel,
                itemName: itemName,
                minHappiness: minHappiness,
                timeOfDay: timeOfDay,
                conditionsJson: conditionsJson,
                rowid: rowid,
              ),
          withReferenceMapper: (p0) => p0
              .map(
                (e) => (
                  e.readTable<$EvolutionLinksTable, EvolutionLink>(table),
                  $$EvolutionLinksTableReferences(db, table, e),
                ),
              )
              .toList(),
          prefetchHooksCallback:
              ({fromSpeciesId = false, toSpeciesId = false}) {
                return PrefetchHooks(
                  db: db,
                  explicitlyWatchedTables: [],
                  addJoins:
                      <
                        T extends TableManagerState<
                          dynamic,
                          dynamic,
                          dynamic,
                          dynamic,
                          dynamic,
                          dynamic,
                          dynamic,
                          dynamic,
                          dynamic,
                          dynamic,
                          dynamic
                        >
                      >(state) {
                        if (fromSpeciesId) {
                          state = state.withJoin(
                            currentTable: table,
                            currentColumn: table.fromSpeciesId,
                            referencedTable: $$EvolutionLinksTableReferences
                                ._fromSpeciesIdTable(db),
                            referencedColumn: $$EvolutionLinksTableReferences
                                ._fromSpeciesIdTable(db)
                                .id,
                          ) as T;
                        }
                        if (toSpeciesId) {
                          state = state.withJoin(
                            currentTable: table,
                            currentColumn: table.toSpeciesId,
                            referencedTable: $$EvolutionLinksTableReferences
                                ._toSpeciesIdTable(db),
                            referencedColumn: $$EvolutionLinksTableReferences
                                ._toSpeciesIdTable(db)
                                .id,
                          ) as T;
                        }

                        return state;
                      },
                  getPrefetchedDataCallback: (items) async {
                    return [];
                  },
                );
              },
        ),
      );
}

typedef $$EvolutionLinksTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $EvolutionLinksTable,
      EvolutionLink,
      $$EvolutionLinksTableFilterComposer,
      $$EvolutionLinksTableOrderingComposer,
      $$EvolutionLinksTableAnnotationComposer,
      $$EvolutionLinksTableCreateCompanionBuilder,
      $$EvolutionLinksTableUpdateCompanionBuilder,
      (EvolutionLink, $$EvolutionLinksTableReferences),
      EvolutionLink,
      PrefetchHooks Function({bool fromSpeciesId, bool toSpeciesId})
    >;
typedef $$EggGroupsTableCreateCompanionBuilder = EggGroupsCompanion Function({
  Value<int> id,
  required String name,
});
typedef $$EggGroupsTableUpdateCompanionBuilder = EggGroupsCompanion Function({
  Value<int> id,
  Value<String> name,
});

final class $$EggGroupsTableReferences
    extends BaseReferences<_$AppDatabase, $EggGroupsTable, EggGroup> {
  $$EggGroupsTableReferences(super.$_db, super.$_table, super.$_typedResult);

  static MultiTypedResultKey<$SpeciesEggGroupsTable, List<SpeciesEggGroup>>
  _speciesEggGroupsRefsTable(_$AppDatabase db) => MultiTypedResultKey.fromTable(
    db.speciesEggGroups,
    aliasName: 'egg_groups__id__species_egg_groups__egg_group_id',
  );

  $$SpeciesEggGroupsTableProcessedTableManager get speciesEggGroupsRefs {
    final manager = $$SpeciesEggGroupsTableTableManager(
      $_db,
      $_db.speciesEggGroups,
    ).filter((f) => f.eggGroupId.id.sqlEquals($_itemColumn<int>('id')!));

    final cache = $_typedResult.readTableOrNull(
      _speciesEggGroupsRefsTable($_db),
    );
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: cache),
    );
  }
}

class $$EggGroupsTableFilterComposer
    extends Composer<_$AppDatabase, $EggGroupsTable> {
  $$EggGroupsTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get name => $composableBuilder(
    column: $table.name,
    builder: (column) => ColumnFilters(column),
  );

  Expression<bool> speciesEggGroupsRefs(
    Expression<bool> Function($$SpeciesEggGroupsTableFilterComposer f) f,
  ) {
    final $$SpeciesEggGroupsTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.speciesEggGroups,
      getReferencedColumn: (t) => t.eggGroupId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$SpeciesEggGroupsTableFilterComposer(
            $db: $db,
            $table: $db.speciesEggGroups,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }
}

class $$EggGroupsTableOrderingComposer
    extends Composer<_$AppDatabase, $EggGroupsTable> {
  $$EggGroupsTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get name => $composableBuilder(
    column: $table.name,
    builder: (column) => ColumnOrderings(column),
  );
}

class $$EggGroupsTableAnnotationComposer
    extends Composer<_$AppDatabase, $EggGroupsTable> {
  $$EggGroupsTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get name =>
      $composableBuilder(column: $table.name, builder: (column) => column);

  Expression<T> speciesEggGroupsRefs<T extends Object>(
    Expression<T> Function($$SpeciesEggGroupsTableAnnotationComposer a) f,
  ) {
    final $$SpeciesEggGroupsTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.speciesEggGroups,
      getReferencedColumn: (t) => t.eggGroupId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$SpeciesEggGroupsTableAnnotationComposer(
            $db: $db,
            $table: $db.speciesEggGroups,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }
}

class $$EggGroupsTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $EggGroupsTable,
          EggGroup,
          $$EggGroupsTableFilterComposer,
          $$EggGroupsTableOrderingComposer,
          $$EggGroupsTableAnnotationComposer,
          $$EggGroupsTableCreateCompanionBuilder,
          $$EggGroupsTableUpdateCompanionBuilder,
          (EggGroup, $$EggGroupsTableReferences),
          EggGroup,
          PrefetchHooks Function({bool speciesEggGroupsRefs})
        > {
  $$EggGroupsTableTableManager(_$AppDatabase db, $EggGroupsTable table)
    : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$EggGroupsTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$EggGroupsTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$EggGroupsTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback: ({
            Value<int> id = const Value.absent(),
            Value<String> name = const Value.absent(),
          }) => EggGroupsCompanion(id: id, name: name),
          createCompanionCallback: ({
            Value<int> id = const Value.absent(),
            required String name,
          }) => EggGroupsCompanion.insert(id: id, name: name),
          withReferenceMapper: (p0) => p0
              .map(
                (e) => (
                  e.readTable<$EggGroupsTable, EggGroup>(table),
                  $$EggGroupsTableReferences(db, table, e),
                ),
              )
              .toList(),
          prefetchHooksCallback: ({speciesEggGroupsRefs = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [
                if (speciesEggGroupsRefs) db.speciesEggGroups,
              ],
              addJoins: null,
              getPrefetchedDataCallback: (items) async {
                return [
                  if (speciesEggGroupsRefs)
                    await $_getPrefetchedDataByColumns<
                      EggGroup,
                      $EggGroupsTable,
                      SpeciesEggGroup,
                      $SpeciesEggGroupsTable
                    >(
                      currentTable: table,
                      referencedTable: $$EggGroupsTableReferences
                          ._speciesEggGroupsRefsTable(db),
                      managerFromTypedResult: (p0) =>
                          $$EggGroupsTableReferences(
                            db,
                            table,
                            p0,
                          ).speciesEggGroupsRefs,
                      currentColumn: 'id',
                      referencedColumn: 'egg_group_id',
                      typedResults: items,
                    ),
                ];
              },
            );
          },
        ),
      );
}

typedef $$EggGroupsTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $EggGroupsTable,
      EggGroup,
      $$EggGroupsTableFilterComposer,
      $$EggGroupsTableOrderingComposer,
      $$EggGroupsTableAnnotationComposer,
      $$EggGroupsTableCreateCompanionBuilder,
      $$EggGroupsTableUpdateCompanionBuilder,
      (EggGroup, $$EggGroupsTableReferences),
      EggGroup,
      PrefetchHooks Function({bool speciesEggGroupsRefs})
    >;
typedef $$SpeciesEggGroupsTableCreateCompanionBuilder =
    SpeciesEggGroupsCompanion Function({
      required int speciesId,
      required int eggGroupId,
      Value<int> rowid,
    });
typedef $$SpeciesEggGroupsTableUpdateCompanionBuilder =
    SpeciesEggGroupsCompanion Function({
      Value<int> speciesId,
      Value<int> eggGroupId,
      Value<int> rowid,
    });

final class $$SpeciesEggGroupsTableReferences
    extends
        BaseReferences<_$AppDatabase, $SpeciesEggGroupsTable, SpeciesEggGroup> {
  $$SpeciesEggGroupsTableReferences(
    super.$_db,
    super.$_table,
    super.$_typedResult,
  );

  static $PokemonSpeciesTable _speciesIdTable(_$AppDatabase db) => db
      .pokemonSpecies
      .createAlias('species_egg_groups__species_id__pokemon_species__id');

  $$PokemonSpeciesTableProcessedTableManager get speciesId {
    final $_column = $_itemColumn<int>('species_id')!;

    final manager = $$PokemonSpeciesTableTableManager(
      $_db,
      $_db.pokemonSpecies,
    ).filter((f) => f.id.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_speciesIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: [item]),
    );
  }

  static $EggGroupsTable _eggGroupIdTable(_$AppDatabase db) => db.eggGroups
      .createAlias('species_egg_groups__egg_group_id__egg_groups__id');

  $$EggGroupsTableProcessedTableManager get eggGroupId {
    final $_column = $_itemColumn<int>('egg_group_id')!;

    final manager = $$EggGroupsTableTableManager(
      $_db,
      $_db.eggGroups,
    ).filter((f) => f.id.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_eggGroupIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: [item]),
    );
  }
}

class $$SpeciesEggGroupsTableFilterComposer
    extends Composer<_$AppDatabase, $SpeciesEggGroupsTable> {
  $$SpeciesEggGroupsTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  $$PokemonSpeciesTableFilterComposer get speciesId {
    final $$PokemonSpeciesTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.speciesId,
      referencedTable: $db.pokemonSpecies,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$PokemonSpeciesTableFilterComposer(
            $db: $db,
            $table: $db.pokemonSpecies,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }

  $$EggGroupsTableFilterComposer get eggGroupId {
    final $$EggGroupsTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.eggGroupId,
      referencedTable: $db.eggGroups,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$EggGroupsTableFilterComposer(
            $db: $db,
            $table: $db.eggGroups,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$SpeciesEggGroupsTableOrderingComposer
    extends Composer<_$AppDatabase, $SpeciesEggGroupsTable> {
  $$SpeciesEggGroupsTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  $$PokemonSpeciesTableOrderingComposer get speciesId {
    final $$PokemonSpeciesTableOrderingComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.speciesId,
      referencedTable: $db.pokemonSpecies,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$PokemonSpeciesTableOrderingComposer(
            $db: $db,
            $table: $db.pokemonSpecies,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }

  $$EggGroupsTableOrderingComposer get eggGroupId {
    final $$EggGroupsTableOrderingComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.eggGroupId,
      referencedTable: $db.eggGroups,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$EggGroupsTableOrderingComposer(
            $db: $db,
            $table: $db.eggGroups,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$SpeciesEggGroupsTableAnnotationComposer
    extends Composer<_$AppDatabase, $SpeciesEggGroupsTable> {
  $$SpeciesEggGroupsTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  $$PokemonSpeciesTableAnnotationComposer get speciesId {
    final $$PokemonSpeciesTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.speciesId,
      referencedTable: $db.pokemonSpecies,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$PokemonSpeciesTableAnnotationComposer(
            $db: $db,
            $table: $db.pokemonSpecies,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }

  $$EggGroupsTableAnnotationComposer get eggGroupId {
    final $$EggGroupsTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.eggGroupId,
      referencedTable: $db.eggGroups,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$EggGroupsTableAnnotationComposer(
            $db: $db,
            $table: $db.eggGroups,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$SpeciesEggGroupsTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $SpeciesEggGroupsTable,
          SpeciesEggGroup,
          $$SpeciesEggGroupsTableFilterComposer,
          $$SpeciesEggGroupsTableOrderingComposer,
          $$SpeciesEggGroupsTableAnnotationComposer,
          $$SpeciesEggGroupsTableCreateCompanionBuilder,
          $$SpeciesEggGroupsTableUpdateCompanionBuilder,
          (SpeciesEggGroup, $$SpeciesEggGroupsTableReferences),
          SpeciesEggGroup,
          PrefetchHooks Function({bool speciesId, bool eggGroupId})
        > {
  $$SpeciesEggGroupsTableTableManager(
    _$AppDatabase db,
    $SpeciesEggGroupsTable table,
  ) : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$SpeciesEggGroupsTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$SpeciesEggGroupsTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$SpeciesEggGroupsTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<int> speciesId = const Value.absent(),
                Value<int> eggGroupId = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => SpeciesEggGroupsCompanion(
                speciesId: speciesId,
                eggGroupId: eggGroupId,
                rowid: rowid,
              ),
          createCompanionCallback:
              ({
                required int speciesId,
                required int eggGroupId,
                Value<int> rowid = const Value.absent(),
              }) => SpeciesEggGroupsCompanion.insert(
                speciesId: speciesId,
                eggGroupId: eggGroupId,
                rowid: rowid,
              ),
          withReferenceMapper: (p0) => p0
              .map(
                (e) => (
                  e.readTable<$SpeciesEggGroupsTable, SpeciesEggGroup>(table),
                  $$SpeciesEggGroupsTableReferences(db, table, e),
                ),
              )
              .toList(),
          prefetchHooksCallback: ({speciesId = false, eggGroupId = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [],
              addJoins:
                  <
                    T extends TableManagerState<
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic
                    >
                  >(state) {
                    if (speciesId) {
                      state = state.withJoin(
                        currentTable: table,
                        currentColumn: table.speciesId,
                        referencedTable: $$SpeciesEggGroupsTableReferences
                            ._speciesIdTable(db),
                        referencedColumn: $$SpeciesEggGroupsTableReferences
                            ._speciesIdTable(db)
                            .id,
                      ) as T;
                    }
                    if (eggGroupId) {
                      state = state.withJoin(
                        currentTable: table,
                        currentColumn: table.eggGroupId,
                        referencedTable: $$SpeciesEggGroupsTableReferences
                            ._eggGroupIdTable(db),
                        referencedColumn: $$SpeciesEggGroupsTableReferences
                            ._eggGroupIdTable(db)
                            .id,
                      ) as T;
                    }

                    return state;
                  },
              getPrefetchedDataCallback: (items) async {
                return [];
              },
            );
          },
        ),
      );
}

typedef $$SpeciesEggGroupsTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $SpeciesEggGroupsTable,
      SpeciesEggGroup,
      $$SpeciesEggGroupsTableFilterComposer,
      $$SpeciesEggGroupsTableOrderingComposer,
      $$SpeciesEggGroupsTableAnnotationComposer,
      $$SpeciesEggGroupsTableCreateCompanionBuilder,
      $$SpeciesEggGroupsTableUpdateCompanionBuilder,
      (SpeciesEggGroup, $$SpeciesEggGroupsTableReferences),
      SpeciesEggGroup,
      PrefetchHooks Function({bool speciesId, bool eggGroupId})
    >;
typedef $$TypeEfficacyTableCreateCompanionBuilder =
    TypeEfficacyCompanion Function({
      required int attackingTypeId,
      required int defendingTypeId,
      required int damageFactor,
      Value<int> rowid,
    });
typedef $$TypeEfficacyTableUpdateCompanionBuilder =
    TypeEfficacyCompanion Function({
      Value<int> attackingTypeId,
      Value<int> defendingTypeId,
      Value<int> damageFactor,
      Value<int> rowid,
    });

final class $$TypeEfficacyTableReferences
    extends
        BaseReferences<_$AppDatabase, $TypeEfficacyTable, TypeEfficacyData> {
  $$TypeEfficacyTableReferences(super.$_db, super.$_table, super.$_typedResult);

  static $TypesTable _attackingTypeIdTable(_$AppDatabase db) =>
      db.types.createAlias('type_efficacy__attacking_type_id__types__id');

  $$TypesTableProcessedTableManager get attackingTypeId {
    final $_column = $_itemColumn<int>('attacking_type_id')!;

    final manager = $$TypesTableTableManager(
      $_db,
      $_db.types,
    ).filter((f) => f.id.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_attackingTypeIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: [item]),
    );
  }

  static $TypesTable _defendingTypeIdTable(_$AppDatabase db) =>
      db.types.createAlias('type_efficacy__defending_type_id__types__id');

  $$TypesTableProcessedTableManager get defendingTypeId {
    final $_column = $_itemColumn<int>('defending_type_id')!;

    final manager = $$TypesTableTableManager(
      $_db,
      $_db.types,
    ).filter((f) => f.id.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_defendingTypeIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: [item]),
    );
  }
}

class $$TypeEfficacyTableFilterComposer
    extends Composer<_$AppDatabase, $TypeEfficacyTable> {
  $$TypeEfficacyTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get damageFactor => $composableBuilder(
    column: $table.damageFactor,
    builder: (column) => ColumnFilters(column),
  );

  $$TypesTableFilterComposer get attackingTypeId {
    final $$TypesTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.attackingTypeId,
      referencedTable: $db.types,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$TypesTableFilterComposer(
            $db: $db,
            $table: $db.types,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }

  $$TypesTableFilterComposer get defendingTypeId {
    final $$TypesTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.defendingTypeId,
      referencedTable: $db.types,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$TypesTableFilterComposer(
            $db: $db,
            $table: $db.types,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$TypeEfficacyTableOrderingComposer
    extends Composer<_$AppDatabase, $TypeEfficacyTable> {
  $$TypeEfficacyTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get damageFactor => $composableBuilder(
    column: $table.damageFactor,
    builder: (column) => ColumnOrderings(column),
  );

  $$TypesTableOrderingComposer get attackingTypeId {
    final $$TypesTableOrderingComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.attackingTypeId,
      referencedTable: $db.types,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$TypesTableOrderingComposer(
            $db: $db,
            $table: $db.types,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }

  $$TypesTableOrderingComposer get defendingTypeId {
    final $$TypesTableOrderingComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.defendingTypeId,
      referencedTable: $db.types,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$TypesTableOrderingComposer(
            $db: $db,
            $table: $db.types,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$TypeEfficacyTableAnnotationComposer
    extends Composer<_$AppDatabase, $TypeEfficacyTable> {
  $$TypeEfficacyTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get damageFactor => $composableBuilder(
    column: $table.damageFactor,
    builder: (column) => column,
  );

  $$TypesTableAnnotationComposer get attackingTypeId {
    final $$TypesTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.attackingTypeId,
      referencedTable: $db.types,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$TypesTableAnnotationComposer(
            $db: $db,
            $table: $db.types,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }

  $$TypesTableAnnotationComposer get defendingTypeId {
    final $$TypesTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.defendingTypeId,
      referencedTable: $db.types,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$TypesTableAnnotationComposer(
            $db: $db,
            $table: $db.types,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$TypeEfficacyTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $TypeEfficacyTable,
          TypeEfficacyData,
          $$TypeEfficacyTableFilterComposer,
          $$TypeEfficacyTableOrderingComposer,
          $$TypeEfficacyTableAnnotationComposer,
          $$TypeEfficacyTableCreateCompanionBuilder,
          $$TypeEfficacyTableUpdateCompanionBuilder,
          (TypeEfficacyData, $$TypeEfficacyTableReferences),
          TypeEfficacyData,
          PrefetchHooks Function({bool attackingTypeId, bool defendingTypeId})
        > {
  $$TypeEfficacyTableTableManager(_$AppDatabase db, $TypeEfficacyTable table)
    : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$TypeEfficacyTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$TypeEfficacyTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$TypeEfficacyTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<int> attackingTypeId = const Value.absent(),
                Value<int> defendingTypeId = const Value.absent(),
                Value<int> damageFactor = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => TypeEfficacyCompanion(
                attackingTypeId: attackingTypeId,
                defendingTypeId: defendingTypeId,
                damageFactor: damageFactor,
                rowid: rowid,
              ),
          createCompanionCallback:
              ({
                required int attackingTypeId,
                required int defendingTypeId,
                required int damageFactor,
                Value<int> rowid = const Value.absent(),
              }) => TypeEfficacyCompanion.insert(
                attackingTypeId: attackingTypeId,
                defendingTypeId: defendingTypeId,
                damageFactor: damageFactor,
                rowid: rowid,
              ),
          withReferenceMapper: (p0) => p0
              .map(
                (e) => (
                  e.readTable<$TypeEfficacyTable, TypeEfficacyData>(table),
                  $$TypeEfficacyTableReferences(db, table, e),
                ),
              )
              .toList(),
          prefetchHooksCallback:
              ({attackingTypeId = false, defendingTypeId = false}) {
                return PrefetchHooks(
                  db: db,
                  explicitlyWatchedTables: [],
                  addJoins:
                      <
                        T extends TableManagerState<
                          dynamic,
                          dynamic,
                          dynamic,
                          dynamic,
                          dynamic,
                          dynamic,
                          dynamic,
                          dynamic,
                          dynamic,
                          dynamic,
                          dynamic
                        >
                      >(state) {
                        if (attackingTypeId) {
                          state = state.withJoin(
                            currentTable: table,
                            currentColumn: table.attackingTypeId,
                            referencedTable: $$TypeEfficacyTableReferences
                                ._attackingTypeIdTable(db),
                            referencedColumn: $$TypeEfficacyTableReferences
                                ._attackingTypeIdTable(db)
                                .id,
                          ) as T;
                        }
                        if (defendingTypeId) {
                          state = state.withJoin(
                            currentTable: table,
                            currentColumn: table.defendingTypeId,
                            referencedTable: $$TypeEfficacyTableReferences
                                ._defendingTypeIdTable(db),
                            referencedColumn: $$TypeEfficacyTableReferences
                                ._defendingTypeIdTable(db)
                                .id,
                          ) as T;
                        }

                        return state;
                      },
                  getPrefetchedDataCallback: (items) async {
                    return [];
                  },
                );
              },
        ),
      );
}

typedef $$TypeEfficacyTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $TypeEfficacyTable,
      TypeEfficacyData,
      $$TypeEfficacyTableFilterComposer,
      $$TypeEfficacyTableOrderingComposer,
      $$TypeEfficacyTableAnnotationComposer,
      $$TypeEfficacyTableCreateCompanionBuilder,
      $$TypeEfficacyTableUpdateCompanionBuilder,
      (TypeEfficacyData, $$TypeEfficacyTableReferences),
      TypeEfficacyData,
      PrefetchHooks Function({bool attackingTypeId, bool defendingTypeId})
    >;
typedef $$PokemonGameAppearancesTableCreateCompanionBuilder =
    PokemonGameAppearancesCompanion Function({
      required int pokemonId,
      required int versionId,
      required String versionName,
      Value<String?> regionName,
      Value<int> rowid,
    });
typedef $$PokemonGameAppearancesTableUpdateCompanionBuilder =
    PokemonGameAppearancesCompanion Function({
      Value<int> pokemonId,
      Value<int> versionId,
      Value<String> versionName,
      Value<String?> regionName,
      Value<int> rowid,
    });

final class $$PokemonGameAppearancesTableReferences
    extends
        BaseReferences<
          _$AppDatabase,
          $PokemonGameAppearancesTable,
          PokemonGameAppearance
        > {
  $$PokemonGameAppearancesTableReferences(
    super.$_db,
    super.$_table,
    super.$_typedResult,
  );

  static $PokemonsTable _pokemonIdTable(_$AppDatabase db) => db.pokemons
      .createAlias('pokemon_game_appearances__pokemon_id__pokemons__id');

  $$PokemonsTableProcessedTableManager get pokemonId {
    final $_column = $_itemColumn<int>('pokemon_id')!;

    final manager = $$PokemonsTableTableManager(
      $_db,
      $_db.pokemons,
    ).filter((f) => f.id.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_pokemonIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: [item]),
    );
  }
}

class $$PokemonGameAppearancesTableFilterComposer
    extends Composer<_$AppDatabase, $PokemonGameAppearancesTable> {
  $$PokemonGameAppearancesTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get versionId => $composableBuilder(
    column: $table.versionId,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get versionName => $composableBuilder(
    column: $table.versionName,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get regionName => $composableBuilder(
    column: $table.regionName,
    builder: (column) => ColumnFilters(column),
  );

  $$PokemonsTableFilterComposer get pokemonId {
    final $$PokemonsTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.pokemonId,
      referencedTable: $db.pokemons,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$PokemonsTableFilterComposer(
            $db: $db,
            $table: $db.pokemons,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$PokemonGameAppearancesTableOrderingComposer
    extends Composer<_$AppDatabase, $PokemonGameAppearancesTable> {
  $$PokemonGameAppearancesTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get versionId => $composableBuilder(
    column: $table.versionId,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get versionName => $composableBuilder(
    column: $table.versionName,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get regionName => $composableBuilder(
    column: $table.regionName,
    builder: (column) => ColumnOrderings(column),
  );

  $$PokemonsTableOrderingComposer get pokemonId {
    final $$PokemonsTableOrderingComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.pokemonId,
      referencedTable: $db.pokemons,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$PokemonsTableOrderingComposer(
            $db: $db,
            $table: $db.pokemons,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$PokemonGameAppearancesTableAnnotationComposer
    extends Composer<_$AppDatabase, $PokemonGameAppearancesTable> {
  $$PokemonGameAppearancesTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get versionId =>
      $composableBuilder(column: $table.versionId, builder: (column) => column);

  GeneratedColumn<String> get versionName => $composableBuilder(
    column: $table.versionName,
    builder: (column) => column,
  );

  GeneratedColumn<String> get regionName => $composableBuilder(
    column: $table.regionName,
    builder: (column) => column,
  );

  $$PokemonsTableAnnotationComposer get pokemonId {
    final $$PokemonsTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.pokemonId,
      referencedTable: $db.pokemons,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$PokemonsTableAnnotationComposer(
            $db: $db,
            $table: $db.pokemons,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$PokemonGameAppearancesTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $PokemonGameAppearancesTable,
          PokemonGameAppearance,
          $$PokemonGameAppearancesTableFilterComposer,
          $$PokemonGameAppearancesTableOrderingComposer,
          $$PokemonGameAppearancesTableAnnotationComposer,
          $$PokemonGameAppearancesTableCreateCompanionBuilder,
          $$PokemonGameAppearancesTableUpdateCompanionBuilder,
          (PokemonGameAppearance, $$PokemonGameAppearancesTableReferences),
          PokemonGameAppearance,
          PrefetchHooks Function({bool pokemonId})
        > {
  $$PokemonGameAppearancesTableTableManager(
    _$AppDatabase db,
    $PokemonGameAppearancesTable table,
  ) : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$PokemonGameAppearancesTableFilterComposer(
                $db: db,
                $table: table,
              ),
          createOrderingComposer: () =>
              $$PokemonGameAppearancesTableOrderingComposer(
                $db: db,
                $table: table,
              ),
          createComputedFieldComposer: () =>
              $$PokemonGameAppearancesTableAnnotationComposer(
                $db: db,
                $table: table,
              ),
          updateCompanionCallback:
              ({
                Value<int> pokemonId = const Value.absent(),
                Value<int> versionId = const Value.absent(),
                Value<String> versionName = const Value.absent(),
                Value<String?> regionName = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => PokemonGameAppearancesCompanion(
                pokemonId: pokemonId,
                versionId: versionId,
                versionName: versionName,
                regionName: regionName,
                rowid: rowid,
              ),
          createCompanionCallback:
              ({
                required int pokemonId,
                required int versionId,
                required String versionName,
                Value<String?> regionName = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => PokemonGameAppearancesCompanion.insert(
                pokemonId: pokemonId,
                versionId: versionId,
                versionName: versionName,
                regionName: regionName,
                rowid: rowid,
              ),
          withReferenceMapper: (p0) => p0
              .map(
                (e) => (
                  e.readTable<
                    $PokemonGameAppearancesTable,
                    PokemonGameAppearance
                  >(table),
                  $$PokemonGameAppearancesTableReferences(db, table, e),
                ),
              )
              .toList(),
          prefetchHooksCallback: ({pokemonId = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [],
              addJoins:
                  <
                    T extends TableManagerState<
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic
                    >
                  >(state) {
                    if (pokemonId) {
                      state = state.withJoin(
                        currentTable: table,
                        currentColumn: table.pokemonId,
                        referencedTable: $$PokemonGameAppearancesTableReferences
                            ._pokemonIdTable(db),
                        referencedColumn:
                            $$PokemonGameAppearancesTableReferences
                                ._pokemonIdTable(db)
                                .id,
                      ) as T;
                    }

                    return state;
                  },
              getPrefetchedDataCallback: (items) async {
                return [];
              },
            );
          },
        ),
      );
}

typedef $$PokemonGameAppearancesTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $PokemonGameAppearancesTable,
      PokemonGameAppearance,
      $$PokemonGameAppearancesTableFilterComposer,
      $$PokemonGameAppearancesTableOrderingComposer,
      $$PokemonGameAppearancesTableAnnotationComposer,
      $$PokemonGameAppearancesTableCreateCompanionBuilder,
      $$PokemonGameAppearancesTableUpdateCompanionBuilder,
      (PokemonGameAppearance, $$PokemonGameAppearancesTableReferences),
      PokemonGameAppearance,
      PrefetchHooks Function({bool pokemonId})
    >;
typedef $$FavoritesTableCreateCompanionBuilder = FavoritesCompanion Function({
  Value<int> pokemonId,
  required DateTime createdAt,
});
typedef $$FavoritesTableUpdateCompanionBuilder = FavoritesCompanion Function({
  Value<int> pokemonId,
  Value<DateTime> createdAt,
});

final class $$FavoritesTableReferences
    extends BaseReferences<_$AppDatabase, $FavoritesTable, Favorite> {
  $$FavoritesTableReferences(super.$_db, super.$_table, super.$_typedResult);

  static $PokemonsTable _pokemonIdTable(_$AppDatabase db) =>
      db.pokemons.createAlias('favorites__pokemon_id__pokemons__id');

  $$PokemonsTableProcessedTableManager get pokemonId {
    final $_column = $_itemColumn<int>('pokemon_id')!;

    final manager = $$PokemonsTableTableManager(
      $_db,
      $_db.pokemons,
    ).filter((f) => f.id.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_pokemonIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: [item]),
    );
  }
}

class $$FavoritesTableFilterComposer
    extends Composer<_$AppDatabase, $FavoritesTable> {
  $$FavoritesTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<DateTime> get createdAt => $composableBuilder(
    column: $table.createdAt,
    builder: (column) => ColumnFilters(column),
  );

  $$PokemonsTableFilterComposer get pokemonId {
    final $$PokemonsTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.pokemonId,
      referencedTable: $db.pokemons,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$PokemonsTableFilterComposer(
            $db: $db,
            $table: $db.pokemons,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$FavoritesTableOrderingComposer
    extends Composer<_$AppDatabase, $FavoritesTable> {
  $$FavoritesTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<DateTime> get createdAt => $composableBuilder(
    column: $table.createdAt,
    builder: (column) => ColumnOrderings(column),
  );

  $$PokemonsTableOrderingComposer get pokemonId {
    final $$PokemonsTableOrderingComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.pokemonId,
      referencedTable: $db.pokemons,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$PokemonsTableOrderingComposer(
            $db: $db,
            $table: $db.pokemons,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$FavoritesTableAnnotationComposer
    extends Composer<_$AppDatabase, $FavoritesTable> {
  $$FavoritesTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<DateTime> get createdAt =>
      $composableBuilder(column: $table.createdAt, builder: (column) => column);

  $$PokemonsTableAnnotationComposer get pokemonId {
    final $$PokemonsTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.pokemonId,
      referencedTable: $db.pokemons,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$PokemonsTableAnnotationComposer(
            $db: $db,
            $table: $db.pokemons,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$FavoritesTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $FavoritesTable,
          Favorite,
          $$FavoritesTableFilterComposer,
          $$FavoritesTableOrderingComposer,
          $$FavoritesTableAnnotationComposer,
          $$FavoritesTableCreateCompanionBuilder,
          $$FavoritesTableUpdateCompanionBuilder,
          (Favorite, $$FavoritesTableReferences),
          Favorite,
          PrefetchHooks Function({bool pokemonId})
        > {
  $$FavoritesTableTableManager(_$AppDatabase db, $FavoritesTable table)
    : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$FavoritesTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$FavoritesTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$FavoritesTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback: ({
            Value<int> pokemonId = const Value.absent(),
            Value<DateTime> createdAt = const Value.absent(),
          }) => FavoritesCompanion(pokemonId: pokemonId, createdAt: createdAt),
          createCompanionCallback:
              ({
                Value<int> pokemonId = const Value.absent(),
                required DateTime createdAt,
              }) => FavoritesCompanion.insert(
                pokemonId: pokemonId,
                createdAt: createdAt,
              ),
          withReferenceMapper: (p0) => p0
              .map(
                (e) => (
                  e.readTable<$FavoritesTable, Favorite>(table),
                  $$FavoritesTableReferences(db, table, e),
                ),
              )
              .toList(),
          prefetchHooksCallback: ({pokemonId = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [],
              addJoins:
                  <
                    T extends TableManagerState<
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic
                    >
                  >(state) {
                    if (pokemonId) {
                      state = state.withJoin(
                        currentTable: table,
                        currentColumn: table.pokemonId,
                        referencedTable: $$FavoritesTableReferences
                            ._pokemonIdTable(db),
                        referencedColumn: $$FavoritesTableReferences
                            ._pokemonIdTable(db)
                            .id,
                      ) as T;
                    }

                    return state;
                  },
              getPrefetchedDataCallback: (items) async {
                return [];
              },
            );
          },
        ),
      );
}

typedef $$FavoritesTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $FavoritesTable,
      Favorite,
      $$FavoritesTableFilterComposer,
      $$FavoritesTableOrderingComposer,
      $$FavoritesTableAnnotationComposer,
      $$FavoritesTableCreateCompanionBuilder,
      $$FavoritesTableUpdateCompanionBuilder,
      (Favorite, $$FavoritesTableReferences),
      Favorite,
      PrefetchHooks Function({bool pokemonId})
    >;
typedef $$TriviaResultsTableCreateCompanionBuilder =
    TriviaResultsCompanion Function({
      Value<int> id,
      required int score,
      required int correctAnswers,
      required int totalQuestions,
      required int durationSeconds,
      required DateTime playedAt,
      required String language,
    });
typedef $$TriviaResultsTableUpdateCompanionBuilder =
    TriviaResultsCompanion Function({
      Value<int> id,
      Value<int> score,
      Value<int> correctAnswers,
      Value<int> totalQuestions,
      Value<int> durationSeconds,
      Value<DateTime> playedAt,
      Value<String> language,
    });

class $$TriviaResultsTableFilterComposer
    extends Composer<_$AppDatabase, $TriviaResultsTable> {
  $$TriviaResultsTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get score => $composableBuilder(
    column: $table.score,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get correctAnswers => $composableBuilder(
    column: $table.correctAnswers,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get totalQuestions => $composableBuilder(
    column: $table.totalQuestions,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get durationSeconds => $composableBuilder(
    column: $table.durationSeconds,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get playedAt => $composableBuilder(
    column: $table.playedAt,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get language => $composableBuilder(
    column: $table.language,
    builder: (column) => ColumnFilters(column),
  );
}

class $$TriviaResultsTableOrderingComposer
    extends Composer<_$AppDatabase, $TriviaResultsTable> {
  $$TriviaResultsTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get score => $composableBuilder(
    column: $table.score,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get correctAnswers => $composableBuilder(
    column: $table.correctAnswers,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get totalQuestions => $composableBuilder(
    column: $table.totalQuestions,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get durationSeconds => $composableBuilder(
    column: $table.durationSeconds,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get playedAt => $composableBuilder(
    column: $table.playedAt,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get language => $composableBuilder(
    column: $table.language,
    builder: (column) => ColumnOrderings(column),
  );
}

class $$TriviaResultsTableAnnotationComposer
    extends Composer<_$AppDatabase, $TriviaResultsTable> {
  $$TriviaResultsTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<int> get score =>
      $composableBuilder(column: $table.score, builder: (column) => column);

  GeneratedColumn<int> get correctAnswers => $composableBuilder(
    column: $table.correctAnswers,
    builder: (column) => column,
  );

  GeneratedColumn<int> get totalQuestions => $composableBuilder(
    column: $table.totalQuestions,
    builder: (column) => column,
  );

  GeneratedColumn<int> get durationSeconds => $composableBuilder(
    column: $table.durationSeconds,
    builder: (column) => column,
  );

  GeneratedColumn<DateTime> get playedAt =>
      $composableBuilder(column: $table.playedAt, builder: (column) => column);

  GeneratedColumn<String> get language =>
      $composableBuilder(column: $table.language, builder: (column) => column);
}

class $$TriviaResultsTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $TriviaResultsTable,
          TriviaResult,
          $$TriviaResultsTableFilterComposer,
          $$TriviaResultsTableOrderingComposer,
          $$TriviaResultsTableAnnotationComposer,
          $$TriviaResultsTableCreateCompanionBuilder,
          $$TriviaResultsTableUpdateCompanionBuilder,
          (
            TriviaResult,
            BaseReferences<_$AppDatabase, $TriviaResultsTable, TriviaResult>,
          ),
          TriviaResult,
          PrefetchHooks Function()
        > {
  $$TriviaResultsTableTableManager(_$AppDatabase db, $TriviaResultsTable table)
    : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$TriviaResultsTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$TriviaResultsTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$TriviaResultsTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                Value<int> score = const Value.absent(),
                Value<int> correctAnswers = const Value.absent(),
                Value<int> totalQuestions = const Value.absent(),
                Value<int> durationSeconds = const Value.absent(),
                Value<DateTime> playedAt = const Value.absent(),
                Value<String> language = const Value.absent(),
              }) => TriviaResultsCompanion(
                id: id,
                score: score,
                correctAnswers: correctAnswers,
                totalQuestions: totalQuestions,
                durationSeconds: durationSeconds,
                playedAt: playedAt,
                language: language,
              ),
          createCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                required int score,
                required int correctAnswers,
                required int totalQuestions,
                required int durationSeconds,
                required DateTime playedAt,
                required String language,
              }) => TriviaResultsCompanion.insert(
                id: id,
                score: score,
                correctAnswers: correctAnswers,
                totalQuestions: totalQuestions,
                durationSeconds: durationSeconds,
                playedAt: playedAt,
                language: language,
              ),
          withReferenceMapper: (p0) => p0
              .map(
                (e) => (
                  e.readTable<$TriviaResultsTable, TriviaResult>(table),
                  BaseReferences<
                    _$AppDatabase,
                    $TriviaResultsTable,
                    TriviaResult
                  >(db, table, e),
                ),
              )
              .toList(),
          prefetchHooksCallback: null,
        ),
      );
}

typedef $$TriviaResultsTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $TriviaResultsTable,
      TriviaResult,
      $$TriviaResultsTableFilterComposer,
      $$TriviaResultsTableOrderingComposer,
      $$TriviaResultsTableAnnotationComposer,
      $$TriviaResultsTableCreateCompanionBuilder,
      $$TriviaResultsTableUpdateCompanionBuilder,
      (
        TriviaResult,
        BaseReferences<_$AppDatabase, $TriviaResultsTable, TriviaResult>,
      ),
      TriviaResult,
      PrefetchHooks Function()
    >;
typedef $$AchievementsTableCreateCompanionBuilder =
    AchievementsCompanion Function({
      required String id,
      required String titleKey,
      required int requiredScore,
      Value<int> rowid,
    });
typedef $$AchievementsTableUpdateCompanionBuilder =
    AchievementsCompanion Function({
      Value<String> id,
      Value<String> titleKey,
      Value<int> requiredScore,
      Value<int> rowid,
    });

final class $$AchievementsTableReferences
    extends BaseReferences<_$AppDatabase, $AchievementsTable, Achievement> {
  $$AchievementsTableReferences(super.$_db, super.$_table, super.$_typedResult);

  static MultiTypedResultKey<
    $UnlockedAchievementsTable,
    List<UnlockedAchievement>
  >
  _unlockedAchievementsRefsTable(_$AppDatabase db) =>
      MultiTypedResultKey.fromTable(
        db.unlockedAchievements,
        aliasName: 'achievements__id__unlocked_achievements__achievement_id',
      );

  $$UnlockedAchievementsTableProcessedTableManager
  get unlockedAchievementsRefs {
    final manager = $$UnlockedAchievementsTableTableManager(
      $_db,
      $_db.unlockedAchievements,
    ).filter((f) => f.achievementId.id.sqlEquals($_itemColumn<String>('id')!));

    final cache = $_typedResult.readTableOrNull(
      _unlockedAchievementsRefsTable($_db),
    );
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: cache),
    );
  }
}

class $$AchievementsTableFilterComposer
    extends Composer<_$AppDatabase, $AchievementsTable> {
  $$AchievementsTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get titleKey => $composableBuilder(
    column: $table.titleKey,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get requiredScore => $composableBuilder(
    column: $table.requiredScore,
    builder: (column) => ColumnFilters(column),
  );

  Expression<bool> unlockedAchievementsRefs(
    Expression<bool> Function($$UnlockedAchievementsTableFilterComposer f) f,
  ) {
    final $$UnlockedAchievementsTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.unlockedAchievements,
      getReferencedColumn: (t) => t.achievementId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$UnlockedAchievementsTableFilterComposer(
            $db: $db,
            $table: $db.unlockedAchievements,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }
}

class $$AchievementsTableOrderingComposer
    extends Composer<_$AppDatabase, $AchievementsTable> {
  $$AchievementsTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get titleKey => $composableBuilder(
    column: $table.titleKey,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get requiredScore => $composableBuilder(
    column: $table.requiredScore,
    builder: (column) => ColumnOrderings(column),
  );
}

class $$AchievementsTableAnnotationComposer
    extends Composer<_$AppDatabase, $AchievementsTable> {
  $$AchievementsTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get titleKey =>
      $composableBuilder(column: $table.titleKey, builder: (column) => column);

  GeneratedColumn<int> get requiredScore => $composableBuilder(
    column: $table.requiredScore,
    builder: (column) => column,
  );

  Expression<T> unlockedAchievementsRefs<T extends Object>(
    Expression<T> Function($$UnlockedAchievementsTableAnnotationComposer a) f,
  ) {
    final $$UnlockedAchievementsTableAnnotationComposer composer =
        $composerBuilder(
          composer: this,
          getCurrentColumn: (t) => t.id,
          referencedTable: $db.unlockedAchievements,
          getReferencedColumn: (t) => t.achievementId,
          builder:
              (
                joinBuilder, {
                $addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer,
              }) => $$UnlockedAchievementsTableAnnotationComposer(
                $db: $db,
                $table: $db.unlockedAchievements,
                $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
                joinBuilder: joinBuilder,
                $removeJoinBuilderFromRootComposer:
                    $removeJoinBuilderFromRootComposer,
              ),
        );
    return f(composer);
  }
}

class $$AchievementsTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $AchievementsTable,
          Achievement,
          $$AchievementsTableFilterComposer,
          $$AchievementsTableOrderingComposer,
          $$AchievementsTableAnnotationComposer,
          $$AchievementsTableCreateCompanionBuilder,
          $$AchievementsTableUpdateCompanionBuilder,
          (Achievement, $$AchievementsTableReferences),
          Achievement,
          PrefetchHooks Function({bool unlockedAchievementsRefs})
        > {
  $$AchievementsTableTableManager(_$AppDatabase db, $AchievementsTable table)
    : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$AchievementsTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$AchievementsTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$AchievementsTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<String> id = const Value.absent(),
                Value<String> titleKey = const Value.absent(),
                Value<int> requiredScore = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => AchievementsCompanion(
                id: id,
                titleKey: titleKey,
                requiredScore: requiredScore,
                rowid: rowid,
              ),
          createCompanionCallback:
              ({
                required String id,
                required String titleKey,
                required int requiredScore,
                Value<int> rowid = const Value.absent(),
              }) => AchievementsCompanion.insert(
                id: id,
                titleKey: titleKey,
                requiredScore: requiredScore,
                rowid: rowid,
              ),
          withReferenceMapper: (p0) => p0
              .map(
                (e) => (
                  e.readTable<$AchievementsTable, Achievement>(table),
                  $$AchievementsTableReferences(db, table, e),
                ),
              )
              .toList(),
          prefetchHooksCallback: ({unlockedAchievementsRefs = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [
                if (unlockedAchievementsRefs) db.unlockedAchievements,
              ],
              addJoins: null,
              getPrefetchedDataCallback: (items) async {
                return [
                  if (unlockedAchievementsRefs)
                    await $_getPrefetchedDataByColumns<
                      Achievement,
                      $AchievementsTable,
                      UnlockedAchievement,
                      $UnlockedAchievementsTable
                    >(
                      currentTable: table,
                      referencedTable: $$AchievementsTableReferences
                          ._unlockedAchievementsRefsTable(db),
                      managerFromTypedResult: (p0) =>
                          $$AchievementsTableReferences(
                            db,
                            table,
                            p0,
                          ).unlockedAchievementsRefs,
                      currentColumn: 'id',
                      referencedColumn: 'achievement_id',
                      typedResults: items,
                    ),
                ];
              },
            );
          },
        ),
      );
}

typedef $$AchievementsTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $AchievementsTable,
      Achievement,
      $$AchievementsTableFilterComposer,
      $$AchievementsTableOrderingComposer,
      $$AchievementsTableAnnotationComposer,
      $$AchievementsTableCreateCompanionBuilder,
      $$AchievementsTableUpdateCompanionBuilder,
      (Achievement, $$AchievementsTableReferences),
      Achievement,
      PrefetchHooks Function({bool unlockedAchievementsRefs})
    >;
typedef $$UnlockedAchievementsTableCreateCompanionBuilder =
    UnlockedAchievementsCompanion Function({
      required String achievementId,
      required DateTime unlockedAt,
      Value<int> rowid,
    });
typedef $$UnlockedAchievementsTableUpdateCompanionBuilder =
    UnlockedAchievementsCompanion Function({
      Value<String> achievementId,
      Value<DateTime> unlockedAt,
      Value<int> rowid,
    });

final class $$UnlockedAchievementsTableReferences
    extends
        BaseReferences<
          _$AppDatabase,
          $UnlockedAchievementsTable,
          UnlockedAchievement
        > {
  $$UnlockedAchievementsTableReferences(
    super.$_db,
    super.$_table,
    super.$_typedResult,
  );

  static $AchievementsTable _achievementIdTable(_$AppDatabase db) => db
      .achievements
      .createAlias('unlocked_achievements__achievement_id__achievements__id');

  $$AchievementsTableProcessedTableManager get achievementId {
    final $_column = $_itemColumn<String>('achievement_id')!;

    final manager = $$AchievementsTableTableManager(
      $_db,
      $_db.achievements,
    ).filter((f) => f.id.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_achievementIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: [item]),
    );
  }
}

class $$UnlockedAchievementsTableFilterComposer
    extends Composer<_$AppDatabase, $UnlockedAchievementsTable> {
  $$UnlockedAchievementsTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<DateTime> get unlockedAt => $composableBuilder(
    column: $table.unlockedAt,
    builder: (column) => ColumnFilters(column),
  );

  $$AchievementsTableFilterComposer get achievementId {
    final $$AchievementsTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.achievementId,
      referencedTable: $db.achievements,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$AchievementsTableFilterComposer(
            $db: $db,
            $table: $db.achievements,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$UnlockedAchievementsTableOrderingComposer
    extends Composer<_$AppDatabase, $UnlockedAchievementsTable> {
  $$UnlockedAchievementsTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<DateTime> get unlockedAt => $composableBuilder(
    column: $table.unlockedAt,
    builder: (column) => ColumnOrderings(column),
  );

  $$AchievementsTableOrderingComposer get achievementId {
    final $$AchievementsTableOrderingComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.achievementId,
      referencedTable: $db.achievements,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$AchievementsTableOrderingComposer(
            $db: $db,
            $table: $db.achievements,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$UnlockedAchievementsTableAnnotationComposer
    extends Composer<_$AppDatabase, $UnlockedAchievementsTable> {
  $$UnlockedAchievementsTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<DateTime> get unlockedAt => $composableBuilder(
    column: $table.unlockedAt,
    builder: (column) => column,
  );

  $$AchievementsTableAnnotationComposer get achievementId {
    final $$AchievementsTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.achievementId,
      referencedTable: $db.achievements,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$AchievementsTableAnnotationComposer(
            $db: $db,
            $table: $db.achievements,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$UnlockedAchievementsTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $UnlockedAchievementsTable,
          UnlockedAchievement,
          $$UnlockedAchievementsTableFilterComposer,
          $$UnlockedAchievementsTableOrderingComposer,
          $$UnlockedAchievementsTableAnnotationComposer,
          $$UnlockedAchievementsTableCreateCompanionBuilder,
          $$UnlockedAchievementsTableUpdateCompanionBuilder,
          (UnlockedAchievement, $$UnlockedAchievementsTableReferences),
          UnlockedAchievement,
          PrefetchHooks Function({bool achievementId})
        > {
  $$UnlockedAchievementsTableTableManager(
    _$AppDatabase db,
    $UnlockedAchievementsTable table,
  ) : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$UnlockedAchievementsTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$UnlockedAchievementsTableOrderingComposer(
                $db: db,
                $table: table,
              ),
          createComputedFieldComposer: () =>
              $$UnlockedAchievementsTableAnnotationComposer(
                $db: db,
                $table: table,
              ),
          updateCompanionCallback:
              ({
                Value<String> achievementId = const Value.absent(),
                Value<DateTime> unlockedAt = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => UnlockedAchievementsCompanion(
                achievementId: achievementId,
                unlockedAt: unlockedAt,
                rowid: rowid,
              ),
          createCompanionCallback:
              ({
                required String achievementId,
                required DateTime unlockedAt,
                Value<int> rowid = const Value.absent(),
              }) => UnlockedAchievementsCompanion.insert(
                achievementId: achievementId,
                unlockedAt: unlockedAt,
                rowid: rowid,
              ),
          withReferenceMapper: (p0) => p0
              .map(
                (e) => (
                  e.readTable<$UnlockedAchievementsTable, UnlockedAchievement>(
                    table,
                  ),
                  $$UnlockedAchievementsTableReferences(db, table, e),
                ),
              )
              .toList(),
          prefetchHooksCallback: ({achievementId = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [],
              addJoins:
                  <
                    T extends TableManagerState<
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic
                    >
                  >(state) {
                    if (achievementId) {
                      state = state.withJoin(
                        currentTable: table,
                        currentColumn: table.achievementId,
                        referencedTable: $$UnlockedAchievementsTableReferences
                            ._achievementIdTable(db),
                        referencedColumn: $$UnlockedAchievementsTableReferences
                            ._achievementIdTable(db)
                            .id,
                      ) as T;
                    }

                    return state;
                  },
              getPrefetchedDataCallback: (items) async {
                return [];
              },
            );
          },
        ),
      );
}

typedef $$UnlockedAchievementsTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $UnlockedAchievementsTable,
      UnlockedAchievement,
      $$UnlockedAchievementsTableFilterComposer,
      $$UnlockedAchievementsTableOrderingComposer,
      $$UnlockedAchievementsTableAnnotationComposer,
      $$UnlockedAchievementsTableCreateCompanionBuilder,
      $$UnlockedAchievementsTableUpdateCompanionBuilder,
      (UnlockedAchievement, $$UnlockedAchievementsTableReferences),
      UnlockedAchievement,
      PrefetchHooks Function({bool achievementId})
    >;
typedef $$UserPreferencesTableCreateCompanionBuilder =
    UserPreferencesCompanion Function({
      required String key,
      required String value,
      Value<int> rowid,
    });
typedef $$UserPreferencesTableUpdateCompanionBuilder =
    UserPreferencesCompanion Function({
      Value<String> key,
      Value<String> value,
      Value<int> rowid,
    });

class $$UserPreferencesTableFilterComposer
    extends Composer<_$AppDatabase, $UserPreferencesTable> {
  $$UserPreferencesTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get key => $composableBuilder(
    column: $table.key,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get value => $composableBuilder(
    column: $table.value,
    builder: (column) => ColumnFilters(column),
  );
}

class $$UserPreferencesTableOrderingComposer
    extends Composer<_$AppDatabase, $UserPreferencesTable> {
  $$UserPreferencesTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get key => $composableBuilder(
    column: $table.key,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get value => $composableBuilder(
    column: $table.value,
    builder: (column) => ColumnOrderings(column),
  );
}

class $$UserPreferencesTableAnnotationComposer
    extends Composer<_$AppDatabase, $UserPreferencesTable> {
  $$UserPreferencesTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get key =>
      $composableBuilder(column: $table.key, builder: (column) => column);

  GeneratedColumn<String> get value =>
      $composableBuilder(column: $table.value, builder: (column) => column);
}

class $$UserPreferencesTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $UserPreferencesTable,
          UserPreference,
          $$UserPreferencesTableFilterComposer,
          $$UserPreferencesTableOrderingComposer,
          $$UserPreferencesTableAnnotationComposer,
          $$UserPreferencesTableCreateCompanionBuilder,
          $$UserPreferencesTableUpdateCompanionBuilder,
          (
            UserPreference,
            BaseReferences<
              _$AppDatabase,
              $UserPreferencesTable,
              UserPreference
            >,
          ),
          UserPreference,
          PrefetchHooks Function()
        > {
  $$UserPreferencesTableTableManager(
    _$AppDatabase db,
    $UserPreferencesTable table,
  ) : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$UserPreferencesTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$UserPreferencesTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$UserPreferencesTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback: ({
            Value<String> key = const Value.absent(),
            Value<String> value = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) => UserPreferencesCompanion(key: key, value: value, rowid: rowid),
          createCompanionCallback:
              ({
                required String key,
                required String value,
                Value<int> rowid = const Value.absent(),
              }) => UserPreferencesCompanion.insert(
                key: key,
                value: value,
                rowid: rowid,
              ),
          withReferenceMapper: (p0) => p0
              .map(
                (e) => (
                  e.readTable<$UserPreferencesTable, UserPreference>(table),
                  BaseReferences<
                    _$AppDatabase,
                    $UserPreferencesTable,
                    UserPreference
                  >(db, table, e),
                ),
              )
              .toList(),
          prefetchHooksCallback: null,
        ),
      );
}

typedef $$UserPreferencesTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $UserPreferencesTable,
      UserPreference,
      $$UserPreferencesTableFilterComposer,
      $$UserPreferencesTableOrderingComposer,
      $$UserPreferencesTableAnnotationComposer,
      $$UserPreferencesTableCreateCompanionBuilder,
      $$UserPreferencesTableUpdateCompanionBuilder,
      (
        UserPreference,
        BaseReferences<_$AppDatabase, $UserPreferencesTable, UserPreference>,
      ),
      UserPreference,
      PrefetchHooks Function()
    >;
typedef $$SyncMetadataTableCreateCompanionBuilder =
    SyncMetadataCompanion Function({
      required String resourceKey,
      Value<DateTime?> lastAttemptAt,
      Value<DateTime?> lastSuccessAt,
      required String status,
      Value<String?> lastError,
      Value<int> failureCount,
      Value<int> rowid,
    });
typedef $$SyncMetadataTableUpdateCompanionBuilder =
    SyncMetadataCompanion Function({
      Value<String> resourceKey,
      Value<DateTime?> lastAttemptAt,
      Value<DateTime?> lastSuccessAt,
      Value<String> status,
      Value<String?> lastError,
      Value<int> failureCount,
      Value<int> rowid,
    });

class $$SyncMetadataTableFilterComposer
    extends Composer<_$AppDatabase, $SyncMetadataTable> {
  $$SyncMetadataTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get resourceKey => $composableBuilder(
    column: $table.resourceKey,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get lastAttemptAt => $composableBuilder(
    column: $table.lastAttemptAt,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get lastSuccessAt => $composableBuilder(
    column: $table.lastSuccessAt,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get status => $composableBuilder(
    column: $table.status,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get lastError => $composableBuilder(
    column: $table.lastError,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get failureCount => $composableBuilder(
    column: $table.failureCount,
    builder: (column) => ColumnFilters(column),
  );
}

class $$SyncMetadataTableOrderingComposer
    extends Composer<_$AppDatabase, $SyncMetadataTable> {
  $$SyncMetadataTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get resourceKey => $composableBuilder(
    column: $table.resourceKey,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get lastAttemptAt => $composableBuilder(
    column: $table.lastAttemptAt,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get lastSuccessAt => $composableBuilder(
    column: $table.lastSuccessAt,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get status => $composableBuilder(
    column: $table.status,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get lastError => $composableBuilder(
    column: $table.lastError,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get failureCount => $composableBuilder(
    column: $table.failureCount,
    builder: (column) => ColumnOrderings(column),
  );
}

class $$SyncMetadataTableAnnotationComposer
    extends Composer<_$AppDatabase, $SyncMetadataTable> {
  $$SyncMetadataTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get resourceKey => $composableBuilder(
    column: $table.resourceKey,
    builder: (column) => column,
  );

  GeneratedColumn<DateTime> get lastAttemptAt => $composableBuilder(
    column: $table.lastAttemptAt,
    builder: (column) => column,
  );

  GeneratedColumn<DateTime> get lastSuccessAt => $composableBuilder(
    column: $table.lastSuccessAt,
    builder: (column) => column,
  );

  GeneratedColumn<String> get status =>
      $composableBuilder(column: $table.status, builder: (column) => column);

  GeneratedColumn<String> get lastError =>
      $composableBuilder(column: $table.lastError, builder: (column) => column);

  GeneratedColumn<int> get failureCount => $composableBuilder(
    column: $table.failureCount,
    builder: (column) => column,
  );
}

class $$SyncMetadataTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $SyncMetadataTable,
          SyncMetadataData,
          $$SyncMetadataTableFilterComposer,
          $$SyncMetadataTableOrderingComposer,
          $$SyncMetadataTableAnnotationComposer,
          $$SyncMetadataTableCreateCompanionBuilder,
          $$SyncMetadataTableUpdateCompanionBuilder,
          (
            SyncMetadataData,
            BaseReferences<_$AppDatabase, $SyncMetadataTable, SyncMetadataData>,
          ),
          SyncMetadataData,
          PrefetchHooks Function()
        > {
  $$SyncMetadataTableTableManager(_$AppDatabase db, $SyncMetadataTable table)
    : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$SyncMetadataTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$SyncMetadataTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$SyncMetadataTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<String> resourceKey = const Value.absent(),
                Value<DateTime?> lastAttemptAt = const Value.absent(),
                Value<DateTime?> lastSuccessAt = const Value.absent(),
                Value<String> status = const Value.absent(),
                Value<String?> lastError = const Value.absent(),
                Value<int> failureCount = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => SyncMetadataCompanion(
                resourceKey: resourceKey,
                lastAttemptAt: lastAttemptAt,
                lastSuccessAt: lastSuccessAt,
                status: status,
                lastError: lastError,
                failureCount: failureCount,
                rowid: rowid,
              ),
          createCompanionCallback:
              ({
                required String resourceKey,
                Value<DateTime?> lastAttemptAt = const Value.absent(),
                Value<DateTime?> lastSuccessAt = const Value.absent(),
                required String status,
                Value<String?> lastError = const Value.absent(),
                Value<int> failureCount = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => SyncMetadataCompanion.insert(
                resourceKey: resourceKey,
                lastAttemptAt: lastAttemptAt,
                lastSuccessAt: lastSuccessAt,
                status: status,
                lastError: lastError,
                failureCount: failureCount,
                rowid: rowid,
              ),
          withReferenceMapper: (p0) => p0
              .map(
                (e) => (
                  e.readTable<$SyncMetadataTable, SyncMetadataData>(table),
                  BaseReferences<
                    _$AppDatabase,
                    $SyncMetadataTable,
                    SyncMetadataData
                  >(db, table, e),
                ),
              )
              .toList(),
          prefetchHooksCallback: null,
        ),
      );
}

typedef $$SyncMetadataTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $SyncMetadataTable,
      SyncMetadataData,
      $$SyncMetadataTableFilterComposer,
      $$SyncMetadataTableOrderingComposer,
      $$SyncMetadataTableAnnotationComposer,
      $$SyncMetadataTableCreateCompanionBuilder,
      $$SyncMetadataTableUpdateCompanionBuilder,
      (
        SyncMetadataData,
        BaseReferences<_$AppDatabase, $SyncMetadataTable, SyncMetadataData>,
      ),
      SyncMetadataData,
      PrefetchHooks Function()
    >;
typedef $$CatalogPagesTableCreateCompanionBuilder =
    CatalogPagesCompanion Function({
      required String pageKey,
      required int offset,
      required int pageSize,
      required int returnedCount,
      required DateTime fetchedAt,
      Value<int> rowid,
    });
typedef $$CatalogPagesTableUpdateCompanionBuilder =
    CatalogPagesCompanion Function({
      Value<String> pageKey,
      Value<int> offset,
      Value<int> pageSize,
      Value<int> returnedCount,
      Value<DateTime> fetchedAt,
      Value<int> rowid,
    });

class $$CatalogPagesTableFilterComposer
    extends Composer<_$AppDatabase, $CatalogPagesTable> {
  $$CatalogPagesTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get pageKey => $composableBuilder(
    column: $table.pageKey,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get offset => $composableBuilder(
    column: $table.offset,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get pageSize => $composableBuilder(
    column: $table.pageSize,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get returnedCount => $composableBuilder(
    column: $table.returnedCount,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get fetchedAt => $composableBuilder(
    column: $table.fetchedAt,
    builder: (column) => ColumnFilters(column),
  );
}

class $$CatalogPagesTableOrderingComposer
    extends Composer<_$AppDatabase, $CatalogPagesTable> {
  $$CatalogPagesTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get pageKey => $composableBuilder(
    column: $table.pageKey,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get offset => $composableBuilder(
    column: $table.offset,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get pageSize => $composableBuilder(
    column: $table.pageSize,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get returnedCount => $composableBuilder(
    column: $table.returnedCount,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get fetchedAt => $composableBuilder(
    column: $table.fetchedAt,
    builder: (column) => ColumnOrderings(column),
  );
}

class $$CatalogPagesTableAnnotationComposer
    extends Composer<_$AppDatabase, $CatalogPagesTable> {
  $$CatalogPagesTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get pageKey =>
      $composableBuilder(column: $table.pageKey, builder: (column) => column);

  GeneratedColumn<int> get offset =>
      $composableBuilder(column: $table.offset, builder: (column) => column);

  GeneratedColumn<int> get pageSize =>
      $composableBuilder(column: $table.pageSize, builder: (column) => column);

  GeneratedColumn<int> get returnedCount => $composableBuilder(
    column: $table.returnedCount,
    builder: (column) => column,
  );

  GeneratedColumn<DateTime> get fetchedAt =>
      $composableBuilder(column: $table.fetchedAt, builder: (column) => column);
}

class $$CatalogPagesTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $CatalogPagesTable,
          CatalogPage,
          $$CatalogPagesTableFilterComposer,
          $$CatalogPagesTableOrderingComposer,
          $$CatalogPagesTableAnnotationComposer,
          $$CatalogPagesTableCreateCompanionBuilder,
          $$CatalogPagesTableUpdateCompanionBuilder,
          (
            CatalogPage,
            BaseReferences<_$AppDatabase, $CatalogPagesTable, CatalogPage>,
          ),
          CatalogPage,
          PrefetchHooks Function()
        > {
  $$CatalogPagesTableTableManager(_$AppDatabase db, $CatalogPagesTable table)
    : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$CatalogPagesTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$CatalogPagesTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$CatalogPagesTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<String> pageKey = const Value.absent(),
                Value<int> offset = const Value.absent(),
                Value<int> pageSize = const Value.absent(),
                Value<int> returnedCount = const Value.absent(),
                Value<DateTime> fetchedAt = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => CatalogPagesCompanion(
                pageKey: pageKey,
                offset: offset,
                pageSize: pageSize,
                returnedCount: returnedCount,
                fetchedAt: fetchedAt,
                rowid: rowid,
              ),
          createCompanionCallback:
              ({
                required String pageKey,
                required int offset,
                required int pageSize,
                required int returnedCount,
                required DateTime fetchedAt,
                Value<int> rowid = const Value.absent(),
              }) => CatalogPagesCompanion.insert(
                pageKey: pageKey,
                offset: offset,
                pageSize: pageSize,
                returnedCount: returnedCount,
                fetchedAt: fetchedAt,
                rowid: rowid,
              ),
          withReferenceMapper: (p0) => p0
              .map(
                (e) => (
                  e.readTable<$CatalogPagesTable, CatalogPage>(table),
                  BaseReferences<
                    _$AppDatabase,
                    $CatalogPagesTable,
                    CatalogPage
                  >(db, table, e),
                ),
              )
              .toList(),
          prefetchHooksCallback: null,
        ),
      );
}

typedef $$CatalogPagesTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $CatalogPagesTable,
      CatalogPage,
      $$CatalogPagesTableFilterComposer,
      $$CatalogPagesTableOrderingComposer,
      $$CatalogPagesTableAnnotationComposer,
      $$CatalogPagesTableCreateCompanionBuilder,
      $$CatalogPagesTableUpdateCompanionBuilder,
      (
        CatalogPage,
        BaseReferences<_$AppDatabase, $CatalogPagesTable, CatalogPage>,
      ),
      CatalogPage,
      PrefetchHooks Function()
    >;

class $AppDatabaseManager {
  final _$AppDatabase _db;
  $AppDatabaseManager(this._db);
  $$PokemonSpeciesTableTableManager get pokemonSpecies =>
      $$PokemonSpeciesTableTableManager(_db, _db.pokemonSpecies);
  $$PokemonsTableTableManager get pokemons =>
      $$PokemonsTableTableManager(_db, _db.pokemons);
  $$TypesTableTableManager get types =>
      $$TypesTableTableManager(_db, _db.types);
  $$PokemonTypesTableTableManager get pokemonTypes =>
      $$PokemonTypesTableTableManager(_db, _db.pokemonTypes);
  $$PokemonStatsTableTableManager get pokemonStats =>
      $$PokemonStatsTableTableManager(_db, _db.pokemonStats);
  $$AbilitiesTableTableManager get abilities =>
      $$AbilitiesTableTableManager(_db, _db.abilities);
  $$PokemonAbilitiesTableTableManager get pokemonAbilities =>
      $$PokemonAbilitiesTableTableManager(_db, _db.pokemonAbilities);
  $$MovesTableTableManager get moves =>
      $$MovesTableTableManager(_db, _db.moves);
  $$PokemonMovesTableTableManager get pokemonMoves =>
      $$PokemonMovesTableTableManager(_db, _db.pokemonMoves);
  $$PokemonImagesTableTableManager get pokemonImages =>
      $$PokemonImagesTableTableManager(_db, _db.pokemonImages);
  $$EvolutionLinksTableTableManager get evolutionLinks =>
      $$EvolutionLinksTableTableManager(_db, _db.evolutionLinks);
  $$EggGroupsTableTableManager get eggGroups =>
      $$EggGroupsTableTableManager(_db, _db.eggGroups);
  $$SpeciesEggGroupsTableTableManager get speciesEggGroups =>
      $$SpeciesEggGroupsTableTableManager(_db, _db.speciesEggGroups);
  $$TypeEfficacyTableTableManager get typeEfficacy =>
      $$TypeEfficacyTableTableManager(_db, _db.typeEfficacy);
  $$PokemonGameAppearancesTableTableManager get pokemonGameAppearances =>
      $$PokemonGameAppearancesTableTableManager(
        _db,
        _db.pokemonGameAppearances,
      );
  $$FavoritesTableTableManager get favorites =>
      $$FavoritesTableTableManager(_db, _db.favorites);
  $$TriviaResultsTableTableManager get triviaResults =>
      $$TriviaResultsTableTableManager(_db, _db.triviaResults);
  $$AchievementsTableTableManager get achievements =>
      $$AchievementsTableTableManager(_db, _db.achievements);
  $$UnlockedAchievementsTableTableManager get unlockedAchievements =>
      $$UnlockedAchievementsTableTableManager(_db, _db.unlockedAchievements);
  $$UserPreferencesTableTableManager get userPreferences =>
      $$UserPreferencesTableTableManager(_db, _db.userPreferences);
  $$SyncMetadataTableTableManager get syncMetadata =>
      $$SyncMetadataTableTableManager(_db, _db.syncMetadata);
  $$CatalogPagesTableTableManager get catalogPages =>
      $$CatalogPagesTableTableManager(_db, _db.catalogPages);
}
