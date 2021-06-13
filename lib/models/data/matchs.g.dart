// GENERATED CODE - DO NOT MODIFY BY HAND

part of matchs;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Matchs> _$matchsSerializer = new _$MatchsSerializer();

class _$MatchsSerializer implements StructuredSerializer<Matchs> {
  @override
  final Iterable<Type> types = const [Matchs, _$Matchs];
  @override
  final String wireName = 'Matchs';

  @override
  Iterable<Object?> serialize(Serializers serializers, Matchs object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(int)),
      'team_one',
      serializers.serialize(object.teamOne,
          specifiedType:
              const FullType(BuiltList, const [const FullType(TeamsData)])),
      'team_two',
      serializers.serialize(object.teamTwo,
          specifiedType:
              const FullType(BuiltList, const [const FullType(TeamsData)])),
      'league',
      serializers.serialize(object.league, specifiedType: const FullType(int)),
      'status',
      serializers.serialize(object.status,
          specifiedType: const FullType(String)),
      'score',
      serializers.serialize(object.score,
          specifiedType: const FullType(String)),
      'time',
      serializers.serialize(object.time, specifiedType: const FullType(String)),
      'date',
      serializers.serialize(object.date, specifiedType: const FullType(String)),
      'url',
      serializers.serialize(object.url, specifiedType: const FullType(String)),
      'created_at',
      serializers.serialize(object.createdAt,
          specifiedType: const FullType(String)),
      'updated_at',
      serializers.serialize(object.updatedAt,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  Matchs deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new MatchsBuilder();

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
        case 'team_one':
          result.teamOne.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(TeamsData)]))!
              as BuiltList<Object>);
          break;
        case 'team_two':
          result.teamTwo.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(TeamsData)]))!
              as BuiltList<Object>);
          break;
        case 'league':
          result.league = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'status':
          result.status = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'score':
          result.score = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'time':
          result.time = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'date':
          result.date = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'url':
          result.url = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'created_at':
          result.createdAt = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'updated_at':
          result.updatedAt = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$Matchs extends Matchs {
  @override
  final int id;
  @override
  final BuiltList<TeamsData> teamOne;
  @override
  final BuiltList<TeamsData> teamTwo;
  @override
  final int league;
  @override
  final String status;
  @override
  final String score;
  @override
  final String time;
  @override
  final String date;
  @override
  final String url;
  @override
  final String createdAt;
  @override
  final String updatedAt;

  factory _$Matchs([void Function(MatchsBuilder)? updates]) =>
      (new MatchsBuilder()..update(updates)).build();

  _$Matchs._(
      {required this.id,
      required this.teamOne,
      required this.teamTwo,
      required this.league,
      required this.status,
      required this.score,
      required this.time,
      required this.date,
      required this.url,
      required this.createdAt,
      required this.updatedAt})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(id, 'Matchs', 'id');
    BuiltValueNullFieldError.checkNotNull(teamOne, 'Matchs', 'teamOne');
    BuiltValueNullFieldError.checkNotNull(teamTwo, 'Matchs', 'teamTwo');
    BuiltValueNullFieldError.checkNotNull(league, 'Matchs', 'league');
    BuiltValueNullFieldError.checkNotNull(status, 'Matchs', 'status');
    BuiltValueNullFieldError.checkNotNull(score, 'Matchs', 'score');
    BuiltValueNullFieldError.checkNotNull(time, 'Matchs', 'time');
    BuiltValueNullFieldError.checkNotNull(date, 'Matchs', 'date');
    BuiltValueNullFieldError.checkNotNull(url, 'Matchs', 'url');
    BuiltValueNullFieldError.checkNotNull(createdAt, 'Matchs', 'createdAt');
    BuiltValueNullFieldError.checkNotNull(updatedAt, 'Matchs', 'updatedAt');
  }

  @override
  Matchs rebuild(void Function(MatchsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  MatchsBuilder toBuilder() => new MatchsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Matchs &&
        id == other.id &&
        teamOne == other.teamOne &&
        teamTwo == other.teamTwo &&
        league == other.league &&
        status == other.status &&
        score == other.score &&
        time == other.time &&
        date == other.date &&
        url == other.url &&
        createdAt == other.createdAt &&
        updatedAt == other.updatedAt;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc(
                                $jc(
                                    $jc(
                                        $jc($jc(0, id.hashCode),
                                            teamOne.hashCode),
                                        teamTwo.hashCode),
                                    league.hashCode),
                                status.hashCode),
                            score.hashCode),
                        time.hashCode),
                    date.hashCode),
                url.hashCode),
            createdAt.hashCode),
        updatedAt.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Matchs')
          ..add('id', id)
          ..add('teamOne', teamOne)
          ..add('teamTwo', teamTwo)
          ..add('league', league)
          ..add('status', status)
          ..add('score', score)
          ..add('time', time)
          ..add('date', date)
          ..add('url', url)
          ..add('createdAt', createdAt)
          ..add('updatedAt', updatedAt))
        .toString();
  }
}

