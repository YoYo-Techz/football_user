library new_list_response;

import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:myfootball/config/serializers.dart';
import 'package:myfootball/models/data/news.dart';
import 'package:myfootball/models/data/pagination.dart';

part 'new_list_response.g.dart';

abstract class NewListResponse
    implements Built<NewListResponse, NewListResponseBuilder> {
  NewListResponse._();

  factory NewListResponse([updates(NewListResponseBuilder b)]) =
      _$NewListResponse;

  @BuiltValueField(wireName: 'data')
  BuiltList<News> get data;
  @BuiltValueField(wireName: 'pagination')
  Pagination get pagination;
  String toJson() {
    return json
        .encode(serializers.serializeWith(NewListResponse.serializer, this));
  }

  static NewListResponse? fromJson(String jsonString) {
    return serializers.deserializeWith(
        NewListResponse.serializer, json.decode(jsonString));
  }

  static Serializer<NewListResponse> get serializer =>
      _$newListResponseSerializer;
}
