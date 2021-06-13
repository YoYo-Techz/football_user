// GENERATED CODE - DO NOT MODIFY BY HAND

part of teams;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Teams> _$teamsSerializer = new _$TeamsSerializer();

class _$TeamsSerializer implements StructuredSerializer<Teams> {
  @override
  final Iterable<Type> types = const [Teams, _$Teams];
  @override
  final String wireName = 'Teams';

  @override
  Iterable<Object?> serialize(Serializers serializers, Teams object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'status',
      serializers.serialize(object.status, specifiedType: const FullType(bool)),
      'data',
      serializers.serialize(object.data,
          specifiedType:
              const FullType(BuiltList, const [const FullType(TeamsData)])),
    ];

    return result;
  }

  @override
  Teams deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new TeamsBuilder();

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
                      BuiltList, const [const FullType(TeamsData)]))!
              as BuiltList<Object>);
          break;
      }
    }

    return result.build();
  }
}

class _$Teams extends Teams {
  @override
  final bool status;
  @override
  final BuiltList<TeamsData> data;

  factory _$Teams([void Function(TeamsBuilder)? updates]) =>
      (new TeamsBuilder()..update(updates)).build();

  _$Teams._({required this.status, required this.data}) : super._() {
    BuiltValueNullFieldError.checkNotNull(status, 'Teams', 'status');
    BuiltValueNullFieldError.checkNotNull(data, 'Teams', 'data');
  }

  @override
  Teams rebuild(void Function(TeamsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TeamsBuilder toBuilder() => new TeamsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Teams && status == other.status && data == other.data;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, status.hashCode), data.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Teams')
          ..add('status', status)
          ..add('data', data))
        .toString();
  }
}

class TeamsBuilder implements Builder<Teams, TeamsBuilder> {
  _$Teams? _$v;

  bool? _status;
  bool? get status => _$this._status;
  set status(bool? status) => _$this._status = status;

  ListBuilder<TeamsData>? _data;
  ListBuilder<TeamsData> get data =>
      _$this._data ??= new ListBuilder<TeamsData>();
  set data(ListBuilder<TeamsData>? data) => _$this._data = data;

  TeamsBuilder();

  TeamsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _status = $v.status;
      _data = $v.data.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Teams other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Teams;
  }

  @override
  void update(void Function(TeamsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Teams build() {
    _$Teams _$result;
    try {
      _$result = _$v ??
          new _$Teams._(
              status: BuiltValueNullFieldError.checkNotNull(
                  status, 'Teams', 'status'),
              data: data.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'data';
        data.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'Teams', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
