import 'dart:async';

import 'package:flame/components.dart';

class HeroSprite extends SpriteComponent {
  HeroSprite({
    required super.position,
    super.anchor,
  });
  @override
  FutureOr<void> onLoad() async {
    sprite = await Sprite.load("hero.png");
  }
}
