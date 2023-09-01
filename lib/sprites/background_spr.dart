import 'dart:async';

import 'package:flame/components.dart';

class BackgroundSprite extends SpriteComponent {
  double screenHeight;
  BackgroundSprite({required this.screenHeight});

  @override
  FutureOr<void> onLoad() async {
    sprite = await Sprite.load("background.jpg");
    size.x = sprite!.originalSize.x;
    size.y = screenHeight;
  }
}
