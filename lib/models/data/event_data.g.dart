// GENERATED CODE - DO NOT MODIFY BY HAND

part of event_data;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<EventData> _$eventDataSerializer = new _$EventDataSerializer();

class _$EventDataSerializer implements StructuredSerializer<EventData> {
  @override
  final Iterable<Type> types = const [EventData, _$EventData];
  @override
  final String wireName = 'EventData';

  @override
  Iterable<Object?> serialize(Serializers serializers, EventData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.league;
    if (value != null) {
      result
        ..add('league')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(League)));
    }
    value = object.event;
    if (value != null) {
      result
        ..add('event')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(BuiltList, const [const FullType(Event)])));
    }
    return result;
  }

  @override
  EventData deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new EventDataBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'league':
          result.league.replace(serializers.deserialize(value,
              specifiedType: const FullType(League))! as League);
          break;
        case 'event':
          result.event.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(Event)]))!
              as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$EventData extends EventData {
  @override
  final League? league;
  @override
  final BuiltList<Event>? event;

  factory _$EventData([void Function(EventDataBuilder)? updates]) =>
      (new EventDataBuilder()..update(updates)).build();

  _$EventData._({this.league, this.event}) : super._();

  @override
  EventData rebuild(void Function(EventDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  EventDataBuilder toBuilder() => new EventDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is EventData && league == other.league && event == other.event;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, league.hashCode), event.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('EventData')
          ..add('league', league)
          ..add('event', event))
        .toString();
  }
}

class EventDataBuilder implements Builder<EventData, EventDataBuilder> {
  _$EventData? _$v;

  LeagueBuilder? _league;
  LeagueBuilder get league => _$this._league ??= new LeagueBuilder();
  set league(LeagueBuilder? league) => _$this._league = league;

  ListBuilder<Event>? _event;
  ListBuilder<Event> get event => _$this._event ??= new ListBuilder<Event>();
  set event(ListBuilder<Event>? event) => _$this._event = event;

  EventDataBuilder();

  EventDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _league = $v.league?.toBuilder();
      _event = $v.event?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(EventData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$EventData;
  }

  @override
  void update(void Function(EventDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$EventData build() {
    _$EventData _$result;
    try {
      _$result = _$v ??
          new _$EventData._(league: _league?.build(), event: _event?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'league';
        _league?.build();
        _$failedField = 'event';
        _event?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'EventData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
