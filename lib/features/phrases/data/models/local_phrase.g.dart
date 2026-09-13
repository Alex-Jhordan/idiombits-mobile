// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'local_phrase.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetLocalPhraseCollection on Isar {
  IsarCollection<LocalPhrase> get localPhrases => this.collection();
}

const LocalPhraseSchema = CollectionSchema(
  name: r'LocalPhrase',
  id: 5243218624628993906,
  properties: {
    r'idiomaticTranslation': PropertySchema(
      id: 0,
      name: r'idiomaticTranslation',
      type: IsarType.string,
    ),
    r'isSynced': PropertySchema(
      id: 1,
      name: r'isSynced',
      type: IsarType.bool,
    ),
    r'learnedAt': PropertySchema(
      id: 2,
      name: r'learnedAt',
      type: IsarType.dateTime,
    ),
    r'originalText': PropertySchema(
      id: 3,
      name: r'originalText',
      type: IsarType.string,
    ),
    r'payloadData': PropertySchema(
      id: 4,
      name: r'payloadData',
      type: IsarType.string,
    ),
    r'queuePosition': PropertySchema(
      id: 5,
      name: r'queuePosition',
      type: IsarType.long,
    ),
    r'sourceLanguage': PropertySchema(
      id: 6,
      name: r'sourceLanguage',
      type: IsarType.string,
    ),
    r'status': PropertySchema(
      id: 7,
      name: r'status',
      type: IsarType.string,
    ),
    r'successStreak': PropertySchema(
      id: 8,
      name: r'successStreak',
      type: IsarType.long,
    ),
    r'tag': PropertySchema(
      id: 9,
      name: r'tag',
      type: IsarType.string,
    ),
    r'ulid': PropertySchema(
      id: 10,
      name: r'ulid',
      type: IsarType.string,
    ),
    r'updatedAt': PropertySchema(
      id: 11,
      name: r'updatedAt',
      type: IsarType.dateTime,
    )
  },
  estimateSize: _localPhraseEstimateSize,
  serialize: _localPhraseSerialize,
  deserialize: _localPhraseDeserialize,
  deserializeProp: _localPhraseDeserializeProp,
  idName: r'id',
  indexes: {
    r'ulid': IndexSchema(
      id: -4588867345224829125,
      name: r'ulid',
      unique: true,
      replace: true,
      properties: [
        IndexPropertySchema(
          name: r'ulid',
          type: IndexType.hash,
          caseSensitive: true,
        )
      ],
    )
  },
  links: {},
  embeddedSchemas: {},
  getId: _localPhraseGetId,
  getLinks: _localPhraseGetLinks,
  attach: _localPhraseAttach,
  version: '3.1.0+1',
);

