import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:reverse_reversi/const/initial_data.dart';
import 'package:reverse_reversi/datasource/local_data_source.dart';
import 'package:reverse_reversi/models/board_model.dart';
import 'package:reverse_reversi/repository/board_repository.dart';
import 'package:reverse_reversi/utility/sound_effect.dart';

/// ボード状態管理クラス
class BoardViewModel extends StateNotifier<BoardModel> {
  /// ボードのリポジトリ
  final BoardRepository boardRepository;

  /// 効果音管理インスタンス
  final SoundEffect soundEffect = SoundEffect();

  /// コンストラクタ
  BoardViewModel(this.boardRepository) : super(const BoardModel());

  /// 石の状態を変更
  void setNewStone(int x, int y) {
    soundEffect.changeDisk();
    List<List<Stone>> newBoard;
    newBoard = List<List<Stone>>.from(
        state.stones.map((list) => List<Stone>.from(list)));
    newBoard[x][y] = state.player;
    state = state.copyWith(stones: newBoard);
  }

  void placeStone(int x, int y) {
    if (isValidMove(x, y)) {
      /// 選択したセルに石を置く
      setNewStone(x, y);

      /// 相手の石をひっくり返す
      flipStones(x, y);

      /// プレイヤーを交代
      state = state.copyWith(player: state.enemy, enemy: state.player);
    }
  }

  /// 石を置くことができるセルか
  isValidMove(int x, int y) {
    if (state.stones[x][y] != Stone.none) {
      false;
    }
    for (var dx = -1; dx <= 1; dx++) {
      for (var dy = -1; dy <= 1; dy++) {
        if (dx == 0 && dy == 0) {
          continue;
        }
        if (isFlipLine(x, y, dx, dy)) {
          return true;
        }
      }
    }
    return false;
  }

  /// 相手の石を返せるか
  bool isFlipLine(int x, int y, int dx, int dy) {
    var flip = false;
    var i = x + dx;
    var j = y + dy;
    while (i >= 0 &&
        i < 8 &&
        j >= 0 &&
        j < 8 &&
        state.stones[i][j] == state.enemy) {
      i += dx;
      j += dy;
      flip = true;
    }
    return flip &&
        i >= 0 &&
        i < 8 &&
        j >= 0 &&
        j < 8 &&
        state.stones[i][j] == state.player;
  }

  /// ライン上で返せる石を返す
  void flipStones(int x, int y) {
    for (var dx = -1; dx <= 1; dx++) {
      for (var dy = -1; dy <= 1; dy++) {
        if (dx == 0 && dy == 0) {
          continue;
        }
        if (isFlipLine(x, y, dx, dy)) {
          flipLine(x, y, dx, dy);
        }
      }
    }
  }

  void flipLine(int x, int y, int dx, int dy) {
    var i = x + dx;
    var j = y + dy;
    while (state.stones[i][j] == state.enemy) {
      setNewStone(i, j);
      i += dx;
      j += dy;
    }
  }
}

final boardProvider = StateNotifierProvider<BoardViewModel, BoardModel>(
    (_) => BoardViewModel(LocalDataSource()));
