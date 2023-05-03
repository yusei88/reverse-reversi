import 'package:flutter/material.dart';
import 'package:reverse_reversi/const/initial_data.dart';

class CellWidget extends StatelessWidget {
  /// セルの石
  final Stone _stone;

  const CellWidget(this._stone, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 50,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: Colors.green,
        border: Border.all(color: Colors.black),
      ),
      child: Visibility(
        visible: _stone != Stone.none,
        child: Container(
          height: 48,
          width: 48,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: _stone == Stone.black ? Colors.black : Colors.white,
            shape: BoxShape.circle,
          ),
        ),
      ),
    );
  }
}