int _localPhraseEstimateSize(
  LocalPhrase object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  {
    final value = object.idiomaticTranslation;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  bytesCount += 3 + object.originalText.length * 3;
  {
    final value = object.payloadData;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  bytesCount += 3 + object.sourceLanguage.length * 3;
  bytesCount += 3 + object.status.length * 3;
  {
    final value = object.tag;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  bytesCount += 3 + object.ulid.length * 3;
  return bytesCount;
}

void _localPhraseSerialize(
  LocalPhrase object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.idiomaticTranslation);
  writer.writeBool(offsets[1], object.isSynced);
  writer.writeDateTime(offsets[2], object.learnedAt);
  writer.writeString(offsets[3], object.originalText);
  writer.writeString(offsets[4], object.payloadData);
  writer.writeLong(offsets[5], object.queuePosition);
  writer.writeString(offsets[6], object.sourceLanguage);
  writer.writeString(offsets[7], object.status);
  writer.writeLong(offsets[8], object.successStreak);
  writer.writeString(offsets[9], object.tag);
  writer.writeString(offsets[10], object.ulid);
  writer.writeDateTime(offsets[11], object.updatedAt);
}

LocalPhrase _localPhraseDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = LocalPhrase();
  object.id = id;
  object.idiomaticTranslation = reader.readStringOrNull(offsets[0]);
  object.isSynced = reader.readBool(offsets[1]);
  object.learnedAt = reader.readDateTimeOrNull(offsets[2]);
  object.originalText = reader.readString(offsets[3]);
  object.payloadData = reader.readStringOrNull(offsets[4]);
  object.queuePosition = reader.readLong(offsets[5]);
  object.sourceLanguage = reader.readString(offsets[6]);
  object.status = reader.readString(offsets[7]);
  object.successStreak = reader.readLong(offsets[8]);
  object.tag = reader.readStringOrNull(offsets[9]);
  object.ulid = reader.readString(offsets[10]);
  object.updatedAt = reader.readDateTime(offsets[11]);
  return object;
}

P _localPhraseDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readStringOrNull(offset)) as P;
    case 1:
      return (reader.readBool(offset)) as P;
    case 2:
      return (reader.readDateTimeOrNull(offset)) as P;
    case 3:
      return (reader.readString(offset)) as P;
    case 4:
      return (reader.readStringOrNull(offset)) as P;
    case 5:
      return (reader.readLong(offset)) as P;
    case 6:
      return (reader.readString(offset)) as P;
    case 7:
      return (reader.readString(offset)) as P;
    case 8:
      return (reader.readLong(offset)) as P;
    case 9:
      return (reader.readStringOrNull(offset)) as P;
    case 10:
      return (reader.readString(offset)) as P;
    case 11:
      return (reader.readDateTime(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _localPhraseGetId(LocalPhrase object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _localPhraseGetLinks(LocalPhrase object) {
  return [];
}

void _localPhraseAttach(
    IsarCollection<dynamic> col, Id id, LocalPhrase object) {
  object.id = id;
}

extension LocalPhraseByIndex on IsarCollection<LocalPhrase> {
  Future<LocalPhrase?> getByUlid(String ulid) {
    return getByIndex(r'ulid', [ulid]);
  }

  LocalPhrase? getByUlidSync(String ulid) {
    return getByIndexSync(r'ulid', [ulid]);
  }

  Future<bool> deleteByUlid(String ulid) {
    return deleteByIndex(r'ulid', [ulid]);
  }

  bool deleteByUlidSync(String ulid) {
    return deleteByIndexSync(r'ulid', [ulid]);
  }

  Future<List<LocalPhrase?>> getAllByUlid(List<String> ulidValues) {
    final values = ulidValues.map((e) => [e]).toList();
    return getAllByIndex(r'ulid', values);
  }

  List<LocalPhrase?> getAllByUlidSync(List<String> ulidValues) {
    final values = ulidValues.map((e) => [e]).toList();
    return getAllByIndexSync(r'ulid', values);
  }

  Future<int> deleteAllByUlid(List<String> ulidValues) {
    final values = ulidValues.map((e) => [e]).toList();
    return deleteAllByIndex(r'ulid', values);
  }

  int deleteAllByUlidSync(List<String> ulidValues) {
    final values = ulidValues.map((e) => [e]).toList();
    return deleteAllByIndexSync(r'ulid', values);
  }

  Future<Id> putByUlid(LocalPhrase object) {
    return putByIndex(r'ulid', object);
  }

  Id putByUlidSync(LocalPhrase object, {bool saveLinks = true}) {
    return putByIndexSync(r'ulid', object, saveLinks: saveLinks);
  }

  Future<List<Id>> putAllByUlid(List<LocalPhrase> objects) {
    return putAllByIndex(r'ulid', objects);
  }

  List<Id> putAllByUlidSync(List<LocalPhrase> objects,
      {bool saveLinks = true}) {
    return putAllByIndexSync(r'ulid', objects, saveLinks: saveLinks);
  }
}

extension LocalPhraseQueryWhereSort
    on QueryBuilder<LocalPhrase, LocalPhrase, QWhere> {
  QueryBuilder<LocalPhrase, LocalPhrase, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension LocalPhraseQueryWhere
    on QueryBuilder<LocalPhrase, LocalPhrase, QWhereClause> {
  QueryBuilder<LocalPhrase, LocalPhrase, QAfterWhereClause> idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<LocalPhrase, LocalPhrase, QAfterWhereClause> idNotEqualTo(
      Id id) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            )
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            );
      } else {
        return query
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            )
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            );
      }
    });
  }

  QueryBuilder<LocalPhrase, LocalPhrase, QAfterWhereClause> idGreaterThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<LocalPhrase, LocalPhrase, QAfterWhereClause> idLessThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<LocalPhrase, LocalPhrase, QAfterWhereClause> idBetween(
    Id lowerId,
    Id upperId, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: lowerId,
        includeLower: includeLower,
        upper: upperId,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<LocalPhrase, LocalPhrase, QAfterWhereClause> ulidEqualTo(
      String ulid) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'ulid',
        value: [ulid],
      ));
    });
  }

  QueryBuilder<LocalPhrase, LocalPhrase, QAfterWhereClause> ulidNotEqualTo(
      String ulid) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'ulid',
              lower: [],
              upper: [ulid],
              includeUpper: false,
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'ulid',
              lower: [ulid],
              includeLower: false,
              upper: [],
            ));
      } else {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'ulid',
              lower: [ulid],
              includeLower: false,
              upper: [],
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'ulid',
              lower: [],
              upper: [ulid],
              includeUpper: false,
            ));
      }
    });
  }
}

