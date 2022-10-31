library news;

import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:myfootball/config/serializers.dart';

part 'news.g.dart';

abstract class News implements Built<News, NewsBuilder> {
  News._();

  factory News([updates(NewsBuilder b)]) = _$News;

  @BuiltValueField(wireName: 'id')
  int get id;
  @BuiltValueField(wireName: 'title')
  String get title;
  @BuiltValueField(wireName: 'slug')
  String get slug;
  @BuiltValueField(wireName: 'image')
  String get image;
  @BuiltValueField(wireName: 'description')
  String get description;
  String toJson() {
    return json.encode(serializers.serializeWith(News.serializer, this));
  }

  static News? fromJson(String jsonString) {
    return serializers.deserializeWith(
        News.serializer, json.decode(jsonString));
  }

  static Serializer<News> get serializer => _$newsSerializer;
}
