// GENERATED CODE - DO NOT MODIFY BY HAND

part of summary;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Summary> _$summarySerializer = new _$SummarySerializer();

class _$SummarySerializer implements StructuredSerializer<Summary> {
  @override
  final Iterable<Type> types = const [Summary, _$Summary];
  @override
  final String wireName = 'Summary';

  @override
  Iterable<Object?> serialize(Serializers serializers, Summary object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(int)),
    ];
    Object? value;
    value = object.fixtureId;
    if (value != null) {
      result
        ..add('fixture_id')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.timeElapsed;
    if (value != null) {
      result
        ..add('time_elapsed')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.teamId;
    if (value != null) {
      result
        ..add('team_id')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.type;
    if (value != null) {
      result
        ..add('type')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.detail;
    if (value != null) {
      result
        ..add('detail')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  Summary deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new SummaryBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'fixture_id':
          result.fixtureId = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'time_elapsed':
          result.timeElapsed = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'team_id':
          result.teamId = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'type':
          result.type = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'detail':
          result.detail = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$Summary extends Summary {
  @override
  final int id;
  @override
  final int? fixtureId;
  @override
  final int? timeElapsed;
  @override
  final int? teamId;
  @override
  final String? type;
  @override
  final String? detail;

  factory _$Summary([void Function(SummaryBuilder)? updates]) =>
      (new SummaryBuilder()..update(updates)).build();

  _$Summary._(
      {required this.id,
      this.fixtureId,
      this.timeElapsed,
      this.teamId,
      this.type,
      this.detail})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(id, 'Summary', 'id');
  }

  @override
  Summary rebuild(void Function(SummaryBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SummaryBuilder toBuilder() => new SummaryBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Summary &&
        id == other.id &&
        fixtureId == other.fixtureId &&
        timeElapsed == other.timeElapsed &&
        teamId == other.teamId &&
        type == other.type &&
        detail == other.detail;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc($jc($jc(0, id.hashCode), fixtureId.hashCode),
                    timeElapsed.hashCode),
                teamId.hashCode),
            type.hashCode),
        detail.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Summary')
          ..add('id', id)
          ..add('fixtureId', fixtureId)
          ..add('timeElapsed', timeElapsed)
          ..add('teamId', teamId)
          ..add('type', type)
          ..add('detail', detail))
        .toString();
  }
}

class SummaryBuilder implements Builder<Summary, SummaryBuilder> {
  _$Summary? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  int? _fixtureId;
  int? get fixtureId => _$this._fixtureId;
  set fixtureId(int? fixtureId) => _$this._fixtureId = fixtureId;

  int? _timeElapsed;
  int? get timeElapsed => _$this._timeElapsed;
  set timeElapsed(int? timeElapsed) => _$this._timeElapsed = timeElapsed;

  int? _teamId;
  int? get teamId => _$this._teamId;
  set teamId(int? teamId) => _$this._teamId = teamId;

  String? _type;
  String? get type => _$this._type;
  set type(String? type) => _$this._type = type;

  String? _detail;
  String? get detail => _$this._detail;
  set detail(String? detail) => _$this._detail = detail;

  SummaryBuilder();

  SummaryBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _fixtureId = $v.fixtureId;
      _timeElapsed = $v.timeElapsed;
      _teamId = $v.teamId;
      _type = $v.type;
      _detail = $v.detail;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Summary other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Summary;
  }

  @override
  void update(void Function(SummaryBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Summary build() {
    final _$result = _$v ??
        new _$Summary._(
            id: BuiltValueNullFieldError.checkNotNull(id, 'Summary', 'id'),
            fixtureId: fixtureId,
            timeElapsed: timeElapsed,
            teamId: teamId,
            type: type,
            detail: detail);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
