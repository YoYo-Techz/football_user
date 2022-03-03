// GENERATED CODE - DO NOT MODIFY BY HAND

part of channel_response;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ChannelResponse> _$channelResponseSerializer =
    new _$ChannelResponseSerializer();

class _$ChannelResponseSerializer
    implements StructuredSerializer<ChannelResponse> {
  @override
  final Iterable<Type> types = const [ChannelResponse, _$ChannelResponse];
  @override
  final String wireName = 'ChannelResponse';

  @override
  Iterable<Object?> serialize(Serializers serializers, ChannelResponse object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'data',
      serializers.serialize(object.data,
          specifiedType:
              const FullType(BuiltList, const [const FullType(Channel)])),
    ];
    Object? value;
    value = object.status;
    if (value != null) {
      result
        ..add('status')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    return result;
  }

  @override
  ChannelResponse deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ChannelResponseBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'status':
          result.status = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'data':
          result.data.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(Channel)]))!
              as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$ChannelResponse extends ChannelResponse {
  @override
  final bool? status;
  @override
  final BuiltList<Channel> data;

  factory _$ChannelResponse([void Function(ChannelResponseBuilder)? updates]) =>
      (new ChannelResponseBuilder()..update(updates)).build();

  _$ChannelResponse._({this.status, required this.data}) : super._() {
    BuiltValueNullFieldError.checkNotNull(data, 'ChannelResponse', 'data');
  }

  @override
  ChannelResponse rebuild(void Function(ChannelResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ChannelResponseBuilder toBuilder() =>
      new ChannelResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ChannelResponse &&
        status == other.status &&
        data == other.data;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, status.hashCode), data.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('ChannelResponse')
          ..add('status', status)
          ..add('data', data))
        .toString();
  }
}

class ChannelResponseBuilder
    implements Builder<ChannelResponse, ChannelResponseBuilder> {
  _$ChannelResponse? _$v;

  bool? _status;
  bool? get status => _$this._status;
  set status(bool? status) => _$this._status = status;

  ListBuilder<Channel>? _data;
  ListBuilder<Channel> get data => _$this._data ??= new ListBuilder<Channel>();
  set data(ListBuilder<Channel>? data) => _$this._data = data;

  ChannelResponseBuilder();

  ChannelResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _status = $v.status;
      _data = $v.data.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ChannelResponse other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ChannelResponse;
  }

  @override
  void update(void Function(ChannelResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$ChannelResponse build() {
    _$ChannelResponse _$result;
    try {
      _$result =
          _$v ?? new _$ChannelResponse._(status: status, data: data.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'data';
        data.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'ChannelResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
