library summary;

import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:myfootball/config/serializers.dart';

part 'summary.g.dart';

abstract class Summary implements Built<Summary, SummaryBuilder> {
  Summary._();

  factory Summary([updates(SummaryBuilder b)]) = _$Summary;

  @BuiltValueField(wireName: 'id')
  int get id;
  @BuiltValueField(wireName: 'fixture_id')
  int? get fixtureId;
  @BuiltValueField(wireName: 'time_elapsed')
  int? get timeElapsed;
  @BuiltValueField(wireName: 'team_id')
  int? get teamId;
  @BuiltValueField(wireName: 'type')
  String? get type;
  @BuiltValueField(wireName: 'detail')
  String? get detail;
  String toJson() {
    return json.encode(serializers.serializeWith(Summary.serializer, this));
  }

  static Summary? fromJson(String jsonString) {
    return serializers.deserializeWith(
        Summary.serializer, json.decode(jsonString));
  }

  static Serializer<Summary> get serializer => _$summarySerializer;
}
