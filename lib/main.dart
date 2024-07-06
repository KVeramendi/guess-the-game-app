import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: HomeWidget());
  }
}

class HomeWidget extends StatefulWidget {
  const HomeWidget({super.key});

  @override
  State<HomeWidget> createState() => _HomeWidgetState();
}

class _HomeWidgetState extends State<HomeWidget> {
  int index = 0;

  @override
  Widget build(BuildContext context) {
    const imageUrl =
        'https://cache-na.finalfantasy.com/uploads/content/file/2023/07/20/16833/230720_ffxkabuki_1.jpg';
    return Scaffold(
      appBar: AppBar(title: const Text('Guess The Game')),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Stack(
              alignment: Alignment.center,
              children: [
                Visibility(
                  visible: index == 0,
                  child: ClipPath(
                    clipper: ImageClipper(index: 0),
                    child: Image.network(imageUrl),
                  ),
                ),
                Visibility(
                  visible: index == 1,
                  child: ClipPath(
                    clipper: ImageClipper(index: 1),
                    child: Image.network(imageUrl),
                  ),
                ),
                Visibility(
                  visible: index == 2,
                  child: ClipPath(
                    clipper: ImageClipper(index: 2),
                    child: Image.network(imageUrl),
                  ),
                ),
                Visibility(
                  visible: index == 3,
                  child: ClipPath(
                    clipper: ImageClipper(index: 3),
                    child: Image.network(imageUrl),
                  ),
                ),
                Visibility(
                  visible: index == 4,
                  child: ClipPath(
                    clipper: ImageClipper(index: 4),
                    child: Image.network(imageUrl),
                  ),
                ),
                Visibility(
                  visible: index == 5,
                  child: ClipPath(
                    clipper: ImageClipper(index: 5),
                    child: Image.network(imageUrl),
                  ),
                ),
                Visibility(
                  visible: index == 6,
                  child: ClipPath(
                    clipper: ImageClipper(index: 6),
                    child: Image.network(imageUrl),
                  ),
                ),
                Visibility(
                  visible: index == 7,
                  child: ClipPath(
                    clipper: ImageClipper(index: 7),
                    child: Image.network(imageUrl),
                  ),
                ),
                Visibility(
                  visible: index == 8,
                  child: ClipPath(
                    clipper: ImageClipper(index: 8),
                    child: Image.network(imageUrl),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 24),
            OutlinedButton(
              onPressed: () => setState(() => index = Random().nextInt(9)),
              child: const Text('Random'),
            ),
          ],
        ),
      ),
    );
  }
}

class ImageClipper extends CustomClipper<Path> {
  int index = 0;
  ImageClipper({required this.index});

  @override
  Path getClip(Size size) {
    final width = size.width;
    final height = size.height;
    final path = Path();
    if (index == 0) {
      path.lineTo(0, height / 3);
      path.lineTo(width / 3, height / 3);
      path.lineTo(width / 3, 0);
    }
    if (index == 1) {
      path.moveTo(width / 3, 0);
      path.lineTo(width / 3, height / 3);
      path.lineTo(width / 1.5, height / 3);
      path.lineTo(width / 1.5, 0);
    }
    if (index == 2) {
      path.moveTo(width / 1.5, 0);
      path.lineTo(width / 1.5, height / 3);
      path.lineTo(width, height / 3);
      path.lineTo(width, 0);
    }
    if (index == 3) {
      path.moveTo(0, height / 3);
      path.lineTo(0, height / 1.5);
      path.lineTo(width / 3, height / 1.5);
      path.lineTo(width / 3, height / 3);
    }
    if (index == 4) {
      path.moveTo(width / 3, height / 3);
      path.lineTo(width / 3, height / 1.5);
      path.lineTo(width / 1.5, height / 1.5);
      path.lineTo(width / 1.5, height / 3);
    }
    if (index == 5) {
      path.moveTo(width / 1.5, height / 3);
      path.lineTo(width / 1.5, height / 1.5);
      path.lineTo(width, height / 1.5);
      path.lineTo(width, height / 3);
    }
    if (index == 6) {
      path.moveTo(0, height / 1.5);
      path.lineTo(0, height);
      path.lineTo(width / 3, height);
      path.lineTo(width / 3, height / 1.5);
    }
    if (index == 7) {
      path.moveTo(width / 3, height / 1.5);
      path.lineTo(width / 3, height);
      path.lineTo(width / 1.5, height);
      path.lineTo(width / 1.5, height / 1.5);
    }
    if (index == 8) {
      path.moveTo(width / 1.5, height / 1.5);
      path.lineTo(width / 1.5, height);
      path.lineTo(width, height);
      path.lineTo(width, height / 1.5);
    }
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
