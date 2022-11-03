// GENERATED CODE - DO NOT MODIFY BY HAND

part of event_detail_response;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<EventDetailResponse> _$eventDetailResponseSerializer =
    new _$EventDetailResponseSerializer();

class _$EventDetailResponseSerializer
    implements StructuredSerializer<EventDetailResponse> {
  @override
  final Iterable<Type> types = const [
    EventDetailResponse,
    _$EventDetailResponse
  ];
  @override
  final String wireName = 'EventDetailResponse';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, EventDetailResponse object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'h2h',
      serializers.serialize(object.h2h,
          specifiedType: const FullType(
              BuiltList, const [const FullType.nullable(Event)])),
      'table',
      serializers.serialize(object.table,
          specifiedType: const FullType(
              BuiltList, const [const FullType.nullable(Table)])),
      'summary',
      serializers.serialize(object.summary,
          specifiedType: const FullType(
              BuiltList, const [const FullType.nullable(Summary)])),
    ];
    Object? value;
    value = object.data;
    if (value != null) {
      result
        ..add('data')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(Event)));
    }
    return result;
  }

  @override
  EventDetailResponse deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new EventDetailResponseBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'data':
          result.data.replace(serializers.deserialize(value,
              specifiedType: const FullType(Event))! as Event);
          break;
        case 'h2h':
          result.h2h.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType.nullable(Event)]))!
              as BuiltList<Object?>);
          break;
        case 'table':
          result.table.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType.nullable(Table)]))!
              as BuiltList<Object?>);
          break;
        case 'summary':
          result.summary.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType.nullable(Summary)]))!
              as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$EventDetailResponse extends EventDetailResponse {
  @override
  final Event? data;
  @override
  final BuiltList<Event?> h2h;
  @override
  final BuiltList<Table?> table;
  @override
  final BuiltList<Summary?> summary;

  factory _$EventDetailResponse(
          [void Function(EventDetailResponseBuilder)? updates]) =>
      (new EventDetailResponseBuilder()..update(updates)).build();

  _$EventDetailResponse._(
      {this.data,
      required this.h2h,
      required this.table,
      required this.summary})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(h2h, 'EventDetailResponse', 'h2h');
    BuiltValueNullFieldError.checkNotNull(
        table, 'EventDetailResponse', 'table');
    BuiltValueNullFieldError.checkNotNull(
        summary, 'EventDetailResponse', 'summary');
  }

  @override
  EventDetailResponse rebuild(
          void Function(EventDetailResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  EventDetailResponseBuilder toBuilder() =>
      new EventDetailResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is EventDetailResponse &&
        data == other.data &&
        h2h == other.h2h &&
        table == other.table &&
        summary == other.summary;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, data.hashCode), h2h.hashCode), table.hashCode),
        summary.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('EventDetailResponse')
          ..add('data', data)
          ..add('h2h', h2h)
          ..add('table', table)
          ..add('summary', summary))
        .toString();
  }
}

class EventDetailResponseBuilder
    implements Builder<EventDetailResponse, EventDetailResponseBuilder> {
  _$EventDetailResponse? _$v;

  EventBuilder? _data;
  EventBuilder get data => _$this._data ??= new EventBuilder();
  set data(EventBuilder? data) => _$this._data = data;

  ListBuilder<Event?>? _h2h;
  ListBuilder<Event?> get h2h => _$this._h2h ??= new ListBuilder<Event?>();
  set h2h(ListBuilder<Event?>? h2h) => _$this._h2h = h2h;

  ListBuilder<Table?>? _table;
  ListBuilder<Table?> get table => _$this._table ??= new ListBuilder<Table?>();
  set table(ListBuilder<Table?>? table) => _$this._table = table;

  ListBuilder<Summary?>? _summary;
  ListBuilder<Summary?> get summary =>
      _$this._summary ??= new ListBuilder<Summary?>();
  set summary(ListBuilder<Summary?>? summary) => _$this._summary = summary;

  EventDetailResponseBuilder();

  EventDetailResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _data = $v.data?.toBuilder();
      _h2h = $v.h2h.toBuilder();
      _table = $v.table.toBuilder();
      _summary = $v.summary.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(EventDetailResponse other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$EventDetailResponse;
  }

  @override
  void update(void Function(EventDetailResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$EventDetailResponse build() {
    _$EventDetailResponse _$result;
    try {
      _$result = _$v ??
          new _$EventDetailResponse._(
              data: _data?.build(),
              h2h: h2h.build(),
              table: table.build(),
              summary: summary.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'data';
        _data?.build();
        _$failedField = 'h2h';
        h2h.build();
        _$failedField = 'table';
        table.build();
        _$failedField = 'summary';
        summary.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'EventDetailResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
