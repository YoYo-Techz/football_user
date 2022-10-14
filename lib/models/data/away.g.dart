// GENERATED CODE - DO NOT MODIFY BY HAND

part of away;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Away> _$awaySerializer = new _$AwaySerializer();

class _$AwaySerializer implements StructuredSerializer<Away> {
  @override
  final Iterable<Type> types = const [Away, _$Away];
  @override
  final String wireName = 'Away';

  @override
  Iterable<Object?> serialize(Serializers serializers, Away object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(int)),
    ];
    Object? value;
    value = object.name;
    if (value != null) {
      result
        ..add('name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.nameMm;
    if (value != null) {
      result
        ..add('name_mm')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.image;
    if (value != null) {
      result
        ..add('image')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.country;
    if (value != null) {
      result
        ..add('country')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(Country)));
    }
    return result;
  }

  @override
  Away deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new AwayBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'name_mm':
          result.nameMm = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'image':
          result.image = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'country':
          result.country.replace(serializers.deserialize(value,
              specifiedType: const FullType(Country))! as Country);
          break;
      }
    }

    return result.build();
  }
}

class _$Away extends Away {
  @override
  final int id;
  @override
  final String? name;
  @override
  final String? nameMm;
  @override
  final String? image;
  @override
  final Country? country;

  factory _$Away([void Function(AwayBuilder)? updates]) =>
      (new AwayBuilder()..update(updates)).build();

  _$Away._({required this.id, this.name, this.nameMm, this.image, this.country})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(id, 'Away', 'id');
  }

  @override
  Away rebuild(void Function(AwayBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AwayBuilder toBuilder() => new AwayBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Away &&
        id == other.id &&
        name == other.name &&
        nameMm == other.nameMm &&
        image == other.image &&
        country == other.country;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc($jc(0, id.hashCode), name.hashCode), nameMm.hashCode),
            image.hashCode),
        country.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Away')
          ..add('id', id)
          ..add('name', name)
          ..add('nameMm', nameMm)
          ..add('image', image)
          ..add('country', country))
        .toString();
  }
}

class AwayBuilder implements Builder<Away, AwayBuilder> {
  _$Away? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _nameMm;
  String? get nameMm => _$this._nameMm;
  set nameMm(String? nameMm) => _$this._nameMm = nameMm;

  String? _image;
  String? get image => _$this._image;
  set image(String? image) => _$this._image = image;

  CountryBuilder? _country;
  CountryBuilder get country => _$this._country ??= new CountryBuilder();
  set country(CountryBuilder? country) => _$this._country = country;

  AwayBuilder();

  AwayBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _name = $v.name;
      _nameMm = $v.nameMm;
      _image = $v.image;
      _country = $v.country?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Away other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Away;
  }

  @override
  void update(void Function(AwayBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Away build() {
    _$Away _$result;
    try {
      _$result = _$v ??
          new _$Away._(
              id: BuiltValueNullFieldError.checkNotNull(id, 'Away', 'id'),
              name: name,
              nameMm: nameMm,
              image: image,
              country: _country?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'country';
        _country?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'Away', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