extension LocalPhraseQueryFilter
    on QueryBuilder<LocalPhrase, LocalPhrase, QFilterCondition> {
  QueryBuilder<LocalPhrase, LocalPhrase, QAfterFilterCondition> idEqualTo(
      Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<LocalPhrase, LocalPhrase, QAfterFilterCondition> idGreaterThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<LocalPhrase, LocalPhrase, QAfterFilterCondition> idLessThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<LocalPhrase, LocalPhrase, QAfterFilterCondition> idBetween(
    Id lower,
    Id upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'id',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<LocalPhrase, LocalPhrase, QAfterFilterCondition>
      idiomaticTranslationIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'idiomaticTranslation',
      ));
    });
  }

  QueryBuilder<LocalPhrase, LocalPhrase, QAfterFilterCondition>
      idiomaticTranslationIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'idiomaticTranslation',
      ));
    });
  }

  QueryBuilder<LocalPhrase, LocalPhrase, QAfterFilterCondition>
      idiomaticTranslationEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'idiomaticTranslation',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LocalPhrase, LocalPhrase, QAfterFilterCondition>
      idiomaticTranslationGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'idiomaticTranslation',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LocalPhrase, LocalPhrase, QAfterFilterCondition>
      idiomaticTranslationLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'idiomaticTranslation',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LocalPhrase, LocalPhrase, QAfterFilterCondition>
      idiomaticTranslationBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'idiomaticTranslation',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LocalPhrase, LocalPhrase, QAfterFilterCondition>
      idiomaticTranslationStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'idiomaticTranslation',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LocalPhrase, LocalPhrase, QAfterFilterCondition>
      idiomaticTranslationEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'idiomaticTranslation',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LocalPhrase, LocalPhrase, QAfterFilterCondition>
      idiomaticTranslationContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'idiomaticTranslation',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LocalPhrase, LocalPhrase, QAfterFilterCondition>
      idiomaticTranslationMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'idiomaticTranslation',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LocalPhrase, LocalPhrase, QAfterFilterCondition>
      idiomaticTranslationIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'idiomaticTranslation',
        value: '',
      ));
    });
  }

  QueryBuilder<LocalPhrase, LocalPhrase, QAfterFilterCondition>
      idiomaticTranslationIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'idiomaticTranslation',
        value: '',
      ));
    });
  }

  QueryBuilder<LocalPhrase, LocalPhrase, QAfterFilterCondition> isSyncedEqualTo(
      bool value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'isSynced',
        value: value,
      ));
    });
  }

  QueryBuilder<LocalPhrase, LocalPhrase, QAfterFilterCondition>
      learnedAtIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'learnedAt',
      ));
    });
  }

  QueryBuilder<LocalPhrase, LocalPhrase, QAfterFilterCondition>
      learnedAtIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'learnedAt',
      ));
    });
  }

  QueryBuilder<LocalPhrase, LocalPhrase, QAfterFilterCondition>
      learnedAtEqualTo(DateTime? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'learnedAt',
        value: value,
      ));
    });
  }

  QueryBuilder<LocalPhrase, LocalPhrase, QAfterFilterCondition>
      learnedAtGreaterThan(
    DateTime? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'learnedAt',
        value: value,
      ));
    });
  }

  QueryBuilder<LocalPhrase, LocalPhrase, QAfterFilterCondition>
      learnedAtLessThan(
    DateTime? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'learnedAt',
        value: value,
      ));
    });
  }

  QueryBuilder<LocalPhrase, LocalPhrase, QAfterFilterCondition>
      learnedAtBetween(
    DateTime? lower,
    DateTime? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'learnedAt',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<LocalPhrase, LocalPhrase, QAfterFilterCondition>
      originalTextEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'originalText',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LocalPhrase, LocalPhrase, QAfterFilterCondition>
      originalTextGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'originalText',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LocalPhrase, LocalPhrase, QAfterFilterCondition>
      originalTextLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'originalText',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LocalPhrase, LocalPhrase, QAfterFilterCondition>
      originalTextBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'originalText',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LocalPhrase, LocalPhrase, QAfterFilterCondition>
      originalTextStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'originalText',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LocalPhrase, LocalPhrase, QAfterFilterCondition>
      originalTextEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'originalText',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LocalPhrase, LocalPhrase, QAfterFilterCondition>
      originalTextContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'originalText',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LocalPhrase, LocalPhrase, QAfterFilterCondition>
      originalTextMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'originalText',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LocalPhrase, LocalPhrase, QAfterFilterCondition>
      originalTextIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'originalText',
        value: '',
      ));
    });
  }

  QueryBuilder<LocalPhrase, LocalPhrase, QAfterFilterCondition>
      originalTextIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'originalText',
        value: '',
      ));
    });
  }

  QueryBuilder<LocalPhrase, LocalPhrase, QAfterFilterCondition>
      payloadDataIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'payloadData',
      ));
    });
  }

  QueryBuilder<LocalPhrase, LocalPhrase, QAfterFilterCondition>
      payloadDataIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'payloadData',
      ));
    });
  }

  QueryBuilder<LocalPhrase, LocalPhrase, QAfterFilterCondition>
      payloadDataEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'payloadData',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LocalPhrase, LocalPhrase, QAfterFilterCondition>
      payloadDataGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'payloadData',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LocalPhrase, LocalPhrase, QAfterFilterCondition>
      payloadDataLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'payloadData',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LocalPhrase, LocalPhrase, QAfterFilterCondition>
      payloadDataBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'payloadData',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LocalPhrase, LocalPhrase, QAfterFilterCondition>
      payloadDataStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'payloadData',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LocalPhrase, LocalPhrase, QAfterFilterCondition>
      payloadDataEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'payloadData',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LocalPhrase, LocalPhrase, QAfterFilterCondition>
      payloadDataContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'payloadData',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LocalPhrase, LocalPhrase, QAfterFilterCondition>
      payloadDataMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'payloadData',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LocalPhrase, LocalPhrase, QAfterFilterCondition>
      payloadDataIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'payloadData',
        value: '',
      ));
    });
  }

  QueryBuilder<LocalPhrase, LocalPhrase, QAfterFilterCondition>
      payloadDataIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'payloadData',
        value: '',
      ));
    });
  }

  QueryBuilder<LocalPhrase, LocalPhrase, QAfterFilterCondition>
      queuePositionEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'queuePosition',
        value: value,
      ));
    });
  }

  QueryBuilder<LocalPhrase, LocalPhrase, QAfterFilterCondition>
      queuePositionGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'queuePosition',
        value: value,
      ));
    });
  }

  QueryBuilder<LocalPhrase, LocalPhrase, QAfterFilterCondition>
      queuePositionLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'queuePosition',
        value: value,
      ));
    });
  }

  QueryBuilder<LocalPhrase, LocalPhrase, QAfterFilterCondition>
      queuePositionBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'queuePosition',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<LocalPhrase, LocalPhrase, QAfterFilterCondition>
      sourceLanguageEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'sourceLanguage',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LocalPhrase, LocalPhrase, QAfterFilterCondition>
      sourceLanguageGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'sourceLanguage',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LocalPhrase, LocalPhrase, QAfterFilterCondition>
      sourceLanguageLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'sourceLanguage',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LocalPhrase, LocalPhrase, QAfterFilterCondition>
      sourceLanguageBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'sourceLanguage',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LocalPhrase, LocalPhrase, QAfterFilterCondition>
      sourceLanguageStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'sourceLanguage',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LocalPhrase, LocalPhrase, QAfterFilterCondition>
      sourceLanguageEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'sourceLanguage',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LocalPhrase, LocalPhrase, QAfterFilterCondition>
      sourceLanguageContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'sourceLanguage',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LocalPhrase, LocalPhrase, QAfterFilterCondition>
      sourceLanguageMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'sourceLanguage',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LocalPhrase, LocalPhrase, QAfterFilterCondition>
      sourceLanguageIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'sourceLanguage',
        value: '',
      ));
    });
  }

  QueryBuilder<LocalPhrase, LocalPhrase, QAfterFilterCondition>
      sourceLanguageIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'sourceLanguage',
        value: '',
      ));
    });
  }

  QueryBuilder<LocalPhrase, LocalPhrase, QAfterFilterCondition> statusEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'status',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LocalPhrase, LocalPhrase, QAfterFilterCondition>
      statusGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'status',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LocalPhrase, LocalPhrase, QAfterFilterCondition> statusLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'status',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LocalPhrase, LocalPhrase, QAfterFilterCondition> statusBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'status',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LocalPhrase, LocalPhrase, QAfterFilterCondition>
      statusStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'status',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LocalPhrase, LocalPhrase, QAfterFilterCondition> statusEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'status',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LocalPhrase, LocalPhrase, QAfterFilterCondition> statusContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'status',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LocalPhrase, LocalPhrase, QAfterFilterCondition> statusMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'status',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LocalPhrase, LocalPhrase, QAfterFilterCondition>
      statusIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'status',
        value: '',
      ));
    });
  }

  QueryBuilder<LocalPhrase, LocalPhrase, QAfterFilterCondition>
      statusIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'status',
        value: '',
      ));
    });
  }

  QueryBuilder<LocalPhrase, LocalPhrase, QAfterFilterCondition>
      successStreakEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'successStreak',
        value: value,
      ));
    });
  }

  QueryBuilder<LocalPhrase, LocalPhrase, QAfterFilterCondition>
      successStreakGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'successStreak',
        value: value,
      ));
    });
  }

  QueryBuilder<LocalPhrase, LocalPhrase, QAfterFilterCondition>
      successStreakLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'successStreak',
        value: value,
      ));
    });
  }

  QueryBuilder<LocalPhrase, LocalPhrase, QAfterFilterCondition>
      successStreakBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'successStreak',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<LocalPhrase, LocalPhrase, QAfterFilterCondition> tagIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'tag',
      ));
    });
  }

  QueryBuilder<LocalPhrase, LocalPhrase, QAfterFilterCondition> tagIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'tag',
      ));
    });
  }

  QueryBuilder<LocalPhrase, LocalPhrase, QAfterFilterCondition> tagEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'tag',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LocalPhrase, LocalPhrase, QAfterFilterCondition> tagGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'tag',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LocalPhrase, LocalPhrase, QAfterFilterCondition> tagLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'tag',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LocalPhrase, LocalPhrase, QAfterFilterCondition> tagBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'tag',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LocalPhrase, LocalPhrase, QAfterFilterCondition> tagStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'tag',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LocalPhrase, LocalPhrase, QAfterFilterCondition> tagEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'tag',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LocalPhrase, LocalPhrase, QAfterFilterCondition> tagContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'tag',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LocalPhrase, LocalPhrase, QAfterFilterCondition> tagMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'tag',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LocalPhrase, LocalPhrase, QAfterFilterCondition> tagIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'tag',
        value: '',
      ));
    });
  }

  QueryBuilder<LocalPhrase, LocalPhrase, QAfterFilterCondition>
      tagIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'tag',
        value: '',
      ));
    });
  }

  QueryBuilder<LocalPhrase, LocalPhrase, QAfterFilterCondition> ulidEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'ulid',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LocalPhrase, LocalPhrase, QAfterFilterCondition> ulidGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'ulid',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LocalPhrase, LocalPhrase, QAfterFilterCondition> ulidLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'ulid',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LocalPhrase, LocalPhrase, QAfterFilterCondition> ulidBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'ulid',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LocalPhrase, LocalPhrase, QAfterFilterCondition> ulidStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'ulid',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LocalPhrase, LocalPhrase, QAfterFilterCondition> ulidEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'ulid',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LocalPhrase, LocalPhrase, QAfterFilterCondition> ulidContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'ulid',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LocalPhrase, LocalPhrase, QAfterFilterCondition> ulidMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'ulid',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LocalPhrase, LocalPhrase, QAfterFilterCondition> ulidIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'ulid',
        value: '',
      ));
    });
  }

  QueryBuilder<LocalPhrase, LocalPhrase, QAfterFilterCondition>
      ulidIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'ulid',
        value: '',
      ));
    });
  }

  QueryBuilder<LocalPhrase, LocalPhrase, QAfterFilterCondition>
      updatedAtEqualTo(DateTime value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'updatedAt',
        value: value,
      ));
    });
  }

  QueryBuilder<LocalPhrase, LocalPhrase, QAfterFilterCondition>
      updatedAtGreaterThan(
    DateTime value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'updatedAt',
        value: value,
      ));
    });
  }

  QueryBuilder<LocalPhrase, LocalPhrase, QAfterFilterCondition>
      updatedAtLessThan(
    DateTime value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'updatedAt',
        value: value,
      ));
    });
  }

  QueryBuilder<LocalPhrase, LocalPhrase, QAfterFilterCondition>
      updatedAtBetween(
    DateTime lower,
    DateTime upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'updatedAt',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension LocalPhraseQueryObject
    on QueryBuilder<LocalPhrase, LocalPhrase, QFilterCondition> {}

extension LocalPhraseQueryLinks
    on QueryBuilder<LocalPhrase, LocalPhrase, QFilterCondition> {}

extension LocalPhraseQuerySortBy
    on QueryBuilder<LocalPhrase, LocalPhrase, QSortBy> {
  QueryBuilder<LocalPhrase, LocalPhrase, QAfterSortBy>
      sortByIdiomaticTranslation() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'idiomaticTranslation', Sort.asc);
    });
  }

  QueryBuilder<LocalPhrase, LocalPhrase, QAfterSortBy>
      sortByIdiomaticTranslationDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'idiomaticTranslation', Sort.desc);
    });
  }

  QueryBuilder<LocalPhrase, LocalPhrase, QAfterSortBy> sortByIsSynced() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isSynced', Sort.asc);
    });
  }

  QueryBuilder<LocalPhrase, LocalPhrase, QAfterSortBy> sortByIsSyncedDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isSynced', Sort.desc);
    });
  }

  QueryBuilder<LocalPhrase, LocalPhrase, QAfterSortBy> sortByLearnedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'learnedAt', Sort.asc);
    });
  }

  QueryBuilder<LocalPhrase, LocalPhrase, QAfterSortBy> sortByLearnedAtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'learnedAt', Sort.desc);
    });
  }

  QueryBuilder<LocalPhrase, LocalPhrase, QAfterSortBy> sortByOriginalText() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'originalText', Sort.asc);
    });
  }

  QueryBuilder<LocalPhrase, LocalPhrase, QAfterSortBy>
      sortByOriginalTextDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'originalText', Sort.desc);
    });
  }

  QueryBuilder<LocalPhrase, LocalPhrase, QAfterSortBy> sortByPayloadData() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'payloadData', Sort.asc);
    });
  }

  QueryBuilder<LocalPhrase, LocalPhrase, QAfterSortBy> sortByPayloadDataDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'payloadData', Sort.desc);
    });
  }

  QueryBuilder<LocalPhrase, LocalPhrase, QAfterSortBy> sortByQueuePosition() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'queuePosition', Sort.asc);
    });
  }

  QueryBuilder<LocalPhrase, LocalPhrase, QAfterSortBy>
      sortByQueuePositionDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'queuePosition', Sort.desc);
    });
  }

  QueryBuilder<LocalPhrase, LocalPhrase, QAfterSortBy> sortBySourceLanguage() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'sourceLanguage', Sort.asc);
    });
  }

  QueryBuilder<LocalPhrase, LocalPhrase, QAfterSortBy>
      sortBySourceLanguageDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'sourceLanguage', Sort.desc);
    });
  }

  QueryBuilder<LocalPhrase, LocalPhrase, QAfterSortBy> sortByStatus() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'status', Sort.asc);
    });
  }

  QueryBuilder<LocalPhrase, LocalPhrase, QAfterSortBy> sortByStatusDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'status', Sort.desc);
    });
  }

  QueryBuilder<LocalPhrase, LocalPhrase, QAfterSortBy> sortBySuccessStreak() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'successStreak', Sort.asc);
    });
  }

  QueryBuilder<LocalPhrase, LocalPhrase, QAfterSortBy>
      sortBySuccessStreakDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'successStreak', Sort.desc);
    });
  }

  QueryBuilder<LocalPhrase, LocalPhrase, QAfterSortBy> sortByTag() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'tag', Sort.asc);
    });
  }

  QueryBuilder<LocalPhrase, LocalPhrase, QAfterSortBy> sortByTagDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'tag', Sort.desc);
    });
  }

  QueryBuilder<LocalPhrase, LocalPhrase, QAfterSortBy> sortByUlid() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'ulid', Sort.asc);
    });
  }

  QueryBuilder<LocalPhrase, LocalPhrase, QAfterSortBy> sortByUlidDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'ulid', Sort.desc);
    });
  }

  QueryBuilder<LocalPhrase, LocalPhrase, QAfterSortBy> sortByUpdatedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'updatedAt', Sort.asc);
    });
  }

  QueryBuilder<LocalPhrase, LocalPhrase, QAfterSortBy> sortByUpdatedAtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'updatedAt', Sort.desc);
    });
  }
}

