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
    value = object.ss;
    if (value != null) {
      result
        ..add('ss')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
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
        case 'ss':
          result.ss = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'home':
          result.home.replace(serializers.deserialize(value,
              specifiedType: const FullType(Home))! as Home);
          break;
        case 'away':
          result.away.replace(serializers.deserialize(value,
              specifiedType: const FullType(Away))! as Away);
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
  final String? ss;
  @override
  final Home? home;
  @override
  final Away? away;

  factory _$Event([void Function(EventBuilder)? updates]) =>
      (new EventBuilder()..update(updates)).build();

  _$Event._(
      {required this.id,
      this.time,
      this.timeReadable,
      this.timeStatus,
      this.ss,
      this.home,
      this.away})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(id, 'Event', 'id');
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
        ss == other.ss &&
        home == other.home &&
        away == other.away;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc($jc($jc(0, id.hashCode), time.hashCode),
                        timeReadable.hashCode),
                    timeStatus.hashCode),
                ss.hashCode),
            home.hashCode),
        away.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Event')
          ..add('id', id)
          ..add('time', time)
          ..add('timeReadable', timeReadable)
          ..add('timeStatus', timeStatus)
          ..add('ss', ss)
          ..add('home', home)
          ..add('away', away))
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

  String? _ss;
  String? get ss => _$this._ss;
  set ss(String? ss) => _$this._ss = ss;

  HomeBuilder? _home;
  HomeBuilder get home => _$this._home ??= new HomeBuilder();
  set home(HomeBuilder? home) => _$this._home = home;

  AwayBuilder? _away;
  AwayBuilder get away => _$this._away ??= new AwayBuilder();
  set away(AwayBuilder? away) => _$this._away = away;

  EventBuilder();

  EventBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _time = $v.time;
      _timeReadable = $v.timeReadable;
      _timeStatus = $v.timeStatus;
      _ss = $v.ss;
      _home = $v.home?.toBuilder();
      _away = $v.away?.toBuilder();
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
              ss: ss,
              home: _home?.build(),
              away: _away?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'home';
        _home?.build();
        _$failedField = 'away';
        _away?.build();
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
