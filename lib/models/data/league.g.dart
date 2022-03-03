// GENERATED CODE - DO NOT MODIFY BY HAND

part of league;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<League> _$leagueSerializer = new _$LeagueSerializer();

class _$LeagueSerializer implements StructuredSerializer<League> {
  @override
  final Iterable<Type> types = const [League, _$League];
  @override
  final String wireName = 'League';

  @override
  Iterable<Object?> serialize(Serializers serializers, League object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(int)),
      'name',
      serializers.serialize(object.name, specifiedType: const FullType(String)),
      'img',
      serializers.serialize(object.img, specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  League deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new LeagueBuilder();

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
              specifiedType: const FullType(String)) as String;
          break;
        case 'img':
          result.img = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$League extends League {
  @override
  final int id;
  @override
  final String name;
  @override
  final String img;

  factory _$League([void Function(LeagueBuilder)? updates]) =>
      (new LeagueBuilder()..update(updates)).build();

  _$League._({required this.id, required this.name, required this.img})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(id, 'League', 'id');
    BuiltValueNullFieldError.checkNotNull(name, 'League', 'name');
    BuiltValueNullFieldError.checkNotNull(img, 'League', 'img');
  }

  @override
  League rebuild(void Function(LeagueBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  LeagueBuilder toBuilder() => new LeagueBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is League &&
        id == other.id &&
        name == other.name &&
        img == other.img;
  }

  @override
  int get hashCode {
    return $jf($jc($jc($jc(0, id.hashCode), name.hashCode), img.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('League')
          ..add('id', id)
          ..add('name', name)
          ..add('img', img))
        .toString();
  }
}

class LeagueBuilder implements Builder<League, LeagueBuilder> {
  _$League? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _img;
  String? get img => _$this._img;
  set img(String? img) => _$this._img = img;

  LeagueBuilder();

  LeagueBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _name = $v.name;
      _img = $v.img;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(League other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$League;
  }

  @override
  void update(void Function(LeagueBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$League build() {
    final _$result = _$v ??
        new _$League._(
            id: BuiltValueNullFieldError.checkNotNull(id, 'League', 'id'),
            name: BuiltValueNullFieldError.checkNotNull(name, 'League', 'name'),
            img: BuiltValueNullFieldError.checkNotNull(img, 'League', 'img'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
