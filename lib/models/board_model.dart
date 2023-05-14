import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:reverse_reversi/const/initial_data.dart';

part 'board_model.freezed.dart';

@freezed
class BoardModel with _$BoardModel {
  const factory BoardModel({
    /// ボードの状態
    @Default(InitialData.board) List<List<Stone>> stones,

    /// 手番プレイヤー
    @Default(InitialData.player) Stone player,

    /// 相手プレイヤー
    @Default(InitialData.enemy) Stone enemy,
  }) = _BoardModel;
}
