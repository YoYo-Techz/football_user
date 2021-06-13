library teams_data;

import 'dart:convert';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:myfootball/config/serializers.dart';

part 'teams_data.g.dart';

abstract class TeamsData implements Built<TeamsData, TeamsDataBuilder> {
  TeamsData._();

  factory TeamsData([updates(TeamsDataBuilder b)]) = _$TeamsData;

  @BuiltValueField(wireName: 'id')
  int get id;
  @BuiltValueField(wireName: 'name')
  String get name;
  @BuiltValueField(wireName: 'img')
  String get img;
  String toJson() {
    return json.encode(serializers.serializeWith(TeamsData.serializer, this));
  }

  static TeamsData fromJson(String jsonString) {
    return serializers.deserializeWith(
        TeamsData.serializer, json.decode(jsonString))!;
  }

  static Serializer<TeamsData> get serializer => _$teamsDataSerializer;
}

