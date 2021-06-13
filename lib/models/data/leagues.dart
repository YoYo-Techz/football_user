library leagues;

import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:myfootball/config/serializers.dart';

import 'league.dart';

part 'leagues.g.dart';

abstract class Leagues implements Built<Leagues, LeaguesBuilder> {
  Leagues._();

  factory Leagues([updates(LeaguesBuilder b)]) = _$Leagues;

  @BuiltValueField(wireName: 'status')
  bool get status;
  @BuiltValueField(wireName: 'data')
  BuiltList<League> get data;
  String toJson() {
    return json.encode(serializers.serializeWith(Leagues.serializer, this));
  }

  static Leagues fromJson(String jsonString) {
    return serializers.deserializeWith(
        Leagues.serializer, json.decode(jsonString))!;
  }

  static Serializer<Leagues> get serializer => _$leaguesSerializer;
}