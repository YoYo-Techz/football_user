library event_list_response;

import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:myfootball/config/serializers.dart';
import 'package:myfootball/models/data/event_data.dart';

part 'event_list_response.g.dart';

abstract class EventListResponse
    implements Built<EventListResponse, EventListResponseBuilder> {
  EventListResponse._();

  factory EventListResponse([updates(EventListResponseBuilder b)]) =
      _$EventListResponse;

  @BuiltValueField(wireName: 'status')
  bool get status;
  @BuiltValueField(wireName: 'data')
  BuiltList<EventData> get data;
  String toJson() {
    return json
        .encode(serializers.serializeWith(EventListResponse.serializer, this));
  }

  static EventListResponse? fromJson(String jsonString) {
    return serializers.deserializeWith(
        EventListResponse.serializer, json.decode(jsonString));
  }

  static Serializer<EventListResponse> get serializer =>
      _$eventListResponseSerializer;
}


// EventData
