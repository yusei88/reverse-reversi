import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:reverse_reversi/view_models/board_view_model.dart';

/// メッセージ表示ウィジェット
class MessageWidget extends ConsumerWidget {
  const MessageWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final board = ref.watch(boardProvider);

    return Center(
      child: SizedBox(
        height: 100,
        child: Text("${board.player.displayName}のターン"),
      ),
    );
  }
}
