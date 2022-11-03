library table;

import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:myfootball/config/serializers.dart';

part 'table.g.dart';

abstract class Table implements Built<Table, TableBuilder> {
  Table._();

  factory Table([updates(TableBuilder b)]) = _$Table;

  @BuiltValueField(wireName: 'id')
  int get id;
  @BuiltValueField(wireName: 'league_id')
  int? get leagueId;
  @BuiltValueField(wireName: 'team_id')
  int? get teamId;
  @BuiltValueField(wireName: 'rank')
  int? get rank;
  @BuiltValueField(wireName: 'points')
  int? get points;
  @BuiltValueField(wireName: 'goalsDiff')
  int? get goalsDiff;
  @BuiltValueField(wireName: 'group')
  String? get group;
  @BuiltValueField(wireName: 'form')
  String? get form;
  @BuiltValueField(wireName: 'status')
  String? get status;
  @BuiltValueField(wireName: 'description')
  String? get description;
  @BuiltValueField(wireName: 'created_at')
  String? get createdAt;
  @BuiltValueField(wireName: 'updated_at')
  String? get updatedAt;
  String toJson() {
    return json.encode(serializers.serializeWith(Table.serializer, this));
  }

  static Table? fromJson(String jsonString) {
    return serializers.deserializeWith(
        Table.serializer, json.decode(jsonString));
  }

  static Serializer<Table> get serializer => _$tableSerializer;
}
