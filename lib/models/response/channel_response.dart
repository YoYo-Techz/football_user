library channel_response;

import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:myfootball/config/serializers.dart';
import 'package:myfootball/models/data/channel.dart';

part 'channel_response.g.dart';

abstract class ChannelResponse
    implements Built<ChannelResponse, ChannelResponseBuilder> {
  ChannelResponse._();

  factory ChannelResponse([updates(ChannelResponseBuilder b)]) =
      _$ChannelResponse;

  @BuiltValueField(wireName: 'status')
  bool? get status;
  @BuiltValueField(wireName: 'data')
  BuiltList<Channel> get data;
  String toJson() {
    return json
        .encode(serializers.serializeWith(ChannelResponse.serializer, this));
  }

  static ChannelResponse? fromJson(String jsonString) {
    return serializers.deserializeWith(
        ChannelResponse.serializer, json.decode(jsonString));
  }

  static Serializer<ChannelResponse> get serializer =>
      _$channelResponseSerializer;
}
