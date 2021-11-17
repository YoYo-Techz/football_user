library matchs;

import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:myfootball/config/serializers.dart';
import 'package:myfootball/models/data/teams_data.dart';

part 'matchs.g.dart';
abstract class Matchs implements Built<Matchs, MatchsBuilder> {
  Matchs._();

  factory Matchs([updates(MatchsBuilder b)]) = _$Matchs;

  @BuiltValueField(wireName: 'id')
  int? get id;
  @BuiltValueField(wireName: 'team_one')
  TeamsData? get teamOne;
  @BuiltValueField(wireName: 'team_two')
  TeamsData? get teamTwo;
  @BuiltValueField(wireName: 'league')
  int? get league;
  @BuiltValueField(wireName: 'status')
  String? get status;
  @BuiltValueField(wireName: 'score')
  String? get score;
  @BuiltValueField(wireName: 'time')
  String? get time;
  @BuiltValueField(wireName: 'date')
  String? get date;
  @BuiltValueField(wireName: 'url')
  String? get url;
  @BuiltValueField(wireName: 'created_at')
  String? get createdAt;
  @BuiltValueField(wireName: 'updated_at')
  String? get updatedAt;
  String toJson() {
    return json.encode(serializers.serializeWith(Matchs.serializer, this));
  }

  static Matchs fromJson(String jsonString) {
    return serializers.deserializeWith(
        Matchs.serializer, json.decode(jsonString))!;
  }

  static Serializer<Matchs> get serializer => _$matchsSerializer;
}