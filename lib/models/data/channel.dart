// ignore_for_file: unused_import

library channel;

import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:myfootball/config/serializers.dart';

part 'channel.g.dart';

abstract class Channel implements Built<Channel, ChannelBuilder> {
  Channel._();

  factory Channel([updates(ChannelBuilder b)]) = _$Channel;

  @BuiltValueField(wireName: 'id')
  int? get id;
  @BuiltValueField(wireName: 'name')
  String get name;
  @BuiltValueField(wireName: 'img')
  String? get img;
  @BuiltValueField(wireName: 'link')
  String? get link;
  @BuiltValueField(wireName: 'status')
  String? get status;
  String toJson() {
    return json.encode(serializers.serializeWith(Channel.serializer, this));
  }

  static Channel? fromJson(String jsonString) {
    return serializers.deserializeWith(
        Channel.serializer, json.decode(jsonString));
  }

  static Serializer<Channel> get serializer => _$channelSerializer;
}
