// GENERATED CODE - DO NOT MODIFY BY HAND

part of all_event_response;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<AllEventResponse> _$allEventResponseSerializer =
    new _$AllEventResponseSerializer();

class _$AllEventResponseSerializer
    implements StructuredSerializer<AllEventResponse> {
  @override
  final Iterable<Type> types = const [AllEventResponse, _$AllEventResponse];
  @override
  final String wireName = 'AllEventResponse';

  @override
  Iterable<Object?> serialize(Serializers serializers, AllEventResponse object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'status',
      serializers.serialize(object.status, specifiedType: const FullType(bool)),
      'data',
      serializers.serialize(object.data,
          specifiedType:
              const FullType(BuiltList, const [const FullType(EventData)])),
    ];

    return result;
  }

  @override
  AllEventResponse deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new AllEventResponseBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'status':
          result.status = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'data':
          result.data.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(EventData)]))!
              as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$AllEventResponse extends AllEventResponse {
  @override
  final bool status;
  @override
  final BuiltList<EventData> data;

  factory _$AllEventResponse(
          [void Function(AllEventResponseBuilder)? updates]) =>
      (new AllEventResponseBuilder()..update(updates)).build();

  _$AllEventResponse._({required this.status, required this.data}) : super._() {
    BuiltValueNullFieldError.checkNotNull(status, 'AllEventResponse', 'status');
    BuiltValueNullFieldError.checkNotNull(data, 'AllEventResponse', 'data');
  }

  @override
  AllEventResponse rebuild(void Function(AllEventResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AllEventResponseBuilder toBuilder() =>
      new AllEventResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AllEventResponse &&
        status == other.status &&
        data == other.data;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, status.hashCode), data.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('AllEventResponse')
          ..add('status', status)
          ..add('data', data))
        .toString();
  }
}

class AllEventResponseBuilder
    implements Builder<AllEventResponse, AllEventResponseBuilder> {
  _$AllEventResponse? _$v;

  bool? _status;
  bool? get status => _$this._status;
  set status(bool? status) => _$this._status = status;

  ListBuilder<EventData>? _data;
  ListBuilder<EventData> get data =>
      _$this._data ??= new ListBuilder<EventData>();
  set data(ListBuilder<EventData>? data) => _$this._data = data;

  AllEventResponseBuilder();

  AllEventResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _status = $v.status;
      _data = $v.data.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AllEventResponse other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AllEventResponse;
  }

  @override
  void update(void Function(AllEventResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$AllEventResponse build() {
    _$AllEventResponse _$result;
    try {
      _$result = _$v ??
          new _$AllEventResponse._(
              status: BuiltValueNullFieldError.checkNotNull(
                  status, 'AllEventResponse', 'status'),
              data: data.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'data';
        data.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'AllEventResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
