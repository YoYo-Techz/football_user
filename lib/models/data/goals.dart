library goals;

import 'dart:convert';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:myfootball/config/serializers.dart';

part 'goals.g.dart';

abstract class Goals implements Built<Goals, GoalsBuilder> {
  Goals._();

  factory Goals([updates(GoalsBuilder b)]) = _$Goals;

  @BuiltValueField(wireName: 'home')
  String? get home;
  @BuiltValueField(wireName: 'away')
  String? get away;
  String toJson() {
    return json.encode(serializers.serializeWith(Goals.serializer, this));
  }

  static Goals? fromJson(String jsonString) {
    return serializers.deserializeWith(
        Goals.serializer, json.decode(jsonString));
  }

  static Serializer<Goals> get serializer => _$goalsSerializer;
}