extension LocalPhraseQuerySortThenBy
    on QueryBuilder<LocalPhrase, LocalPhrase, QSortThenBy> {
  QueryBuilder<LocalPhrase, LocalPhrase, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<LocalPhrase, LocalPhrase, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<LocalPhrase, LocalPhrase, QAfterSortBy>
      thenByIdiomaticTranslation() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'idiomaticTranslation', Sort.asc);
    });
  }

  QueryBuilder<LocalPhrase, LocalPhrase, QAfterSortBy>
      thenByIdiomaticTranslationDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'idiomaticTranslation', Sort.desc);
    });
  }

  QueryBuilder<LocalPhrase, LocalPhrase, QAfterSortBy> thenByIsSynced() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isSynced', Sort.asc);
    });
  }

  QueryBuilder<LocalPhrase, LocalPhrase, QAfterSortBy> thenByIsSyncedDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isSynced', Sort.desc);
    });
  }

  QueryBuilder<LocalPhrase, LocalPhrase, QAfterSortBy> thenByLearnedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'learnedAt', Sort.asc);
    });
  }

  QueryBuilder<LocalPhrase, LocalPhrase, QAfterSortBy> thenByLearnedAtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'learnedAt', Sort.desc);
    });
  }

  QueryBuilder<LocalPhrase, LocalPhrase, QAfterSortBy> thenByOriginalText() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'originalText', Sort.asc);
    });
  }

  QueryBuilder<LocalPhrase, LocalPhrase, QAfterSortBy>
      thenByOriginalTextDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'originalText', Sort.desc);
    });
  }

  QueryBuilder<LocalPhrase, LocalPhrase, QAfterSortBy> thenByPayloadData() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'payloadData', Sort.asc);
    });
  }

  QueryBuilder<LocalPhrase, LocalPhrase, QAfterSortBy> thenByPayloadDataDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'payloadData', Sort.desc);
    });
  }

  QueryBuilder<LocalPhrase, LocalPhrase, QAfterSortBy> thenByQueuePosition() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'queuePosition', Sort.asc);
    });
  }

  QueryBuilder<LocalPhrase, LocalPhrase, QAfterSortBy>
      thenByQueuePositionDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'queuePosition', Sort.desc);
    });
  }

  QueryBuilder<LocalPhrase, LocalPhrase, QAfterSortBy> thenBySourceLanguage() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'sourceLanguage', Sort.asc);
    });
  }

  QueryBuilder<LocalPhrase, LocalPhrase, QAfterSortBy>
      thenBySourceLanguageDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'sourceLanguage', Sort.desc);
    });
  }

  QueryBuilder<LocalPhrase, LocalPhrase, QAfterSortBy> thenByStatus() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'status', Sort.asc);
    });
  }

  QueryBuilder<LocalPhrase, LocalPhrase, QAfterSortBy> thenByStatusDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'status', Sort.desc);
    });
  }

  QueryBuilder<LocalPhrase, LocalPhrase, QAfterSortBy> thenBySuccessStreak() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'successStreak', Sort.asc);
    });
  }

  QueryBuilder<LocalPhrase, LocalPhrase, QAfterSortBy>
      thenBySuccessStreakDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'successStreak', Sort.desc);
    });
  }

  QueryBuilder<LocalPhrase, LocalPhrase, QAfterSortBy> thenByTag() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'tag', Sort.asc);
    });
  }

  QueryBuilder<LocalPhrase, LocalPhrase, QAfterSortBy> thenByTagDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'tag', Sort.desc);
    });
  }

  QueryBuilder<LocalPhrase, LocalPhrase, QAfterSortBy> thenByUlid() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'ulid', Sort.asc);
    });
  }

  QueryBuilder<LocalPhrase, LocalPhrase, QAfterSortBy> thenByUlidDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'ulid', Sort.desc);
    });
  }

  QueryBuilder<LocalPhrase, LocalPhrase, QAfterSortBy> thenByUpdatedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'updatedAt', Sort.asc);
    });
  }

  QueryBuilder<LocalPhrase, LocalPhrase, QAfterSortBy> thenByUpdatedAtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'updatedAt', Sort.desc);
    });
  }
}

