// GENERATED CODE - DO NOT MODIFY BY HAND

part of version_check;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<VersionCheck> _$versionCheckSerializer =
    new _$VersionCheckSerializer();

class _$VersionCheckSerializer implements StructuredSerializer<VersionCheck> {
  @override
  final Iterable<Type> types = const [VersionCheck, _$VersionCheck];
  @override
  final String wireName = 'VersionCheck';

  @override
  Iterable<Object?> serialize(Serializers serializers, VersionCheck object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'deprecated_versions',
      serializers.serialize(object.deprecatedVersions,
          specifiedType: const FullType(
              BuiltList, const [const FullType.nullable(String)])),
    ];
    Object? value;
    value = object.version;
    if (value != null) {
      result
        ..add('version')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.releaseNote;
    if (value != null) {
      result
        ..add('release_note')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.isForce;
    if (value != null) {
      result
        ..add('isForce')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    return result;
  }

  @override
  VersionCheck deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new VersionCheckBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'version':
          result.version = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'deprecated_versions':
          result.deprecatedVersions.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType.nullable(String)]))!
              as BuiltList<Object?>);
          break;
        case 'release_note':
          result.releaseNote = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'isForce':
          result.isForce = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
      }
    }

    return result.build();
  }
}

class _$VersionCheck extends VersionCheck {
  @override
  final String? version;
  @override
  final BuiltList<String?> deprecatedVersions;
  @override
  final String? releaseNote;
  @override
  final bool? isForce;

  factory _$VersionCheck([void Function(VersionCheckBuilder)? updates]) =>
      (new VersionCheckBuilder()..update(updates)).build();

  _$VersionCheck._(
      {this.version,
      required this.deprecatedVersions,
      this.releaseNote,
      this.isForce})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        deprecatedVersions, 'VersionCheck', 'deprecatedVersions');
  }

  @override
  VersionCheck rebuild(void Function(VersionCheckBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  VersionCheckBuilder toBuilder() => new VersionCheckBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is VersionCheck &&
        version == other.version &&
        deprecatedVersions == other.deprecatedVersions &&
        releaseNote == other.releaseNote &&
        isForce == other.isForce;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, version.hashCode), deprecatedVersions.hashCode),
            releaseNote.hashCode),
        isForce.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('VersionCheck')
          ..add('version', version)
          ..add('deprecatedVersions', deprecatedVersions)
          ..add('releaseNote', releaseNote)
          ..add('isForce', isForce))
        .toString();
  }
}

class VersionCheckBuilder
    implements Builder<VersionCheck, VersionCheckBuilder> {
  _$VersionCheck? _$v;

  String? _version;
  String? get version => _$this._version;
  set version(String? version) => _$this._version = version;

  ListBuilder<String?>? _deprecatedVersions;
  ListBuilder<String?> get deprecatedVersions =>
      _$this._deprecatedVersions ??= new ListBuilder<String?>();
  set deprecatedVersions(ListBuilder<String?>? deprecatedVersions) =>
      _$this._deprecatedVersions = deprecatedVersions;

  String? _releaseNote;
  String? get releaseNote => _$this._releaseNote;
  set releaseNote(String? releaseNote) => _$this._releaseNote = releaseNote;

  bool? _isForce;
  bool? get isForce => _$this._isForce;
  set isForce(bool? isForce) => _$this._isForce = isForce;

  VersionCheckBuilder();

  VersionCheckBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _version = $v.version;
      _deprecatedVersions = $v.deprecatedVersions.toBuilder();
      _releaseNote = $v.releaseNote;
      _isForce = $v.isForce;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(VersionCheck other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$VersionCheck;
  }

  @override
  void update(void Function(VersionCheckBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$VersionCheck build() {
    _$VersionCheck _$result;
    try {
      _$result = _$v ??
          new _$VersionCheck._(
              version: version,
              deprecatedVersions: deprecatedVersions.build(),
              releaseNote: releaseNote,
              isForce: isForce);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'deprecatedVersions';
        deprecatedVersions.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'VersionCheck', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
