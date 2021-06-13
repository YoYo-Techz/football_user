// GENERATED CODE - DO NOT MODIFY BY HAND

part of matches;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Matches> _$matchesSerializer = new _$MatchesSerializer();

class _$MatchesSerializer implements StructuredSerializer<Matches> {
  @override
  final Iterable<Type> types = const [Matches, _$Matches];
  @override
  final String wireName = 'Matches';

  @override
  Iterable<Object?> serialize(Serializers serializers, Matches object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'status',
      serializers.serialize(object.status, specifiedType: const FullType(bool)),
      'data',
      serializers.serialize(object.data,
          specifiedType:
              const FullType(BuiltList, const [const FullType(Matchs)])),
    ];

    return result;
  }

  @override
  Matches deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new MatchesBuilder();

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
                      BuiltList, const [const FullType(Matchs)]))!
              as BuiltList<Object>);
          break;
      }
    }

    return result.build();
  }
}

class _$Matches extends Matches {
  @override
  final bool status;
  @override
  final BuiltList<Matchs> data;

  factory _$Matches([void Function(MatchesBuilder)? updates]) =>
      (new MatchesBuilder()..update(updates)).build();

  _$Matches._({required this.status, required this.data}) : super._() {
    BuiltValueNullFieldError.checkNotNull(status, 'Matches', 'status');
    BuiltValueNullFieldError.checkNotNull(data, 'Matches', 'data');
  }

  @override
  Matches rebuild(void Function(MatchesBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  MatchesBuilder toBuilder() => new MatchesBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Matches && status == other.status && data == other.data;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, status.hashCode), data.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Matches')
          ..add('status', status)
          ..add('data', data))
        .toString();
  }
}

class MatchesBuilder implements Builder<Matches, MatchesBuilder> {
  _$Matches? _$v;

  bool? _status;
  bool? get status => _$this._status;
  set status(bool? status) => _$this._status = status;

  ListBuilder<Matchs>? _data;
  ListBuilder<Matchs> get data => _$this._data ??= new ListBuilder<Matchs>();
  set data(ListBuilder<Matchs>? data) => _$this._data = data;

  MatchesBuilder();

  MatchesBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _status = $v.status;
      _data = $v.data.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Matches other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Matches;
  }

  @override
  void update(void Function(MatchesBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Matches build() {
    _$Matches _$result;
    try {
      _$result = _$v ??
          new _$Matches._(
              status: BuiltValueNullFieldError.checkNotNull(
                  status, 'Matches', 'status'),
              data: data.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'data';
        data.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'Matches', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
