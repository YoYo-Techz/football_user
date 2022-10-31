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
    ];
    Object? value;
    value = object.name;
    if (value != null) {
      result
        ..add('name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.country;
    if (value != null) {
      result
        ..add('country')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.logo;
    if (value != null) {
      result
        ..add('logo')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.flag;
    if (value != null) {
      result
        ..add('flag')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.season;
    if (value != null) {
      result
        ..add('season')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.round;
    if (value != null) {
      result
        ..add('round')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
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
              specifiedType: const FullType(String)) as String?;
          break;
        case 'country':
          result.country = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'logo':
          result.logo = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'flag':
          result.flag = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'season':
          result.season = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'round':
          result.round = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
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
  final String? name;
  @override
  final String? country;
  @override
  final String? logo;
  @override
  final String? flag;
  @override
  final String? season;
  @override
  final String? round;

  factory _$League([void Function(LeagueBuilder)? updates]) =>
      (new LeagueBuilder()..update(updates)).build();

  _$League._(
      {required this.id,
      this.name,
      this.country,
      this.logo,
      this.flag,
      this.season,
      this.round})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(id, 'League', 'id');
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
        country == other.country &&
        logo == other.logo &&
        flag == other.flag &&
        season == other.season &&
        round == other.round;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc($jc($jc(0, id.hashCode), name.hashCode),
                        country.hashCode),
                    logo.hashCode),
                flag.hashCode),
            season.hashCode),
        round.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('League')
          ..add('id', id)
          ..add('name', name)
          ..add('country', country)
          ..add('logo', logo)
          ..add('flag', flag)
          ..add('season', season)
          ..add('round', round))
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

  String? _country;
  String? get country => _$this._country;
  set country(String? country) => _$this._country = country;

  String? _logo;
  String? get logo => _$this._logo;
  set logo(String? logo) => _$this._logo = logo;

  String? _flag;
  String? get flag => _$this._flag;
  set flag(String? flag) => _$this._flag = flag;

  String? _season;
  String? get season => _$this._season;
  set season(String? season) => _$this._season = season;

  String? _round;
  String? get round => _$this._round;
  set round(String? round) => _$this._round = round;

  LeagueBuilder();

  LeagueBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _name = $v.name;
      _country = $v.country;
      _logo = $v.logo;
      _flag = $v.flag;
      _season = $v.season;
      _round = $v.round;
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
            name: name,
            country: country,
            logo: logo,
            flag: flag,
            season: season,
            round: round);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
