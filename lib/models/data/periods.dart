library periods;

import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:myfootball/config/serializers.dart';

part 'periods.g.dart';

abstract class Periods implements Built<Periods, PeriodsBuilder> {
  Periods._();

  factory Periods([updates(PeriodsBuilder b)]) = _$Periods;

  @BuiltValueField(wireName: 'first')
  String? get first;
  @BuiltValueField(wireName: 'second')
  String? get second;
  String toJson() {
    return json.encode(serializers.serializeWith(Periods.serializer, this));
  }

  static Periods? fromJson(String jsonString) {
    return serializers.deserializeWith(
        Periods.serializer, json.decode(jsonString));
  }

  static Serializer<Periods> get serializer => _$periodsSerializer;
}