class MatchsBuilder implements Builder<Matchs, MatchsBuilder> {
  _$Matchs? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  ListBuilder<TeamsData>? _teamOne;
  ListBuilder<TeamsData> get teamOne =>
      _$this._teamOne ??= new ListBuilder<TeamsData>();
  set teamOne(ListBuilder<TeamsData>? teamOne) => _$this._teamOne = teamOne;

  ListBuilder<TeamsData>? _teamTwo;
  ListBuilder<TeamsData> get teamTwo =>
      _$this._teamTwo ??= new ListBuilder<TeamsData>();
  set teamTwo(ListBuilder<TeamsData>? teamTwo) => _$this._teamTwo = teamTwo;

  int? _league;
  int? get league => _$this._league;
  set league(int? league) => _$this._league = league;

  String? _status;
  String? get status => _$this._status;
  set status(String? status) => _$this._status = status;

  String? _score;
  String? get score => _$this._score;
  set score(String? score) => _$this._score = score;

  String? _time;
  String? get time => _$this._time;
  set time(String? time) => _$this._time = time;

  String? _date;
  String? get date => _$this._date;
  set date(String? date) => _$this._date = date;

  String? _url;
  String? get url => _$this._url;
  set url(String? url) => _$this._url = url;

  String? _createdAt;
  String? get createdAt => _$this._createdAt;
  set createdAt(String? createdAt) => _$this._createdAt = createdAt;

  String? _updatedAt;
  String? get updatedAt => _$this._updatedAt;
  set updatedAt(String? updatedAt) => _$this._updatedAt = updatedAt;

  MatchsBuilder();

  MatchsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _teamOne = $v.teamOne.toBuilder();
      _teamTwo = $v.teamTwo.toBuilder();
      _league = $v.league;
      _status = $v.status;
      _score = $v.score;
      _time = $v.time;
      _date = $v.date;
      _url = $v.url;
      _createdAt = $v.createdAt;
      _updatedAt = $v.updatedAt;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Matchs other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Matchs;
  }

  @override
  void update(void Function(MatchsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Matchs build() {
    _$Matchs _$result;
    try {
      _$result = _$v ??
          new _$Matchs._(
              id: BuiltValueNullFieldError.checkNotNull(id, 'Matchs', 'id'),
              teamOne: teamOne.build(),
              teamTwo: teamTwo.build(),
              league: BuiltValueNullFieldError.checkNotNull(
                  league, 'Matchs', 'league'),
              status: BuiltValueNullFieldError.checkNotNull(
                  status, 'Matchs', 'status'),
              score: BuiltValueNullFieldError.checkNotNull(
                  score, 'Matchs', 'score'),
              time:
                  BuiltValueNullFieldError.checkNotNull(time, 'Matchs', 'time'),
              date:
                  BuiltValueNullFieldError.checkNotNull(date, 'Matchs', 'date'),
              url: BuiltValueNullFieldError.checkNotNull(url, 'Matchs', 'url'),
              createdAt: BuiltValueNullFieldError.checkNotNull(
                  createdAt, 'Matchs', 'createdAt'),
              updatedAt: BuiltValueNullFieldError.checkNotNull(
                  updatedAt, 'Matchs', 'updatedAt'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'teamOne';
        teamOne.build();
        _$failedField = 'teamTwo';
        teamTwo.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'Matchs', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
