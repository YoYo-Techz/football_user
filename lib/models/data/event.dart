// ignore_for_file: unused_import

library event;

import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:myfootball/config/serializers.dart';
import 'package:myfootball/models/data/away.dart';
import 'package:myfootball/models/data/goals.dart';
import 'package:myfootball/models/data/home.dart';
import 'package:myfootball/models/data/league.dart';
import 'package:myfootball/models/data/periods.dart';
import 'package:myfootball/models/data/status.dart';

part 'event.g.dart';

abstract class Event implements Built<Event, EventBuilder> {
  Event._();

  factory Event([updates(EventBuilder b)]) = _$Event;

  @BuiltValueField(wireName: 'id')
  int get id;
  @BuiltValueField(wireName: 'time')
  String? get time;
  @BuiltValueField(wireName: 'time_readable')
  String? get timeReadable;
  @BuiltValueField(wireName: 'time_status')
  int? get timeStatus;
  @BuiltValueField(wireName: 'status')
  Status? get status;
  @BuiltValueField(wireName: 'home')
  Home? get home;
  @BuiltValueField(wireName: 'away')
  Away? get away;
  @BuiltValueField(wireName: 'goals')
  Goals? get goals;
  @BuiltValueField(wireName: 'periods')
  Periods get periods;
  @BuiltValueField(wireName: 'league')
  League? get league;
  String toJson() {
    return json.encode(serializers.serializeWith(Event.serializer, this));
  }

  static Event? fromJson(String jsonString) {
    return serializers.deserializeWith(
        Event.serializer, json.decode(jsonString));
  }

  static Serializer<Event> get serializer => _$eventSerializer;
}
