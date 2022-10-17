// GENERATED CODE - DO NOT MODIFY BY HAND

part of leagues_list_response;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<LeaguesListResponse> _$leaguesListResponseSerializer =
    new _$LeaguesListResponseSerializer();

class _$LeaguesListResponseSerializer
    implements StructuredSerializer<LeaguesListResponse> {
  @override
  final Iterable<Type> types = const [
    LeaguesListResponse,
    _$LeaguesListResponse
  ];
  @override
  final String wireName = 'LeaguesListResponse';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, LeaguesListResponse object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'pagination',
      serializers.serialize(object.pagination,
          specifiedType: const FullType(Pagination)),
    ];
    Object? value;
    value = object.data;
    if (value != null) {
      result
        ..add('data')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(BuiltList, const [const FullType(League)])));
    }
    return result;
  }

  @override
  LeaguesListResponse deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new LeaguesListResponseBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'data':
          result.data.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(League)]))!
              as BuiltList<Object?>);
          break;
        case 'pagination':
          result.pagination.replace(serializers.deserialize(value,
              specifiedType: const FullType(Pagination))! as Pagination);
          break;
      }
    }

    return result.build();
  }
}

class _$LeaguesListResponse extends LeaguesListResponse {
  @override
  final BuiltList<League>? data;
  @override
  final Pagination pagination;

  factory _$LeaguesListResponse(
          [void Function(LeaguesListResponseBuilder)? updates]) =>
      (new LeaguesListResponseBuilder()..update(updates)).build();

  _$LeaguesListResponse._({this.data, required this.pagination}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        pagination, 'LeaguesListResponse', 'pagination');
  }

  @override
  LeaguesListResponse rebuild(
          void Function(LeaguesListResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  LeaguesListResponseBuilder toBuilder() =>
      new LeaguesListResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is LeaguesListResponse &&
        data == other.data &&
        pagination == other.pagination;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, data.hashCode), pagination.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('LeaguesListResponse')
          ..add('data', data)
          ..add('pagination', pagination))
        .toString();
  }
}

class LeaguesListResponseBuilder
    implements Builder<LeaguesListResponse, LeaguesListResponseBuilder> {
  _$LeaguesListResponse? _$v;

  ListBuilder<League>? _data;
  ListBuilder<League> get data => _$this._data ??= new ListBuilder<League>();
  set data(ListBuilder<League>? data) => _$this._data = data;

  PaginationBuilder? _pagination;
  PaginationBuilder get pagination =>
      _$this._pagination ??= new PaginationBuilder();
  set pagination(PaginationBuilder? pagination) =>
      _$this._pagination = pagination;

  LeaguesListResponseBuilder();

  LeaguesListResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _data = $v.data?.toBuilder();
      _pagination = $v.pagination.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(LeaguesListResponse other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$LeaguesListResponse;
  }

  @override
  void update(void Function(LeaguesListResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$LeaguesListResponse build() {
    _$LeaguesListResponse _$result;
    try {
      _$result = _$v ??
          new _$LeaguesListResponse._(
              data: _data?.build(), pagination: pagination.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'data';
        _data?.build();
        _$failedField = 'pagination';
        pagination.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'LeaguesListResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
