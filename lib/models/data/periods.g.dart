// GENERATED CODE - DO NOT MODIFY BY HAND

part of periods;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Periods> _$periodsSerializer = new _$PeriodsSerializer();

class _$PeriodsSerializer implements StructuredSerializer<Periods> {
  @override
  final Iterable<Type> types = const [Periods, _$Periods];
  @override
  final String wireName = 'Periods';

  @override
  Iterable<Object?> serialize(Serializers serializers, Periods object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.first;
    if (value != null) {
      result
        ..add('first')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.second;
    if (value != null) {
      result
        ..add('second')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  Periods deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new PeriodsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'first':
          result.first = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'second':
          result.second = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$Periods extends Periods {
  @override
  final String? first;
  @override
  final String? second;

  factory _$Periods([void Function(PeriodsBuilder)? updates]) =>
      (new PeriodsBuilder()..update(updates)).build();

  _$Periods._({this.first, this.second}) : super._();

  @override
  Periods rebuild(void Function(PeriodsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PeriodsBuilder toBuilder() => new PeriodsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Periods && first == other.first && second == other.second;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, first.hashCode), second.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Periods')
          ..add('first', first)
          ..add('second', second))
        .toString();
  }
}

class PeriodsBuilder implements Builder<Periods, PeriodsBuilder> {
  _$Periods? _$v;

  String? _first;
  String? get first => _$this._first;
  set first(String? first) => _$this._first = first;

  String? _second;
  String? get second => _$this._second;
  set second(String? second) => _$this._second = second;

  PeriodsBuilder();

  PeriodsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _first = $v.first;
      _second = $v.second;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Periods other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Periods;
  }

  @override
  void update(void Function(PeriodsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Periods build() {
    final _$result = _$v ?? new _$Periods._(first: first, second: second);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
