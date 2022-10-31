library status;

import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:myfootball/config/serializers.dart';

part 'status.g.dart';

abstract class Status implements Built<Status, StatusBuilder> {
  Status._();

  factory Status([updates(StatusBuilder b)]) = _$Status;

  @BuiltValueField(wireName: 'long')
  String? get long;
  @BuiltValueField(wireName: 'short')
  String? get short;
  @BuiltValueField(wireName: 'elapsed')
  String? get elapsed;
  String toJson() {
    return json.encode(serializers.serializeWith(Status.serializer, this));
  }

  static Status? fromJson(String jsonString) {
    return serializers.deserializeWith(
        Status.serializer, json.decode(jsonString));
  }

  static Serializer<Status> get serializer => _$statusSerializer;
}
