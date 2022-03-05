library version_check;

import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:myfootball/config/serializers.dart';

part 'version_check.g.dart';

abstract class VersionCheck
    implements Built<VersionCheck, VersionCheckBuilder> {
  VersionCheck._();

  factory VersionCheck([updates(VersionCheckBuilder b)]) = _$VersionCheck;

  @BuiltValueField(wireName: 'version')
  String? get version;
  @BuiltValueField(wireName: 'deprecated_versions')
  BuiltList<String?> get deprecatedVersions;
  @BuiltValueField(wireName: 'release_note')
  String? get releaseNote;
  @BuiltValueField(wireName: 'isForce')
  bool? get isForce;
  String toJson() {
    return json
        .encode(serializers.serializeWith(VersionCheck.serializer, this));
  }

  static VersionCheck? fromJson(String jsonString) {
    return serializers.deserializeWith(
        VersionCheck.serializer, json.decode(jsonString))!;
  }

  static Serializer<VersionCheck> get serializer => _$versionCheckSerializer;
}
