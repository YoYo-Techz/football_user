// GENERATED CODE - DO NOT MODIFY BY HAND

part of teams_data;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<TeamsData> _$teamsDataSerializer = new _$TeamsDataSerializer();

class _$TeamsDataSerializer implements StructuredSerializer<TeamsData> {
  @override
  final Iterable<Type> types = const [TeamsData, _$TeamsData];
  @override
  final String wireName = 'TeamsData';

  @override
  Iterable<Object?> serialize(Serializers serializers, TeamsData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.id;
    if (value != null) {
      result
        ..add('id')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
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
  TeamsData deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new TeamsDataBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
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

class _$TeamsData extends TeamsData {
  @override
  final int? id;
  @override
  final String? name;
  @override
  final String? nameMm;
  @override
  final String? image;
  @override
  final Country? country;

  factory _$TeamsData([void Function(TeamsDataBuilder)? updates]) =>
      (new TeamsDataBuilder()..update(updates)).build();

  _$TeamsData._({this.id, this.name, this.nameMm, this.image, this.country})
      : super._();

  @override
  TeamsData rebuild(void Function(TeamsDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TeamsDataBuilder toBuilder() => new TeamsDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TeamsData &&
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
    return (newBuiltValueToStringHelper('TeamsData')
          ..add('id', id)
          ..add('name', name)
          ..add('nameMm', nameMm)
          ..add('image', image)
          ..add('country', country))
        .toString();
  }
}

class TeamsDataBuilder implements Builder<TeamsData, TeamsDataBuilder> {
  _$TeamsData? _$v;

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

  TeamsDataBuilder();

  TeamsDataBuilder get _$this {
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
  void replace(TeamsData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$TeamsData;
  }

  @override
  void update(void Function(TeamsDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$TeamsData build() {
    _$TeamsData _$result;
    try {
      _$result = _$v ??
          new _$TeamsData._(
              id: id,
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
            'TeamsData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
