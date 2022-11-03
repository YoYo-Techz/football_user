library event_detail_response;

import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:myfootball/config/serializers.dart';
import 'package:myfootball/models/data/event.dart';
import 'package:myfootball/models/data/summary.dart';
import 'package:myfootball/models/data/table.dart';

part 'event_detail_response.g.dart';

abstract class EventDetailResponse
    implements Built<EventDetailResponse, EventDetailResponseBuilder> {
  EventDetailResponse._();

  factory EventDetailResponse([updates(EventDetailResponseBuilder b)]) =
      _$EventDetailResponse;

  @BuiltValueField(wireName: 'data')
  Event get data;
  @BuiltValueField(wireName: 'h2h')
  BuiltList<Event>? get h2h;
  @BuiltValueField(wireName: 'table')
  BuiltList<Table>? get table;
  @BuiltValueField(wireName: 'summary')
  BuiltList<Summary>? get summary;
  String toJson() {
    return json.encode(
        serializers.serializeWith(EventDetailResponse.serializer, this));
  }

  static EventDetailResponse? fromJson(String jsonString) {
    return serializers.deserializeWith(
        EventDetailResponse.serializer, json.decode(jsonString));
  }

  static Serializer<EventDetailResponse> get serializer =>
      _$eventDetailResponseSerializer;
}
