import 'dart:async';

import 'package:flame/components.dart';
import 'package:flame/events.dart';
import 'package:flame/game.dart';
import 'package:flame_demos/sprites/background_spr.dart';
import 'package:flame_demos/sprites/hero_spr.dart';

class SpritesGame extends FlameGame with TapCallbacks {
  late HeroSprite heroSprite;
  late BackgroundSprite backgroundSprite;
  late Vector2 scroll;
  bool goLeft = false;
  bool goRight = false;

  @override
  void onTapDown(TapDownEvent event) {
    if (event.localPosition.x > size.x / 2) {
      goRight = true;
      goLeft = false;
    } else {
      goRight = false;
      goLeft = true;
    }
  }

  @override
  void onTapUp(TapUpEvent event) {
    goRight = false;
    goLeft = false;
  }

  @override
  void update(double dt) {
    super.update(dt);
    double backgroundWidth = backgroundSprite.sprite!.originalSize.x;
    if (goLeft) {
      if (scroll.x >= 5) {
        scroll.x -= 5;
      }
    } else if (goRight) {
      if (scroll.x <= backgroundWidth - size.x - 5) {
        scroll.x += 5;
      }
    }

    backgroundSprite.sprite!.srcPosition = scroll;
  }

  @override
  FutureOr<void> onLoad() {
    scroll = Vector2(0, 0);
    heroSprite = HeroSprite(
      position: Vector2(size.x / 2, size.y / 2 + 210),
      anchor: Anchor.center,
    );
    backgroundSprite = BackgroundSprite(screenHeight: size.y);
    addAll([backgroundSprite, heroSprite]);
  }
}
