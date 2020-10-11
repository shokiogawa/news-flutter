// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'head_line_controller.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$HeadLineStateTearOff {
  const _$HeadLineStateTearOff();

// ignore: unused_element
  _HeadLineState call(
      {SearchType searchType, bool loading, List<Articles> articles}) {
    return _HeadLineState(
      searchType: searchType,
      loading: loading,
      articles: articles,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $HeadLineState = _$HeadLineStateTearOff();

/// @nodoc
mixin _$HeadLineState {
  SearchType get searchType;
  bool get loading;
  List<Articles> get articles;

  $HeadLineStateCopyWith<HeadLineState> get copyWith;
}

/// @nodoc
abstract class $HeadLineStateCopyWith<$Res> {
  factory $HeadLineStateCopyWith(
          HeadLineState value, $Res Function(HeadLineState) then) =
      _$HeadLineStateCopyWithImpl<$Res>;
  $Res call({SearchType searchType, bool loading, List<Articles> articles});
}

/// @nodoc
class _$HeadLineStateCopyWithImpl<$Res>
    implements $HeadLineStateCopyWith<$Res> {
  _$HeadLineStateCopyWithImpl(this._value, this._then);

  final HeadLineState _value;
  // ignore: unused_field
  final $Res Function(HeadLineState) _then;

  @override
  $Res call({
    Object searchType = freezed,
    Object loading = freezed,
    Object articles = freezed,
  }) {
    return _then(_value.copyWith(
      searchType:
          searchType == freezed ? _value.searchType : searchType as SearchType,
      loading: loading == freezed ? _value.loading : loading as bool,
      articles:
          articles == freezed ? _value.articles : articles as List<Articles>,
    ));
  }
}

/// @nodoc
abstract class _$HeadLineStateCopyWith<$Res>
    implements $HeadLineStateCopyWith<$Res> {
  factory _$HeadLineStateCopyWith(
          _HeadLineState value, $Res Function(_HeadLineState) then) =
      __$HeadLineStateCopyWithImpl<$Res>;
  @override
  $Res call({SearchType searchType, bool loading, List<Articles> articles});
}

/// @nodoc
class __$HeadLineStateCopyWithImpl<$Res>
    extends _$HeadLineStateCopyWithImpl<$Res>
    implements _$HeadLineStateCopyWith<$Res> {
  __$HeadLineStateCopyWithImpl(
      _HeadLineState _value, $Res Function(_HeadLineState) _then)
      : super(_value, (v) => _then(v as _HeadLineState));

  @override
  _HeadLineState get _value => super._value as _HeadLineState;

  @override
  $Res call({
    Object searchType = freezed,
    Object loading = freezed,
    Object articles = freezed,
  }) {
    return _then(_HeadLineState(
      searchType:
          searchType == freezed ? _value.searchType : searchType as SearchType,
      loading: loading == freezed ? _value.loading : loading as bool,
      articles:
          articles == freezed ? _value.articles : articles as List<Articles>,
    ));
  }
}

/// @nodoc
class _$_HeadLineState implements _HeadLineState {
  _$_HeadLineState({this.searchType, this.loading, this.articles});

  @override
  final SearchType searchType;
  @override
  final bool loading;
  @override
  final List<Articles> articles;

  @override
  String toString() {
    return 'HeadLineState(searchType: $searchType, loading: $loading, articles: $articles)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _HeadLineState &&
            (identical(other.searchType, searchType) ||
                const DeepCollectionEquality()
                    .equals(other.searchType, searchType)) &&
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
      const DeepCollectionEquality().hash(searchType) ^
      const DeepCollectionEquality().hash(loading) ^
      const DeepCollectionEquality().hash(articles);

  @override
  _$HeadLineStateCopyWith<_HeadLineState> get copyWith =>
      __$HeadLineStateCopyWithImpl<_HeadLineState>(this, _$identity);
}

abstract class _HeadLineState implements HeadLineState {
  factory _HeadLineState(
      {SearchType searchType,
      bool loading,
      List<Articles> articles}) = _$_HeadLineState;

  @override
  SearchType get searchType;
  @override
  bool get loading;
  @override
  List<Articles> get articles;
  @override
  _$HeadLineStateCopyWith<_HeadLineState> get copyWith;
}
