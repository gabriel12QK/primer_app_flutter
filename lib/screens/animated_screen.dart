import 'dart:math';
import 'package:flutter/material.dart';

class AnimatedScreen extends StatefulWidget {
  const AnimatedScreen({Key? key}) : super(key: key);

  @override
  State<AnimatedScreen> createState() => _AnimatedScreenState();
}

class _AnimatedScreenState extends State<AnimatedScreen> {
  double _width = 100;
  double _height = 100;
  Color _color = Colors.green;
  BorderRadiusGeometry _borderRadius = BorderRadius.circular(20);
  bool selected = false;
  void ChangeShape() {
    final random = Random();
    _width = random.nextInt(300).toDouble() + 70;
    _height = random.nextInt(300).toDouble() + 70;
    _color = Color.fromRGBO(
        random.nextInt(255), random.nextInt(255), random.nextInt(255), 1);
    BorderRadiusGeometry _borderRadius =
        BorderRadius.circular(random.nextInt(100).toDouble() + 10);
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Animated Container'),
      ),
      body: Center(
          child: AnimatedContainer(
        // color: Colors.amber,
        width: _width,
        height: _height,
        decoration: BoxDecoration(color: _color, borderRadius: _borderRadius),
        duration: const Duration(seconds: 1),
        curve: Curves.fastOutSlowIn,
      )),
      floatingActionButton: FloatingActionButton(
        onPressed: () => ChangeShape(),
        child: const Icon(
          Icons.play_circle_outline_outlined,
          size: 40,
          color: Colors.white,
        ),
      ),
    );
  }
}
