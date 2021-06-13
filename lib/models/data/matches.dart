library matches;

import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:myfootball/config/serializers.dart';

import 'matchs.dart';

part 'matches.g.dart';

abstract class Matches implements Built<Matches, MatchesBuilder> {
  Matches._();

  factory Matches([updates(MatchesBuilder b)]) = _$Matches;

  @BuiltValueField(wireName: 'status')
  bool get status;
  @BuiltValueField(wireName: 'data')
  BuiltList<Matchs> get data;
  String toJson() {
    return json.encode(serializers.serializeWith(Matches.serializer, this));
  }

  static Matches fromJson(String jsonString) {
    return serializers.deserializeWith(
        Matches.serializer, json.decode(jsonString))!;
  }

  static Serializer<Matches> get serializer => _$matchesSerializer;
}