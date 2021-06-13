// GENERATED CODE - DO NOT MODIFY BY HAND

part of leagues;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Leagues> _$leaguesSerializer = new _$LeaguesSerializer();

class _$LeaguesSerializer implements StructuredSerializer<Leagues> {
  @override
  final Iterable<Type> types = const [Leagues, _$Leagues];
  @override
  final String wireName = 'Leagues';

  @override
  Iterable<Object?> serialize(Serializers serializers, Leagues object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'status',
      serializers.serialize(object.status, specifiedType: const FullType(bool)),
      'data',
      serializers.serialize(object.data,
          specifiedType:
              const FullType(BuiltList, const [const FullType(League)])),
    ];

    return result;
  }

  @override
  Leagues deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new LeaguesBuilder();

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
                      BuiltList, const [const FullType(League)]))!
              as BuiltList<Object>);
          break;
      }
    }

    return result.build();
  }
}

class _$Leagues extends Leagues {
  @override
  final bool status;
  @override
  final BuiltList<League> data;

  factory _$Leagues([void Function(LeaguesBuilder)? updates]) =>
      (new LeaguesBuilder()..update(updates)).build();

  _$Leagues._({required this.status, required this.data}) : super._() {
    BuiltValueNullFieldError.checkNotNull(status, 'Leagues', 'status');
    BuiltValueNullFieldError.checkNotNull(data, 'Leagues', 'data');
  }

  @override
  Leagues rebuild(void Function(LeaguesBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  LeaguesBuilder toBuilder() => new LeaguesBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Leagues && status == other.status && data == other.data;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, status.hashCode), data.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Leagues')
          ..add('status', status)
          ..add('data', data))
        .toString();
  }
}

class LeaguesBuilder implements Builder<Leagues, LeaguesBuilder> {
  _$Leagues? _$v;

  bool? _status;
  bool? get status => _$this._status;
  set status(bool? status) => _$this._status = status;

  ListBuilder<League>? _data;
  ListBuilder<League> get data => _$this._data ??= new ListBuilder<League>();
  set data(ListBuilder<League>? data) => _$this._data = data;

  LeaguesBuilder();

  LeaguesBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _status = $v.status;
      _data = $v.data.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Leagues other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Leagues;
  }

  @override
  void update(void Function(LeaguesBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Leagues build() {
    _$Leagues _$result;
    try {
      _$result = _$v ??
          new _$Leagues._(
              status: BuiltValueNullFieldError.checkNotNull(
                  status, 'Leagues', 'status'),
              data: data.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'data';
        data.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'Leagues', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
