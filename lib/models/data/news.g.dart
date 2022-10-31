// GENERATED CODE - DO NOT MODIFY BY HAND

part of news;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<News> _$newsSerializer = new _$NewsSerializer();

class _$NewsSerializer implements StructuredSerializer<News> {
  @override
  final Iterable<Type> types = const [News, _$News];
  @override
  final String wireName = 'News';

  @override
  Iterable<Object?> serialize(Serializers serializers, News object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(int)),
      'title',
      serializers.serialize(object.title,
          specifiedType: const FullType(String)),
      'slug',
      serializers.serialize(object.slug, specifiedType: const FullType(String)),
      'image',
      serializers.serialize(object.image,
          specifiedType: const FullType(String)),
      'description',
      serializers.serialize(object.description,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  News deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new NewsBuilder();

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
        case 'title':
          result.title = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'slug':
          result.slug = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'image':
          result.image = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'description':
          result.description = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$News extends News {
  @override
  final int id;
  @override
  final String title;
  @override
  final String slug;
  @override
  final String image;
  @override
  final String description;

  factory _$News([void Function(NewsBuilder)? updates]) =>
      (new NewsBuilder()..update(updates)).build();

  _$News._(
      {required this.id,
      required this.title,
      required this.slug,
      required this.image,
      required this.description})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(id, 'News', 'id');
    BuiltValueNullFieldError.checkNotNull(title, 'News', 'title');
    BuiltValueNullFieldError.checkNotNull(slug, 'News', 'slug');
    BuiltValueNullFieldError.checkNotNull(image, 'News', 'image');
    BuiltValueNullFieldError.checkNotNull(description, 'News', 'description');
  }

  @override
  News rebuild(void Function(NewsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  NewsBuilder toBuilder() => new NewsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is News &&
        id == other.id &&
        title == other.title &&
        slug == other.slug &&
        image == other.image &&
        description == other.description;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc($jc(0, id.hashCode), title.hashCode), slug.hashCode),
            image.hashCode),
        description.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('News')
          ..add('id', id)
          ..add('title', title)
          ..add('slug', slug)
          ..add('image', image)
          ..add('description', description))
        .toString();
  }
}

class NewsBuilder implements Builder<News, NewsBuilder> {
  _$News? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  String? _slug;
  String? get slug => _$this._slug;
  set slug(String? slug) => _$this._slug = slug;

  String? _image;
  String? get image => _$this._image;
  set image(String? image) => _$this._image = image;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  NewsBuilder();

  NewsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _title = $v.title;
      _slug = $v.slug;
      _image = $v.image;
      _description = $v.description;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(News other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$News;
  }

  @override
  void update(void Function(NewsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$News build() {
    final _$result = _$v ??
        new _$News._(
            id: BuiltValueNullFieldError.checkNotNull(id, 'News', 'id'),
            title:
                BuiltValueNullFieldError.checkNotNull(title, 'News', 'title'),
            slug: BuiltValueNullFieldError.checkNotNull(slug, 'News', 'slug'),
            image:
                BuiltValueNullFieldError.checkNotNull(image, 'News', 'image'),
            description: BuiltValueNullFieldError.checkNotNull(
                description, 'News', 'description'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
