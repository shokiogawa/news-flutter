// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'new_detail_controller.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$NewDetailStateTearOff {
  const _$NewDetailStateTearOff();

// ignore: unused_element
  _NewDetailState call({Articles articles, bool favorite}) {
    return _NewDetailState(
      articles: articles,
      favorite: favorite,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $NewDetailState = _$NewDetailStateTearOff();

/// @nodoc
mixin _$NewDetailState {
  Articles get articles;
  bool get favorite;

  $NewDetailStateCopyWith<NewDetailState> get copyWith;
}

/// @nodoc
abstract class $NewDetailStateCopyWith<$Res> {
  factory $NewDetailStateCopyWith(
          NewDetailState value, $Res Function(NewDetailState) then) =
      _$NewDetailStateCopyWithImpl<$Res>;
  $Res call({Articles articles, bool favorite});
}

/// @nodoc
class _$NewDetailStateCopyWithImpl<$Res>
    implements $NewDetailStateCopyWith<$Res> {
  _$NewDetailStateCopyWithImpl(this._value, this._then);

  final NewDetailState _value;
  // ignore: unused_field
  final $Res Function(NewDetailState) _then;

  @override
  $Res call({
    Object articles = freezed,
    Object favorite = freezed,
  }) {
    return _then(_value.copyWith(
      articles: articles == freezed ? _value.articles : articles as Articles,
      favorite: favorite == freezed ? _value.favorite : favorite as bool,
    ));
  }
}

/// @nodoc
abstract class _$NewDetailStateCopyWith<$Res>
    implements $NewDetailStateCopyWith<$Res> {
  factory _$NewDetailStateCopyWith(
          _NewDetailState value, $Res Function(_NewDetailState) then) =
      __$NewDetailStateCopyWithImpl<$Res>;
  @override
  $Res call({Articles articles, bool favorite});
}

/// @nodoc
class __$NewDetailStateCopyWithImpl<$Res>
    extends _$NewDetailStateCopyWithImpl<$Res>
    implements _$NewDetailStateCopyWith<$Res> {
  __$NewDetailStateCopyWithImpl(
      _NewDetailState _value, $Res Function(_NewDetailState) _then)
      : super(_value, (v) => _then(v as _NewDetailState));

  @override
  _NewDetailState get _value => super._value as _NewDetailState;

  @override
  $Res call({
    Object articles = freezed,
    Object favorite = freezed,
  }) {
    return _then(_NewDetailState(
      articles: articles == freezed ? _value.articles : articles as Articles,
      favorite: favorite == freezed ? _value.favorite : favorite as bool,
    ));
  }
}

/// @nodoc
class _$_NewDetailState implements _NewDetailState {
  _$_NewDetailState({this.articles, this.favorite});

  @override
  final Articles articles;
  @override
  final bool favorite;

  @override
  String toString() {
    return 'NewDetailState(articles: $articles, favorite: $favorite)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _NewDetailState &&
            (identical(other.articles, articles) ||
                const DeepCollectionEquality()
                    .equals(other.articles, articles)) &&
            (identical(other.favorite, favorite) ||
                const DeepCollectionEquality()
                    .equals(other.favorite, favorite)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(articles) ^
      const DeepCollectionEquality().hash(favorite);

  @override
  _$NewDetailStateCopyWith<_NewDetailState> get copyWith =>
      __$NewDetailStateCopyWithImpl<_NewDetailState>(this, _$identity);
}

abstract class _NewDetailState implements NewDetailState {
  factory _NewDetailState({Articles articles, bool favorite}) =
      _$_NewDetailState;

  @override
  Articles get articles;
  @override
  bool get favorite;
  @override
  _$NewDetailStateCopyWith<_NewDetailState> get copyWith;
}
