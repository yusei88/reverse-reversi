import 'package:audioplayers/audioplayers.dart';
import 'package:reverse_reversi/const/sound.dart';

/// 効果音管理クラス
class SoundEffect {
  /// audioPlayerのインスタンス
  late final AudioCache _audioPlayer;

  /// シングルトン
  static final SoundEffect _instance = SoundEffect._internal();

  /// コンストラクタ
  SoundEffect._internal() {
    _audioPlayer = AudioCache();
  }

  /// ファクトリーコンストラクタ
  factory SoundEffect() {
    return _instance;
  }

  /// 石を置く効果音
  void setDisk() {
    _audioPlayer.play(Sound.setDiskSuccess);
  }

  /// 石をひっくり返す効果音
  void changeDisk() {
    _audioPlayer.play(Sound.changeDisk);
  }

  /// 石が置けなかった時の効果音
  void errorDisk() {
    _audioPlayer.play(Sound.setDiskFailed);
  }
}
