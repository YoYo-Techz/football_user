library teams;

import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:myfootball/config/serializers.dart';
import 'package:myfootball/models/data/teams_data.dart';

part 'teams.g.dart';

abstract class Teams implements Built<Teams, TeamsBuilder> {
  Teams._();

  factory Teams([updates(TeamsBuilder b)]) = _$Teams;

  @BuiltValueField(wireName: 'status')
  bool get status;
  @BuiltValueField(wireName: 'data')
  BuiltList<TeamsData> get data;
  String toJson() {
    var serializers2 = serializers;
    return json.encode(serializers2.serializeWith(Teams.serializer, this));
  }

  static Teams fromJson(String jsonString) {
    return serializers.deserializeWith(
        Teams.serializer, json.decode(jsonString))!;
  }

  static Serializer<Teams> get serializer => _$teamsSerializer;
}