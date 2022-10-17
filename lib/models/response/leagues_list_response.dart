library leagues_list_response;

import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:myfootball/config/serializers.dart';
import 'package:myfootball/models/data/league.dart';
import 'package:myfootball/models/data/pagination.dart';

part 'leagues_list_response.g.dart';

abstract class LeaguesListResponse
    implements Built<LeaguesListResponse, LeaguesListResponseBuilder> {
  LeaguesListResponse._();

  factory LeaguesListResponse([updates(LeaguesListResponseBuilder b)]) =
      _$LeaguesListResponse;

  @BuiltValueField(wireName: 'data')
  BuiltList<League>? get data;
  @BuiltValueField(wireName: 'pagination')
  Pagination get pagination;
  String toJson() {
    return json.encode(
        serializers.serializeWith(LeaguesListResponse.serializer, this));
  }

  static LeaguesListResponse? fromJson(String jsonString) {
    return serializers.deserializeWith(
        LeaguesListResponse.serializer, json.decode(jsonString));
  }

  static Serializer<LeaguesListResponse> get serializer =>
      _$leaguesListResponseSerializer;
}
