// GENERATED CODE - DO NOT MODIFY BY HAND

part of table;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Table> _$tableSerializer = new _$TableSerializer();

class _$TableSerializer implements StructuredSerializer<Table> {
  @override
  final Iterable<Type> types = const [Table, _$Table];
  @override
  final String wireName = 'Table';

  @override
  Iterable<Object?> serialize(Serializers serializers, Table object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(int)),
    ];
    Object? value;
    value = object.leagueId;
    if (value != null) {
      result
        ..add('league_id')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.teamId;
    if (value != null) {
      result
        ..add('team_id')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.rank;
    if (value != null) {
      result
        ..add('rank')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.points;
    if (value != null) {
      result
        ..add('points')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.goalsDiff;
    if (value != null) {
      result
        ..add('goalsDiff')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.group;
    if (value != null) {
      result
        ..add('group')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.form;
    if (value != null) {
      result
        ..add('form')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.status;
    if (value != null) {
      result
        ..add('status')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.description;
    if (value != null) {
      result
        ..add('description')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.createdAt;
    if (value != null) {
      result
        ..add('created_at')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.updatedAt;
    if (value != null) {
      result
        ..add('updated_at')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  Table deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new TableBuilder();

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
        case 'league_id':
          result.leagueId = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'team_id':
          result.teamId = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'rank':
          result.rank = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'points':
          result.points = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'goalsDiff':
          result.goalsDiff = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'group':
          result.group = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'form':
          result.form = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'status':
          result.status = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'description':
          result.description = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'created_at':
          result.createdAt = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'updated_at':
          result.updatedAt = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$Table extends Table {
  @override
  final int id;
  @override
  final int? leagueId;
  @override
  final int? teamId;
  @override
  final int? rank;
  @override
  final int? points;
  @override
  final int? goalsDiff;
  @override
  final String? group;
  @override
  final String? form;
  @override
  final String? status;
  @override
  final String? description;
  @override
  final String? createdAt;
  @override
  final String? updatedAt;

  factory _$Table([void Function(TableBuilder)? updates]) =>
      (new TableBuilder()..update(updates)).build();

  _$Table._(
      {required this.id,
      this.leagueId,
      this.teamId,
      this.rank,
      this.points,
      this.goalsDiff,
      this.group,
      this.form,
      this.status,
      this.description,
      this.createdAt,
      this.updatedAt})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(id, 'Table', 'id');
  }

  @override
  Table rebuild(void Function(TableBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TableBuilder toBuilder() => new TableBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Table &&
        id == other.id &&
        leagueId == other.leagueId &&
        teamId == other.teamId &&
        rank == other.rank &&
        points == other.points &&
        goalsDiff == other.goalsDiff &&
        group == other.group &&
        form == other.form &&
        status == other.status &&
        description == other.description &&
        createdAt == other.createdAt &&
        updatedAt == other.updatedAt;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc(
                                $jc(
                                    $jc(
                                        $jc(
                                            $jc($jc(0, id.hashCode),
                                                leagueId.hashCode),
                                            teamId.hashCode),
                                        rank.hashCode),
                                    points.hashCode),
                                goalsDiff.hashCode),
                            group.hashCode),
                        form.hashCode),
                    status.hashCode),
                description.hashCode),
            createdAt.hashCode),
        updatedAt.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Table')
          ..add('id', id)
          ..add('leagueId', leagueId)
          ..add('teamId', teamId)
          ..add('rank', rank)
          ..add('points', points)
          ..add('goalsDiff', goalsDiff)
          ..add('group', group)
          ..add('form', form)
          ..add('status', status)
          ..add('description', description)
          ..add('createdAt', createdAt)
          ..add('updatedAt', updatedAt))
        .toString();
  }
}

class TableBuilder implements Builder<Table, TableBuilder> {
  _$Table? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  int? _leagueId;
  int? get leagueId => _$this._leagueId;
  set leagueId(int? leagueId) => _$this._leagueId = leagueId;

  int? _teamId;
  int? get teamId => _$this._teamId;
  set teamId(int? teamId) => _$this._teamId = teamId;

  int? _rank;
  int? get rank => _$this._rank;
  set rank(int? rank) => _$this._rank = rank;

  int? _points;
  int? get points => _$this._points;
  set points(int? points) => _$this._points = points;

  int? _goalsDiff;
  int? get goalsDiff => _$this._goalsDiff;
  set goalsDiff(int? goalsDiff) => _$this._goalsDiff = goalsDiff;

  String? _group;
  String? get group => _$this._group;
  set group(String? group) => _$this._group = group;

  String? _form;
  String? get form => _$this._form;
  set form(String? form) => _$this._form = form;

  String? _status;
  String? get status => _$this._status;
  set status(String? status) => _$this._status = status;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  String? _createdAt;
  String? get createdAt => _$this._createdAt;
  set createdAt(String? createdAt) => _$this._createdAt = createdAt;

  String? _updatedAt;
  String? get updatedAt => _$this._updatedAt;
  set updatedAt(String? updatedAt) => _$this._updatedAt = updatedAt;

  TableBuilder();

  TableBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _leagueId = $v.leagueId;
      _teamId = $v.teamId;
      _rank = $v.rank;
      _points = $v.points;
      _goalsDiff = $v.goalsDiff;
      _group = $v.group;
      _form = $v.form;
      _status = $v.status;
      _description = $v.description;
      _createdAt = $v.createdAt;
      _updatedAt = $v.updatedAt;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Table other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Table;
  }

  @override
  void update(void Function(TableBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Table build() {
    final _$result = _$v ??
        new _$Table._(
            id: BuiltValueNullFieldError.checkNotNull(id, 'Table', 'id'),
            leagueId: leagueId,
            teamId: teamId,
            rank: rank,
            points: points,
            goalsDiff: goalsDiff,
            group: group,
            form: form,
            status: status,
            description: description,
            createdAt: createdAt,
            updatedAt: updatedAt);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
