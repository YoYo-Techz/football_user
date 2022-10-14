library home;

import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:myfootball/config/serializers.dart';
import 'package:myfootball/models/data/country.dart';

part 'home.g.dart';

abstract class Home implements Built<Home, HomeBuilder> {
  Home._();

  factory Home([updates(HomeBuilder b)]) = _$Home;

  @BuiltValueField(wireName: 'id')
  int get id;
  @BuiltValueField(wireName: 'name')
  String? get name;
  @BuiltValueField(wireName: 'name_mm')
  String? get nameMm;
  @BuiltValueField(wireName: 'image')
  String? get image;
  @BuiltValueField(wireName: 'country')
  Country? get country;
  String toJson() {
    return json.encode(serializers.serializeWith(Home.serializer, this));
  }

  static Home? fromJson(String jsonString) {
    return serializers.deserializeWith(
        Home.serializer, json.decode(jsonString));
  }

  static Serializer<Home> get serializer => _$homeSerializer;
}
