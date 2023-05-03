import 'package:reverse_reversi/models/board_model.dart';

/// ボード状態を管理するリポジトリ
abstract class BoardRepository {
  /// ボード状態の取得
  Future<BoardModel> getBoardData();

  /// ボード状態の更新
  Future<bool> updateBoardData(BoardModel board);
}
