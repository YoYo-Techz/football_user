// GENERATED CODE - DO NOT MODIFY BY HAND

part of goals;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Goals> _$goalsSerializer = new _$GoalsSerializer();

class _$GoalsSerializer implements StructuredSerializer<Goals> {
  @override
  final Iterable<Type> types = const [Goals, _$Goals];
  @override
  final String wireName = 'Goals';

  @override
  Iterable<Object?> serialize(Serializers serializers, Goals object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.home;
    if (value != null) {
      result
        ..add('home')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.away;
    if (value != null) {
      result
        ..add('away')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  Goals deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GoalsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'home':
          result.home = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'away':
          result.away = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$Goals extends Goals {
  @override
  final String? home;
  @override
  final String? away;

  factory _$Goals([void Function(GoalsBuilder)? updates]) =>
      (new GoalsBuilder()..update(updates)).build();

  _$Goals._({this.home, this.away}) : super._();

  @override
  Goals rebuild(void Function(GoalsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GoalsBuilder toBuilder() => new GoalsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Goals && home == other.home && away == other.away;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, home.hashCode), away.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Goals')
          ..add('home', home)
          ..add('away', away))
        .toString();
  }
}

class GoalsBuilder implements Builder<Goals, GoalsBuilder> {
  _$Goals? _$v;

  String? _home;
  String? get home => _$this._home;
  set home(String? home) => _$this._home = home;

  String? _away;
  String? get away => _$this._away;
  set away(String? away) => _$this._away = away;

  GoalsBuilder();

  GoalsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _home = $v.home;
      _away = $v.away;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Goals other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Goals;
  }

  @override
  void update(void Function(GoalsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Goals build() {
    final _$result = _$v ?? new _$Goals._(home: home, away: away);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
