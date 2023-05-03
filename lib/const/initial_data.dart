class InitialData {
  /// 初期盤面
  static const List<List<Stone>> board = [
    [
      Stone.none,
      Stone.none,
      Stone.none,
      Stone.none,
      Stone.none,
      Stone.none,
      Stone.none,
      Stone.none
    ],
    [
      Stone.none,
      Stone.none,
      Stone.none,
      Stone.none,
      Stone.none,
      Stone.none,
      Stone.none,
      Stone.none
    ],
    [
      Stone.none,
      Stone.none,
      Stone.none,
      Stone.none,
      Stone.none,
      Stone.none,
      Stone.none,
      Stone.none
    ],
    [
      Stone.none,
      Stone.none,
      Stone.none,
      Stone.black,
      Stone.white,
      Stone.none,
      Stone.none,
      Stone.none
    ],
    [
      Stone.none,
      Stone.none,
      Stone.none,
      Stone.white,
      Stone.black,
      Stone.none,
      Stone.none,
      Stone.none
    ],
    [
      Stone.none,
      Stone.none,
      Stone.none,
      Stone.none,
      Stone.none,
      Stone.none,
      Stone.none,
      Stone.none
    ],
    [
      Stone.none,
      Stone.none,
      Stone.none,
      Stone.none,
      Stone.none,
      Stone.none,
      Stone.none,
      Stone.none
    ],
    [
      Stone.none,
      Stone.none,
      Stone.none,
      Stone.none,
      Stone.none,
      Stone.none,
      Stone.none,
      Stone.none
    ],
  ];

  /// 初期手番
  static const Stone player = Stone.black;

  /// 初期相手番
  static const Stone enemy = Stone.white;
}

enum Stone {
  black("黒"),
  none("なし"),
  white("白");

  const Stone(this.displayName);
  final String displayName;
}