extension LocalPhraseQueryWhereDistinct
    on QueryBuilder<LocalPhrase, LocalPhrase, QDistinct> {
  QueryBuilder<LocalPhrase, LocalPhrase, QDistinct>
      distinctByIdiomaticTranslation({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'idiomaticTranslation',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<LocalPhrase, LocalPhrase, QDistinct> distinctByIsSynced() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'isSynced');
    });
  }

  QueryBuilder<LocalPhrase, LocalPhrase, QDistinct> distinctByLearnedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'learnedAt');
    });
  }

  QueryBuilder<LocalPhrase, LocalPhrase, QDistinct> distinctByOriginalText(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'originalText', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<LocalPhrase, LocalPhrase, QDistinct> distinctByPayloadData(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'payloadData', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<LocalPhrase, LocalPhrase, QDistinct> distinctByQueuePosition() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'queuePosition');
    });
  }

  QueryBuilder<LocalPhrase, LocalPhrase, QDistinct> distinctBySourceLanguage(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'sourceLanguage',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<LocalPhrase, LocalPhrase, QDistinct> distinctByStatus(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'status', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<LocalPhrase, LocalPhrase, QDistinct> distinctBySuccessStreak() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'successStreak');
    });
  }

  QueryBuilder<LocalPhrase, LocalPhrase, QDistinct> distinctByTag(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'tag', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<LocalPhrase, LocalPhrase, QDistinct> distinctByUlid(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'ulid', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<LocalPhrase, LocalPhrase, QDistinct> distinctByUpdatedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'updatedAt');
    });
  }
}

