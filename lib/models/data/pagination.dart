library pagination;

import 'dart:convert';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:myfootball/config/serializers.dart';

part 'pagination.g.dart';

abstract class Pagination implements Built<Pagination, PaginationBuilder> {
  Pagination._();

  factory Pagination([updates(PaginationBuilder b)]) = _$Pagination;

  @BuiltValueField(wireName: 'current_page')
  int? get currentPage;
  @BuiltValueField(wireName: 'last_page')
  int? get lastPage;
  @BuiltValueField(wireName: 'per_page')
  int? get perPage;
  @BuiltValueField(wireName: 'total')
  int? get total;
  String toJson() {
    return json.encode(serializers.serializeWith(Pagination.serializer, this));
  }

  static Pagination? fromJson(String jsonString) {
    return serializers.deserializeWith(
        Pagination.serializer, json.decode(jsonString));
  }

  static Serializer<Pagination> get serializer => _$paginationSerializer;
}
