// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'news_list_controller.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$NewsListPageStateTearOff {
  const _$NewsListPageStateTearOff();

// ignore: unused_element
  _NewsListPageState call(
      {CategoryListData category,
      SearchType searchType,
      String keyword,
      bool loading,
      List<Articles> articles}) {
    return _NewsListPageState(
      category: category,
      searchType: searchType,
      keyword: keyword,
      loading: loading,
      articles: articles,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $NewsListPageState = _$NewsListPageStateTearOff();

/// @nodoc
mixin _$NewsListPageState {
  CategoryListData get category;
  SearchType get searchType;
  String get keyword;
  bool get loading;
  List<Articles> get articles;

  $NewsListPageStateCopyWith<NewsListPageState> get copyWith;
}

/// @nodoc
abstract class $NewsListPageStateCopyWith<$Res> {
  factory $NewsListPageStateCopyWith(
          NewsListPageState value, $Res Function(NewsListPageState) then) =
      _$NewsListPageStateCopyWithImpl<$Res>;
  $Res call(
      {CategoryListData category,
      SearchType searchType,
      String keyword,
      bool loading,
      List<Articles> articles});
}

/// @nodoc
class _$NewsListPageStateCopyWithImpl<$Res>
    implements $NewsListPageStateCopyWith<$Res> {
  _$NewsListPageStateCopyWithImpl(this._value, this._then);

  final NewsListPageState _value;
  // ignore: unused_field
  final $Res Function(NewsListPageState) _then;

  @override
  $Res call({
    Object category = freezed,
    Object searchType = freezed,
    Object keyword = freezed,
    Object loading = freezed,
    Object articles = freezed,
  }) {
    return _then(_value.copyWith(
      category:
          category == freezed ? _value.category : category as CategoryListData,
      searchType:
          searchType == freezed ? _value.searchType : searchType as SearchType,
      keyword: keyword == freezed ? _value.keyword : keyword as String,
      loading: loading == freezed ? _value.loading : loading as bool,
      articles:
          articles == freezed ? _value.articles : articles as List<Articles>,
    ));
  }
}

/// @nodoc
abstract class _$NewsListPageStateCopyWith<$Res>
    implements $NewsListPageStateCopyWith<$Res> {
  factory _$NewsListPageStateCopyWith(
          _NewsListPageState value, $Res Function(_NewsListPageState) then) =
      __$NewsListPageStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {CategoryListData category,
      SearchType searchType,
      String keyword,
      bool loading,
      List<Articles> articles});
}

/// @nodoc
class __$NewsListPageStateCopyWithImpl<$Res>
    extends _$NewsListPageStateCopyWithImpl<$Res>
    implements _$NewsListPageStateCopyWith<$Res> {
  __$NewsListPageStateCopyWithImpl(
      _NewsListPageState _value, $Res Function(_NewsListPageState) _then)
      : super(_value, (v) => _then(v as _NewsListPageState));

  @override
  _NewsListPageState get _value => super._value as _NewsListPageState;

  @override
  $Res call({
    Object category = freezed,
    Object searchType = freezed,
    Object keyword = freezed,
    Object loading = freezed,
    Object articles = freezed,
  }) {
    return _then(_NewsListPageState(
      category:
          category == freezed ? _value.category : category as CategoryListData,
      searchType:
          searchType == freezed ? _value.searchType : searchType as SearchType,
      keyword: keyword == freezed ? _value.keyword : keyword as String,
      loading: loading == freezed ? _value.loading : loading as bool,
      articles:
          articles == freezed ? _value.articles : articles as List<Articles>,
    ));
  }
}

/// @nodoc
class _$_NewsListPageState implements _NewsListPageState {
  _$_NewsListPageState(
      {this.category,
      this.searchType,
      this.keyword,
      this.loading,
      this.articles});

  @override
  final CategoryListData category;
  @override
  final SearchType searchType;
  @override
  final String keyword;
  @override
  final bool loading;
  @override
  final List<Articles> articles;

  @override
  String toString() {
    return 'NewsListPageState(category: $category, searchType: $searchType, keyword: $keyword, loading: $loading, articles: $articles)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _NewsListPageState &&
            (identical(other.category, category) ||
                const DeepCollectionEquality()
                    .equals(other.category, category)) &&
            (identical(other.searchType, searchType) ||
                const DeepCollectionEquality()
                    .equals(other.searchType, searchType)) &&
            (identical(other.keyword, keyword) ||
                const DeepCollectionEquality()
                    .equals(other.keyword, keyword)) &&
            (identical(other.loading, loading) ||
                const DeepCollectionEquality()
                    .equals(other.loading, loading)) &&
            (identical(other.articles, articles) ||
                const DeepCollectionEquality()
                    .equals(other.articles, articles)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(category) ^
      const DeepCollectionEquality().hash(searchType) ^
      const DeepCollectionEquality().hash(keyword) ^
      const DeepCollectionEquality().hash(loading) ^
      const DeepCollectionEquality().hash(articles);

  @override
  _$NewsListPageStateCopyWith<_NewsListPageState> get copyWith =>
      __$NewsListPageStateCopyWithImpl<_NewsListPageState>(this, _$identity);
}

abstract class _NewsListPageState implements NewsListPageState {
  factory _NewsListPageState(
      {CategoryListData category,
      SearchType searchType,
      String keyword,
      bool loading,
      List<Articles> articles}) = _$_NewsListPageState;

  @override
  CategoryListData get category;
  @override
  SearchType get searchType;
  @override
  String get keyword;
  @override
  bool get loading;
  @override
  List<Articles> get articles;
  @override
  _$NewsListPageStateCopyWith<_NewsListPageState> get copyWith;
}
