// GENERATED CODE - DO NOT MODIFY BY HAND

part of teams_list_response;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<TeamsListResponse> _$teamsListResponseSerializer =
    new _$TeamsListResponseSerializer();

class _$TeamsListResponseSerializer
    implements StructuredSerializer<TeamsListResponse> {
  @override
  final Iterable<Type> types = const [TeamsListResponse, _$TeamsListResponse];
  @override
  final String wireName = 'TeamsListResponse';

  @override
  Iterable<Object?> serialize(Serializers serializers, TeamsListResponse object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.data;
    if (value != null) {
      result
        ..add('data')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(BuiltList, const [const FullType(TeamsData)])));
    }
    value = object.pagination;
    if (value != null) {
      result
        ..add('pagination')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(Pagination)));
    }
    return result;
  }

  @override
  TeamsListResponse deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new TeamsListResponseBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'data':
          result.data.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(TeamsData)]))!
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

class _$TeamsListResponse extends TeamsListResponse {
  @override
  final BuiltList<TeamsData>? data;
  @override
  final Pagination? pagination;

  factory _$TeamsListResponse(
          [void Function(TeamsListResponseBuilder)? updates]) =>
      (new TeamsListResponseBuilder()..update(updates)).build();

  _$TeamsListResponse._({this.data, this.pagination}) : super._();

  @override
  TeamsListResponse rebuild(void Function(TeamsListResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TeamsListResponseBuilder toBuilder() =>
      new TeamsListResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TeamsListResponse &&
        data == other.data &&
        pagination == other.pagination;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, data.hashCode), pagination.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('TeamsListResponse')
          ..add('data', data)
          ..add('pagination', pagination))
        .toString();
  }
}

class TeamsListResponseBuilder
    implements Builder<TeamsListResponse, TeamsListResponseBuilder> {
  _$TeamsListResponse? _$v;

  ListBuilder<TeamsData>? _data;
  ListBuilder<TeamsData> get data =>
      _$this._data ??= new ListBuilder<TeamsData>();
  set data(ListBuilder<TeamsData>? data) => _$this._data = data;

  PaginationBuilder? _pagination;
  PaginationBuilder get pagination =>
      _$this._pagination ??= new PaginationBuilder();
  set pagination(PaginationBuilder? pagination) =>
      _$this._pagination = pagination;

  TeamsListResponseBuilder();

  TeamsListResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _data = $v.data?.toBuilder();
      _pagination = $v.pagination?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TeamsListResponse other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$TeamsListResponse;
  }

  @override
  void update(void Function(TeamsListResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$TeamsListResponse build() {
    _$TeamsListResponse _$result;
    try {
      _$result = _$v ??
          new _$TeamsListResponse._(
              data: _data?.build(), pagination: _pagination?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'data';
        _data?.build();
        _$failedField = 'pagination';
        _pagination?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'TeamsListResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
