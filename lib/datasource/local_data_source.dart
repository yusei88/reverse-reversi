import 'package:reverse_reversi/const/initial_data.dart';
import 'package:reverse_reversi/const/local_settings.dart';
import 'package:reverse_reversi/models/board_model.dart';
import 'package:reverse_reversi/repository/board_repository.dart';

class LocalDataSource implements BoardRepository {
  /// ボード状態の取得
  @override
  Future<BoardModel> getBoardData() {
    return Future.delayed((LocalSettings.delayTime), () {
      return const BoardModel(stones: InitialData.board);
    });
  }

  /// ボード状態の更新
  @override
  Future<bool> updateBoardData(BoardModel board) {
    return Future.delayed((LocalSettings.delayTime), () {
      return true;
    });
  }
}
