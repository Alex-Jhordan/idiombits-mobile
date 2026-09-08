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
    r'isSynced': PropertySchema(
      id: 0,
      name: r'isSynced',
      type: IsarType.bool,
    ),
    r'lastReviewedAt': PropertySchema(
      id: 1,
      name: r'lastReviewedAt',
      type: IsarType.dateTime,
    ),
    r'originalText': PropertySchema(
      id: 2,
      name: r'originalText',
      type: IsarType.string,
    ),
    r'phraseId': PropertySchema(
      id: 3,
      name: r'phraseId',
      type: IsarType.string,
    ),
    r'reviewCount': PropertySchema(
      id: 4,
      name: r'reviewCount',
      type: IsarType.long,
    ),
    r'sourceLanguage': PropertySchema(
      id: 5,
      name: r'sourceLanguage',
      type: IsarType.string,
    ),
    r'targetLanguage': PropertySchema(
      id: 6,
      name: r'targetLanguage',
      type: IsarType.string,
    ),
    r'translatedText': PropertySchema(
      id: 7,
      name: r'translatedText',
      type: IsarType.string,
    )
  },
  estimateSize: _localPhraseEstimateSize,
  serialize: _localPhraseSerialize,
  deserialize: _localPhraseDeserialize,
  deserializeProp: _localPhraseDeserializeProp,
  idName: r'id',
  indexes: {
    r'phraseId': IndexSchema(
      id: -1936705100628921048,
      name: r'phraseId',
      unique: true,
      replace: true,
      properties: [
        IndexPropertySchema(
          name: r'phraseId',
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
  bytesCount += 3 + object.originalText.length * 3;
  bytesCount += 3 + object.phraseId.length * 3;
  bytesCount += 3 + object.sourceLanguage.length * 3;
  bytesCount += 3 + object.targetLanguage.length * 3;
  bytesCount += 3 + object.translatedText.length * 3;
  return bytesCount;
}

void _localPhraseSerialize(
  LocalPhrase object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeBool(offsets[0], object.isSynced);
  writer.writeDateTime(offsets[1], object.lastReviewedAt);
  writer.writeString(offsets[2], object.originalText);
  writer.writeString(offsets[3], object.phraseId);
  writer.writeLong(offsets[4], object.reviewCount);
  writer.writeString(offsets[5], object.sourceLanguage);
  writer.writeString(offsets[6], object.targetLanguage);
  writer.writeString(offsets[7], object.translatedText);
}

LocalPhrase _localPhraseDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = LocalPhrase();
  object.id = id;
  object.isSynced = reader.readBool(offsets[0]);
  object.lastReviewedAt = reader.readDateTimeOrNull(offsets[1]);
  object.originalText = reader.readString(offsets[2]);
  object.phraseId = reader.readString(offsets[3]);
  object.reviewCount = reader.readLong(offsets[4]);
  object.sourceLanguage = reader.readString(offsets[5]);
  object.targetLanguage = reader.readString(offsets[6]);
  object.translatedText = reader.readString(offsets[7]);
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
      return (reader.readBool(offset)) as P;
    case 1:
      return (reader.readDateTimeOrNull(offset)) as P;
    case 2:
      return (reader.readString(offset)) as P;
    case 3:
      return (reader.readString(offset)) as P;
    case 4:
      return (reader.readLong(offset)) as P;
    case 5:
      return (reader.readString(offset)) as P;
    case 6:
      return (reader.readString(offset)) as P;
    case 7:
      return (reader.readString(offset)) as P;
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
  Future<LocalPhrase?> getByPhraseId(String phraseId) {
    return getByIndex(r'phraseId', [phraseId]);
  }

  LocalPhrase? getByPhraseIdSync(String phraseId) {
    return getByIndexSync(r'phraseId', [phraseId]);
  }

  Future<bool> deleteByPhraseId(String phraseId) {
    return deleteByIndex(r'phraseId', [phraseId]);
  }

  bool deleteByPhraseIdSync(String phraseId) {
    return deleteByIndexSync(r'phraseId', [phraseId]);
  }

  Future<List<LocalPhrase?>> getAllByPhraseId(List<String> phraseIdValues) {
    final values = phraseIdValues.map((e) => [e]).toList();
    return getAllByIndex(r'phraseId', values);
  }

  List<LocalPhrase?> getAllByPhraseIdSync(List<String> phraseIdValues) {
    final values = phraseIdValues.map((e) => [e]).toList();
    return getAllByIndexSync(r'phraseId', values);
  }

  Future<int> deleteAllByPhraseId(List<String> phraseIdValues) {
    final values = phraseIdValues.map((e) => [e]).toList();
    return deleteAllByIndex(r'phraseId', values);
  }

  int deleteAllByPhraseIdSync(List<String> phraseIdValues) {
    final values = phraseIdValues.map((e) => [e]).toList();
    return deleteAllByIndexSync(r'phraseId', values);
  }

  Future<Id> putByPhraseId(LocalPhrase object) {
    return putByIndex(r'phraseId', object);
  }

  Id putByPhraseIdSync(LocalPhrase object, {bool saveLinks = true}) {
    return putByIndexSync(r'phraseId', object, saveLinks: saveLinks);
  }

  Future<List<Id>> putAllByPhraseId(List<LocalPhrase> objects) {
    return putAllByIndex(r'phraseId', objects);
  }

  List<Id> putAllByPhraseIdSync(List<LocalPhrase> objects,
      {bool saveLinks = true}) {
    return putAllByIndexSync(r'phraseId', objects, saveLinks: saveLinks);
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

  QueryBuilder<LocalPhrase, LocalPhrase, QAfterWhereClause> phraseIdEqualTo(
      String phraseId) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'phraseId',
        value: [phraseId],
      ));
    });
  }

  QueryBuilder<LocalPhrase, LocalPhrase, QAfterWhereClause> phraseIdNotEqualTo(
      String phraseId) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'phraseId',
              lower: [],
              upper: [phraseId],
              includeUpper: false,
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'phraseId',
              lower: [phraseId],
              includeLower: false,
              upper: [],
            ));
      } else {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'phraseId',
              lower: [phraseId],
              includeLower: false,
              upper: [],
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'phraseId',
              lower: [],
              upper: [phraseId],
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
      lastReviewedAtIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'lastReviewedAt',
      ));
    });
  }

  QueryBuilder<LocalPhrase, LocalPhrase, QAfterFilterCondition>
      lastReviewedAtIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'lastReviewedAt',
      ));
    });
  }

  QueryBuilder<LocalPhrase, LocalPhrase, QAfterFilterCondition>
      lastReviewedAtEqualTo(DateTime? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'lastReviewedAt',
        value: value,
      ));
    });
  }

  QueryBuilder<LocalPhrase, LocalPhrase, QAfterFilterCondition>
      lastReviewedAtGreaterThan(
    DateTime? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'lastReviewedAt',
        value: value,
      ));
    });
  }

  QueryBuilder<LocalPhrase, LocalPhrase, QAfterFilterCondition>
      lastReviewedAtLessThan(
    DateTime? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'lastReviewedAt',
        value: value,
      ));
    });
  }

  QueryBuilder<LocalPhrase, LocalPhrase, QAfterFilterCondition>
      lastReviewedAtBetween(
    DateTime? lower,
    DateTime? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'lastReviewedAt',
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

  QueryBuilder<LocalPhrase, LocalPhrase, QAfterFilterCondition> phraseIdEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'phraseId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LocalPhrase, LocalPhrase, QAfterFilterCondition>
      phraseIdGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'phraseId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LocalPhrase, LocalPhrase, QAfterFilterCondition>
      phraseIdLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'phraseId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LocalPhrase, LocalPhrase, QAfterFilterCondition> phraseIdBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'phraseId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LocalPhrase, LocalPhrase, QAfterFilterCondition>
      phraseIdStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'phraseId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LocalPhrase, LocalPhrase, QAfterFilterCondition>
      phraseIdEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'phraseId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LocalPhrase, LocalPhrase, QAfterFilterCondition>
      phraseIdContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'phraseId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LocalPhrase, LocalPhrase, QAfterFilterCondition> phraseIdMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'phraseId',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LocalPhrase, LocalPhrase, QAfterFilterCondition>
      phraseIdIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'phraseId',
        value: '',
      ));
    });
  }

  QueryBuilder<LocalPhrase, LocalPhrase, QAfterFilterCondition>
      phraseIdIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'phraseId',
        value: '',
      ));
    });
  }

  QueryBuilder<LocalPhrase, LocalPhrase, QAfterFilterCondition>
      reviewCountEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'reviewCount',
        value: value,
      ));
    });
  }

  QueryBuilder<LocalPhrase, LocalPhrase, QAfterFilterCondition>
      reviewCountGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'reviewCount',
        value: value,
      ));
    });
  }

  QueryBuilder<LocalPhrase, LocalPhrase, QAfterFilterCondition>
      reviewCountLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'reviewCount',
        value: value,
      ));
    });
  }

  QueryBuilder<LocalPhrase, LocalPhrase, QAfterFilterCondition>
      reviewCountBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'reviewCount',
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

  QueryBuilder<LocalPhrase, LocalPhrase, QAfterFilterCondition>
      targetLanguageEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'targetLanguage',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LocalPhrase, LocalPhrase, QAfterFilterCondition>
      targetLanguageGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'targetLanguage',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LocalPhrase, LocalPhrase, QAfterFilterCondition>
      targetLanguageLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'targetLanguage',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LocalPhrase, LocalPhrase, QAfterFilterCondition>
      targetLanguageBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'targetLanguage',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LocalPhrase, LocalPhrase, QAfterFilterCondition>
      targetLanguageStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'targetLanguage',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LocalPhrase, LocalPhrase, QAfterFilterCondition>
      targetLanguageEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'targetLanguage',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LocalPhrase, LocalPhrase, QAfterFilterCondition>
      targetLanguageContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'targetLanguage',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LocalPhrase, LocalPhrase, QAfterFilterCondition>
      targetLanguageMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'targetLanguage',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LocalPhrase, LocalPhrase, QAfterFilterCondition>
      targetLanguageIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'targetLanguage',
        value: '',
      ));
    });
  }

  QueryBuilder<LocalPhrase, LocalPhrase, QAfterFilterCondition>
      targetLanguageIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'targetLanguage',
        value: '',
      ));
    });
  }

  QueryBuilder<LocalPhrase, LocalPhrase, QAfterFilterCondition>
      translatedTextEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'translatedText',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LocalPhrase, LocalPhrase, QAfterFilterCondition>
      translatedTextGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'translatedText',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LocalPhrase, LocalPhrase, QAfterFilterCondition>
      translatedTextLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'translatedText',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LocalPhrase, LocalPhrase, QAfterFilterCondition>
      translatedTextBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'translatedText',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LocalPhrase, LocalPhrase, QAfterFilterCondition>
      translatedTextStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'translatedText',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LocalPhrase, LocalPhrase, QAfterFilterCondition>
      translatedTextEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'translatedText',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LocalPhrase, LocalPhrase, QAfterFilterCondition>
      translatedTextContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'translatedText',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LocalPhrase, LocalPhrase, QAfterFilterCondition>
      translatedTextMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'translatedText',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LocalPhrase, LocalPhrase, QAfterFilterCondition>
      translatedTextIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'translatedText',
        value: '',
      ));
    });
  }

  QueryBuilder<LocalPhrase, LocalPhrase, QAfterFilterCondition>
      translatedTextIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'translatedText',
        value: '',
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

  QueryBuilder<LocalPhrase, LocalPhrase, QAfterSortBy> sortByLastReviewedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'lastReviewedAt', Sort.asc);
    });
  }

  QueryBuilder<LocalPhrase, LocalPhrase, QAfterSortBy>
      sortByLastReviewedAtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'lastReviewedAt', Sort.desc);
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

  QueryBuilder<LocalPhrase, LocalPhrase, QAfterSortBy> sortByPhraseId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'phraseId', Sort.asc);
    });
  }

  QueryBuilder<LocalPhrase, LocalPhrase, QAfterSortBy> sortByPhraseIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'phraseId', Sort.desc);
    });
  }

  QueryBuilder<LocalPhrase, LocalPhrase, QAfterSortBy> sortByReviewCount() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'reviewCount', Sort.asc);
    });
  }

  QueryBuilder<LocalPhrase, LocalPhrase, QAfterSortBy> sortByReviewCountDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'reviewCount', Sort.desc);
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

  QueryBuilder<LocalPhrase, LocalPhrase, QAfterSortBy> sortByTargetLanguage() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'targetLanguage', Sort.asc);
    });
  }

  QueryBuilder<LocalPhrase, LocalPhrase, QAfterSortBy>
      sortByTargetLanguageDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'targetLanguage', Sort.desc);
    });
  }

  QueryBuilder<LocalPhrase, LocalPhrase, QAfterSortBy> sortByTranslatedText() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'translatedText', Sort.asc);
    });
  }

  QueryBuilder<LocalPhrase, LocalPhrase, QAfterSortBy>
      sortByTranslatedTextDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'translatedText', Sort.desc);
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

  QueryBuilder<LocalPhrase, LocalPhrase, QAfterSortBy> thenByLastReviewedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'lastReviewedAt', Sort.asc);
    });
  }

  QueryBuilder<LocalPhrase, LocalPhrase, QAfterSortBy>
      thenByLastReviewedAtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'lastReviewedAt', Sort.desc);
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

  QueryBuilder<LocalPhrase, LocalPhrase, QAfterSortBy> thenByPhraseId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'phraseId', Sort.asc);
    });
  }

  QueryBuilder<LocalPhrase, LocalPhrase, QAfterSortBy> thenByPhraseIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'phraseId', Sort.desc);
    });
  }

  QueryBuilder<LocalPhrase, LocalPhrase, QAfterSortBy> thenByReviewCount() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'reviewCount', Sort.asc);
    });
  }

  QueryBuilder<LocalPhrase, LocalPhrase, QAfterSortBy> thenByReviewCountDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'reviewCount', Sort.desc);
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

  QueryBuilder<LocalPhrase, LocalPhrase, QAfterSortBy> thenByTargetLanguage() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'targetLanguage', Sort.asc);
    });
  }

  QueryBuilder<LocalPhrase, LocalPhrase, QAfterSortBy>
      thenByTargetLanguageDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'targetLanguage', Sort.desc);
    });
  }

  QueryBuilder<LocalPhrase, LocalPhrase, QAfterSortBy> thenByTranslatedText() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'translatedText', Sort.asc);
    });
  }

  QueryBuilder<LocalPhrase, LocalPhrase, QAfterSortBy>
      thenByTranslatedTextDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'translatedText', Sort.desc);
    });
  }
}

