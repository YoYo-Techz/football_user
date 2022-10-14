library all_event_response;

import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:myfootball/config/serializers.dart';
import 'package:myfootball/models/data/event_data.dart';

part 'all_event_response.g.dart';

abstract class AllEventResponse
    implements Built<AllEventResponse, AllEventResponseBuilder> {
  AllEventResponse._();

  factory AllEventResponse([updates(AllEventResponseBuilder b)]) =
      _$AllEventResponse;

  @BuiltValueField(wireName: 'status')
  bool get status;
  @BuiltValueField(wireName: 'data')
  BuiltList<EventData> get data;
  String toJson() {
    return json
        .encode(serializers.serializeWith(AllEventResponse.serializer, this));
  }

  static AllEventResponse? fromJson(String jsonString) {
    return serializers.deserializeWith(
        AllEventResponse.serializer, json.decode(jsonString));
  }

  static Serializer<AllEventResponse> get serializer =>
      _$allEventResponseSerializer;
}
