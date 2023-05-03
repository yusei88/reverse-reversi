import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:reverse_reversi/view_models/board_view_model.dart';
import 'package:reverse_reversi/widgets/cell_widget_view.dart';

/// ボードウィジェット
class BoardWidget extends ConsumerWidget {
  const BoardWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    /// ボードの状態を監視
    final board = ref.watch(boardProvider);

    /// ボードの変更
    final notifier = ref.read(boardProvider.notifier);

    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          GridView.builder(
            shrinkWrap: true,
            itemCount: 64,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 8),
            itemBuilder: (BuildContext context, int index) {
              final int x = index % 8;
              final int y = index ~/ 8;
              return GestureDetector(
                onTap: () => notifier.placeStone(x, y),
                child: CellWidget(board.stones[x][y]),
              );
            },
          ),
        ],
      ),
    );
  }
}
