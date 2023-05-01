import 'package:animaton_container/screen/animation/view/animation_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => Animatoin_screen(),
      },
    ),
  );
}
