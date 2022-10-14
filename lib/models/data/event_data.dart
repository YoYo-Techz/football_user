library event_data;

import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:myfootball/config/serializers.dart';
import 'package:myfootball/models/data/event.dart';
import 'package:myfootball/models/data/league.dart';

part 'event_data.g.dart';

abstract class EventData implements Built<EventData, EventDataBuilder> {
  EventData._();

  factory EventData([updates(EventDataBuilder b)]) = _$EventData;

  @BuiltValueField(wireName: 'league')
  League? get league;
  @BuiltValueField(wireName: 'event')
  BuiltList<Event>? get event;
  String toJson() {
    return json.encode(serializers.serializeWith(EventData.serializer, this));
  }

  static EventData? fromJson(String jsonString) {
    return serializers.deserializeWith(
        EventData.serializer, json.decode(jsonString));
  }

  static Serializer<EventData> get serializer => _$eventDataSerializer;
}
