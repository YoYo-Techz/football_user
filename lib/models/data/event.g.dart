// GENERATED CODE - DO NOT MODIFY BY HAND

part of event;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Event> _$eventSerializer = new _$EventSerializer();

class _$EventSerializer implements StructuredSerializer<Event> {
  @override
  final Iterable<Type> types = const [Event, _$Event];
  @override
  final String wireName = 'Event';

  @override
  Iterable<Object?> serialize(Serializers serializers, Event object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(int)),
      'periods',
      serializers.serialize(object.periods,
          specifiedType: const FullType(Periods)),
    ];
    Object? value;
    value = object.time;
    if (value != null) {
      result
        ..add('time')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.timeReadable;
    if (value != null) {
      result
        ..add('time_readable')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.timeStatus;
    if (value != null) {
      result
        ..add('time_status')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.status;
    if (value != null) {
      result
        ..add('status')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(Status)));
    }
    value = object.home;
    if (value != null) {
      result
        ..add('home')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(Home)));
    }
    value = object.away;
    if (value != null) {
      result
        ..add('away')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(Away)));
    }
    value = object.goals;
    if (value != null) {
      result
        ..add('goals')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(Goals)));
    }
    return result;
  }

  @override
  Event deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new EventBuilder();

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
        case 'time':
          result.time = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'time_readable':
          result.timeReadable = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'time_status':
          result.timeStatus = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'status':
          result.status.replace(serializers.deserialize(value,
              specifiedType: const FullType(Status))! as Status);
          break;
        case 'home':
          result.home.replace(serializers.deserialize(value,
              specifiedType: const FullType(Home))! as Home);
          break;
        case 'away':
          result.away.replace(serializers.deserialize(value,
              specifiedType: const FullType(Away))! as Away);
          break;
        case 'goals':
          result.goals.replace(serializers.deserialize(value,
              specifiedType: const FullType(Goals))! as Goals);
          break;
        case 'periods':
          result.periods.replace(serializers.deserialize(value,
              specifiedType: const FullType(Periods))! as Periods);
          break;
      }
    }

    return result.build();
  }
}

class _$Event extends Event {
  @override
  final int id;
  @override
  final String? time;
  @override
  final String? timeReadable;
  @override
  final int? timeStatus;
  @override
  final Status? status;
  @override
  final Home? home;
  @override
  final Away? away;
  @override
  final Goals? goals;
  @override
  final Periods periods;

  factory _$Event([void Function(EventBuilder)? updates]) =>
      (new EventBuilder()..update(updates)).build();

  _$Event._(
      {required this.id,
      this.time,
      this.timeReadable,
      this.timeStatus,
      this.status,
      this.home,
      this.away,
      this.goals,
      required this.periods})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(id, 'Event', 'id');
    BuiltValueNullFieldError.checkNotNull(periods, 'Event', 'periods');
  }

  @override
  Event rebuild(void Function(EventBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  EventBuilder toBuilder() => new EventBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Event &&
        id == other.id &&
        time == other.time &&
        timeReadable == other.timeReadable &&
        timeStatus == other.timeStatus &&
        status == other.status &&
        home == other.home &&
        away == other.away &&
        goals == other.goals &&
        periods == other.periods;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc($jc($jc(0, id.hashCode), time.hashCode),
                                timeReadable.hashCode),
                            timeStatus.hashCode),
                        status.hashCode),
                    home.hashCode),
                away.hashCode),
            goals.hashCode),
        periods.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Event')
          ..add('id', id)
          ..add('time', time)
          ..add('timeReadable', timeReadable)
          ..add('timeStatus', timeStatus)
          ..add('status', status)
          ..add('home', home)
          ..add('away', away)
          ..add('goals', goals)
          ..add('periods', periods))
        .toString();
  }
}

class EventBuilder implements Builder<Event, EventBuilder> {
  _$Event? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _time;
  String? get time => _$this._time;
  set time(String? time) => _$this._time = time;

  String? _timeReadable;
  String? get timeReadable => _$this._timeReadable;
  set timeReadable(String? timeReadable) => _$this._timeReadable = timeReadable;

  int? _timeStatus;
  int? get timeStatus => _$this._timeStatus;
  set timeStatus(int? timeStatus) => _$this._timeStatus = timeStatus;

  StatusBuilder? _status;
  StatusBuilder get status => _$this._status ??= new StatusBuilder();
  set status(StatusBuilder? status) => _$this._status = status;

  HomeBuilder? _home;
  HomeBuilder get home => _$this._home ??= new HomeBuilder();
  set home(HomeBuilder? home) => _$this._home = home;

  AwayBuilder? _away;
  AwayBuilder get away => _$this._away ??= new AwayBuilder();
  set away(AwayBuilder? away) => _$this._away = away;

  GoalsBuilder? _goals;
  GoalsBuilder get goals => _$this._goals ??= new GoalsBuilder();
  set goals(GoalsBuilder? goals) => _$this._goals = goals;

  PeriodsBuilder? _periods;
  PeriodsBuilder get periods => _$this._periods ??= new PeriodsBuilder();
  set periods(PeriodsBuilder? periods) => _$this._periods = periods;

  EventBuilder();

  EventBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _time = $v.time;
      _timeReadable = $v.timeReadable;
      _timeStatus = $v.timeStatus;
      _status = $v.status?.toBuilder();
      _home = $v.home?.toBuilder();
      _away = $v.away?.toBuilder();
      _goals = $v.goals?.toBuilder();
      _periods = $v.periods.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Event other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Event;
  }

  @override
  void update(void Function(EventBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Event build() {
    _$Event _$result;
    try {
      _$result = _$v ??
          new _$Event._(
              id: BuiltValueNullFieldError.checkNotNull(id, 'Event', 'id'),
              time: time,
              timeReadable: timeReadable,
              timeStatus: timeStatus,
              status: _status?.build(),
              home: _home?.build(),
              away: _away?.build(),
              goals: _goals?.build(),
              periods: periods.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'status';
        _status?.build();
        _$failedField = 'home';
        _home?.build();
        _$failedField = 'away';
        _away?.build();
        _$failedField = 'goals';
        _goals?.build();
        _$failedField = 'periods';
        periods.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'Event', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
