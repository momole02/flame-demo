import 'package:flame/flame.dart';
import 'package:flame/game.dart';
import 'package:flame_demos/hello_world/hello_world.dart';
import 'package:flame_demos/sprites/hero_spr.dart';
import 'package:flame_demos/sprites/sprites_game.dart';
import 'package:flutter/material.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  Flame.device.fullScreen();
  runApp(GameWidget(
    game: SpritesGame(),
  ));
}