extension LocalPhraseQueryWhereDistinct
    on QueryBuilder<LocalPhrase, LocalPhrase, QDistinct> {
  QueryBuilder<LocalPhrase, LocalPhrase, QDistinct> distinctByIsSynced() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'isSynced');
    });
  }

  QueryBuilder<LocalPhrase, LocalPhrase, QDistinct> distinctByLastReviewedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'lastReviewedAt');
    });
  }

  QueryBuilder<LocalPhrase, LocalPhrase, QDistinct> distinctByOriginalText(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'originalText', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<LocalPhrase, LocalPhrase, QDistinct> distinctByPhraseId(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'phraseId', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<LocalPhrase, LocalPhrase, QDistinct> distinctByReviewCount() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'reviewCount');
    });
  }

  QueryBuilder<LocalPhrase, LocalPhrase, QDistinct> distinctBySourceLanguage(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'sourceLanguage',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<LocalPhrase, LocalPhrase, QDistinct> distinctByTargetLanguage(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'targetLanguage',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<LocalPhrase, LocalPhrase, QDistinct> distinctByTranslatedText(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'translatedText',
          caseSensitive: caseSensitive);
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

  QueryBuilder<LocalPhrase, bool, QQueryOperations> isSyncedProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'isSynced');
    });
  }

  QueryBuilder<LocalPhrase, DateTime?, QQueryOperations>
      lastReviewedAtProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'lastReviewedAt');
    });
  }

  QueryBuilder<LocalPhrase, String, QQueryOperations> originalTextProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'originalText');
    });
  }

  QueryBuilder<LocalPhrase, String, QQueryOperations> phraseIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'phraseId');
    });
  }

  QueryBuilder<LocalPhrase, int, QQueryOperations> reviewCountProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'reviewCount');
    });
  }

  QueryBuilder<LocalPhrase, String, QQueryOperations> sourceLanguageProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'sourceLanguage');
    });
  }

  QueryBuilder<LocalPhrase, String, QQueryOperations> targetLanguageProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'targetLanguage');
    });
  }

  QueryBuilder<LocalPhrase, String, QQueryOperations> translatedTextProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'translatedText');
    });
  }
}
