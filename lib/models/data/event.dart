library event;

import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:myfootball/config/serializers.dart';
import 'package:myfootball/models/data/away.dart';
import 'package:myfootball/models/data/home.dart';

part 'event.g.dart';

abstract class Event implements Built<Event, EventBuilder> {
  Event._();

  factory Event([updates(EventBuilder b)]) = _$Event;

  @BuiltValueField(wireName: 'id')
  int get id;
  @BuiltValueField(wireName: 'time')
  String ?get time;
  @BuiltValueField(wireName: 'time_readable')
  String? get timeReadable;
  @BuiltValueField(wireName: 'time_status')
  int? get timeStatus;
  @BuiltValueField(wireName: 'ss')
  String? get ss;
  @BuiltValueField(wireName: 'home')
  Home? get home;
  @BuiltValueField(wireName: 'away')
  Away? get away;
  String toJson() {
    return json.encode(serializers.serializeWith(Event.serializer, this));
  }

  static Event? fromJson(String jsonString) {
    return serializers.deserializeWith(
        Event.serializer, json.decode(jsonString));
  }

  static Serializer<Event> get serializer => _$eventSerializer;
}
