library away;

import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:myfootball/config/serializers.dart';
import 'package:myfootball/models/data/country.dart';

part 'away.g.dart';

abstract class Away implements Built<Away, AwayBuilder> {
  Away._();

  factory Away([updates(AwayBuilder b)]) = _$Away;

  @BuiltValueField(wireName: 'id')
  int get id;
  @BuiltValueField(wireName: 'name')
  String? get name;
  @BuiltValueField(wireName: 'name_mm')
  String? get nameMm;
  @BuiltValueField(wireName: 'logo')
  String? get logo;
  @BuiltValueField(wireName: 'country')
  Country? get country;
  String toJson() {
    return json.encode(serializers.serializeWith(Away.serializer, this));
  }

  static Away? fromJson(String jsonString) {
    return serializers.deserializeWith(
        Away.serializer, json.decode(jsonString));
  }

  static Serializer<Away> get serializer => _$awaySerializer;
}
