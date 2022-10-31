// GENERATED CODE - DO NOT MODIFY BY HAND

part of status;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Status> _$statusSerializer = new _$StatusSerializer();

class _$StatusSerializer implements StructuredSerializer<Status> {
  @override
  final Iterable<Type> types = const [Status, _$Status];
  @override
  final String wireName = 'Status';

  @override
  Iterable<Object?> serialize(Serializers serializers, Status object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.long;
    if (value != null) {
      result
        ..add('long')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.short;
    if (value != null) {
      result
        ..add('short')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.elapsed;
    if (value != null) {
      result
        ..add('elapsed')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  Status deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new StatusBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'long':
          result.long = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'short':
          result.short = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'elapsed':
          result.elapsed = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$Status extends Status {
  @override
  final String? long;
  @override
  final String? short;
  @override
  final String? elapsed;

  factory _$Status([void Function(StatusBuilder)? updates]) =>
      (new StatusBuilder()..update(updates)).build();

  _$Status._({this.long, this.short, this.elapsed}) : super._();

  @override
  Status rebuild(void Function(StatusBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  StatusBuilder toBuilder() => new StatusBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Status &&
        long == other.long &&
        short == other.short &&
        elapsed == other.elapsed;
  }

  @override
  int get hashCode {
    return $jf(
        $jc($jc($jc(0, long.hashCode), short.hashCode), elapsed.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Status')
          ..add('long', long)
          ..add('short', short)
          ..add('elapsed', elapsed))
        .toString();
  }
}

class StatusBuilder implements Builder<Status, StatusBuilder> {
  _$Status? _$v;

  String? _long;
  String? get long => _$this._long;
  set long(String? long) => _$this._long = long;

  String? _short;
  String? get short => _$this._short;
  set short(String? short) => _$this._short = short;

  String? _elapsed;
  String? get elapsed => _$this._elapsed;
  set elapsed(String? elapsed) => _$this._elapsed = elapsed;

  StatusBuilder();

  StatusBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _long = $v.long;
      _short = $v.short;
      _elapsed = $v.elapsed;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Status other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Status;
  }

  @override
  void update(void Function(StatusBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Status build() {
    final _$result =
        _$v ?? new _$Status._(long: long, short: short, elapsed: elapsed);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
