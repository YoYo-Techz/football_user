library teams_list_response;

import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:myfootball/config/serializers.dart';
import 'package:myfootball/models/data/pagination.dart';
import 'package:myfootball/models/data/teams_data.dart';

part 'teams_list_response.g.dart';

abstract class TeamsListResponse
    implements Built<TeamsListResponse, TeamsListResponseBuilder> {
  TeamsListResponse._();

  factory TeamsListResponse([updates(TeamsListResponseBuilder b)]) =
      _$TeamsListResponse;

  @BuiltValueField(wireName: 'data')
  BuiltList<TeamsData>? get data;
  @BuiltValueField(wireName: 'pagination')
  Pagination? get pagination;
  String toJson() {
    return json
        .encode(serializers.serializeWith(TeamsListResponse.serializer, this));
  }

  static TeamsListResponse? fromJson(String jsonString) {
    return serializers.deserializeWith(
        TeamsListResponse.serializer, json.decode(jsonString));
  }

  static Serializer<TeamsListResponse> get serializer =>
      _$teamsListResponseSerializer;
}
