// GENERATED CODE - DO NOT MODIFY BY HAND

part of home;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Home> _$homeSerializer = new _$HomeSerializer();

class _$HomeSerializer implements StructuredSerializer<Home> {
  @override
  final Iterable<Type> types = const [Home, _$Home];
  @override
  final String wireName = 'Home';

  @override
  Iterable<Object?> serialize(Serializers serializers, Home object,
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
  Home deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new HomeBuilder();

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

class _$Home extends Home {
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

  factory _$Home([void Function(HomeBuilder)? updates]) =>
      (new HomeBuilder()..update(updates)).build();

  _$Home._({required this.id, this.name, this.nameMm, this.image, this.country})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(id, 'Home', 'id');
  }

  @override
  Home rebuild(void Function(HomeBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  HomeBuilder toBuilder() => new HomeBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Home &&
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
    return (newBuiltValueToStringHelper('Home')
          ..add('id', id)
          ..add('name', name)
          ..add('nameMm', nameMm)
          ..add('image', image)
          ..add('country', country))
        .toString();
  }
}

class HomeBuilder implements Builder<Home, HomeBuilder> {
  _$Home? _$v;

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

  HomeBuilder();

  HomeBuilder get _$this {
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
  void replace(Home other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Home;
  }

  @override
  void update(void Function(HomeBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Home build() {
    _$Home _$result;
    try {
      _$result = _$v ??
          new _$Home._(
              id: BuiltValueNullFieldError.checkNotNull(id, 'Home', 'id'),
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
            'Home', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