extension LocalPhraseQueryProperty
    on QueryBuilder<LocalPhrase, LocalPhrase, QQueryProperty> {
  QueryBuilder<LocalPhrase, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<LocalPhrase, String?, QQueryOperations>
      idiomaticTranslationProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'idiomaticTranslation');
    });
  }

  QueryBuilder<LocalPhrase, bool, QQueryOperations> isSyncedProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'isSynced');
    });
  }

  QueryBuilder<LocalPhrase, DateTime?, QQueryOperations> learnedAtProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'learnedAt');
    });
  }

  QueryBuilder<LocalPhrase, String, QQueryOperations> originalTextProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'originalText');
    });
  }

  QueryBuilder<LocalPhrase, String?, QQueryOperations> payloadDataProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'payloadData');
    });
  }

  QueryBuilder<LocalPhrase, int, QQueryOperations> queuePositionProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'queuePosition');
    });
  }

  QueryBuilder<LocalPhrase, String, QQueryOperations> sourceLanguageProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'sourceLanguage');
    });
  }

  QueryBuilder<LocalPhrase, String, QQueryOperations> statusProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'status');
    });
  }

  QueryBuilder<LocalPhrase, int, QQueryOperations> successStreakProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'successStreak');
    });
  }

  QueryBuilder<LocalPhrase, String?, QQueryOperations> tagProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'tag');
    });
  }

  QueryBuilder<LocalPhrase, String, QQueryOperations> ulidProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'ulid');
    });
  }

  QueryBuilder<LocalPhrase, DateTime, QQueryOperations> updatedAtProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'updatedAt');
    });
  }
}
