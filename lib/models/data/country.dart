library country;

import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:myfootball/config/serializers.dart';

part 'country.g.dart';

abstract class Country implements Built<Country, CountryBuilder> {
  Country._();

  factory Country([updates(CountryBuilder b)]) = _$Country;

  @BuiltValueField(wireName: 'name')
  String? get name;
  @BuiltValueField(wireName: 'cc')
  String? get cc;
  String toJson() {
    return json.encode(serializers.serializeWith(Country.serializer, this));
  }

  static Country? fromJson(String jsonString) {
    return serializers.deserializeWith(
        Country.serializer, json.decode(jsonString));
  }

  static Serializer<Country> get serializer => _$countrySerializer;
}