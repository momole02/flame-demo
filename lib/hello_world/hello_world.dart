import 'dart:async';

import 'package:flame/components.dart';
import 'package:flame/game.dart';

class HelloWorldGame extends FlameGame {
  @override
  FutureOr<void> onLoad() {
    add(
      TextComponent(
          text: "Hello, World", position: size / 2, anchor: Anchor.center),
    );
  }
}
