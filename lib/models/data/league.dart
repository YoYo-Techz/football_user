library league;

import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:myfootball/config/serializers.dart';
import 'package:myfootball/models/data/country.dart';

part 'league.g.dart';

abstract class League implements Built<League, LeagueBuilder> {
  League._();

  factory League([updates(LeagueBuilder b)]) = _$League;

  @BuiltValueField(wireName: 'id')
  int get id;
  @BuiltValueField(wireName: 'name')
  String? get name;
  @BuiltValueField(wireName: 'country')
  String? get country;
  @BuiltValueField(wireName: 'logo')
  String? get logo;
  @BuiltValueField(wireName: 'flag')
  String? get flag;
  @BuiltValueField(wireName: 'season')
  String? get season;
  @BuiltValueField(wireName: 'round')
  String? get round;
  String toJson() {
    return json.encode(serializers.serializeWith(League.serializer, this));
  }

  static League? fromJson(String jsonString) {
    return serializers.deserializeWith(
        League.serializer, json.decode(jsonString));
  }

  static Serializer<League> get serializer => _$leagueSerializer;
}
