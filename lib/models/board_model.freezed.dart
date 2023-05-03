// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'board_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$BoardModel {
  /// ボードの状態
  List<List<Stone>> get stones => throw _privateConstructorUsedError;

  /// 手番プレイヤー
  Stone get player => throw _privateConstructorUsedError;

  /// 相手プレイヤー
  Stone get enemy => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $BoardModelCopyWith<BoardModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BoardModelCopyWith<$Res> {
  factory $BoardModelCopyWith(
          BoardModel value, $Res Function(BoardModel) then) =
      _$BoardModelCopyWithImpl<$Res, BoardModel>;
  @useResult
  $Res call({List<List<Stone>> stones, Stone player, Stone enemy});
}

/// @nodoc
class _$BoardModelCopyWithImpl<$Res, $Val extends BoardModel>
    implements $BoardModelCopyWith<$Res> {
  _$BoardModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? stones = null,
    Object? player = null,
    Object? enemy = null,
  }) {
    return _then(_value.copyWith(
      stones: null == stones
          ? _value.stones
          : stones // ignore: cast_nullable_to_non_nullable
              as List<List<Stone>>,
      player: null == player
          ? _value.player
          : player // ignore: cast_nullable_to_non_nullable
              as Stone,
      enemy: null == enemy
          ? _value.enemy
          : enemy // ignore: cast_nullable_to_non_nullable
              as Stone,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_BoardModelCopyWith<$Res>
    implements $BoardModelCopyWith<$Res> {
  factory _$$_BoardModelCopyWith(
          _$_BoardModel value, $Res Function(_$_BoardModel) then) =
      __$$_BoardModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<List<Stone>> stones, Stone player, Stone enemy});
}

/// @nodoc
class __$$_BoardModelCopyWithImpl<$Res>
    extends _$BoardModelCopyWithImpl<$Res, _$_BoardModel>
    implements _$$_BoardModelCopyWith<$Res> {
  __$$_BoardModelCopyWithImpl(
      _$_BoardModel _value, $Res Function(_$_BoardModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? stones = null,
    Object? player = null,
    Object? enemy = null,
  }) {
    return _then(_$_BoardModel(
      stones: null == stones
          ? _value._stones
          : stones // ignore: cast_nullable_to_non_nullable
              as List<List<Stone>>,
      player: null == player
          ? _value.player
          : player // ignore: cast_nullable_to_non_nullable
              as Stone,
      enemy: null == enemy
          ? _value.enemy
          : enemy // ignore: cast_nullable_to_non_nullable
              as Stone,
    ));
  }
}

/// @nodoc

class _$_BoardModel implements _BoardModel {
  const _$_BoardModel(
      {final List<List<Stone>> stones = InitialData.board,
      this.player = InitialData.player,
      this.enemy = InitialData.enemy})
      : _stones = stones;

  /// ボードの状態
  final List<List<Stone>> _stones;

  /// ボードの状態
  @override
  @JsonKey()
  List<List<Stone>> get stones {
    if (_stones is EqualUnmodifiableListView) return _stones;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_stones);
  }

  /// 手番プレイヤー
  @override
  @JsonKey()
  final Stone player;

  /// 相手プレイヤー
  @override
  @JsonKey()
  final Stone enemy;

  @override
  String toString() {
    return 'BoardModel(stones: $stones, player: $player, enemy: $enemy)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_BoardModel &&
            const DeepCollectionEquality().equals(other._stones, _stones) &&
            (identical(other.player, player) || other.player == player) &&
            (identical(other.enemy, enemy) || other.enemy == enemy));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_stones), player, enemy);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_BoardModelCopyWith<_$_BoardModel> get copyWith =>
      __$$_BoardModelCopyWithImpl<_$_BoardModel>(this, _$identity);
}

abstract class _BoardModel implements BoardModel {
  const factory _BoardModel(
      {final List<List<Stone>> stones,
      final Stone player,
      final Stone enemy}) = _$_BoardModel;

  @override

  /// ボードの状態
  List<List<Stone>> get stones;
  @override

  /// 手番プレイヤー
  Stone get player;
  @override

  /// 相手プレイヤー
  Stone get enemy;
  @override
  @JsonKey(ignore: true)
  _$$_BoardModelCopyWith<_$_BoardModel> get copyWith =>
      throw _privateConstructorUsedError;
}
