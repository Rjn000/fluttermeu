import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

class Paginahj extends StatefulWidget {
  const Paginahj({super.key});

  @override
  State<Paginahj> createState() => _PaginahjState();
}

class _PaginahjState extends State<Paginahj> {
  final TextEditingController _controller = TextEditingController();
  String textin = "sccp";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("cscs"),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {});
          textin = _controller.text;
        },
        child: Icon(Icons.sports_football),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: TextField(
              controller: _controller,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'escreva',
              ),
            ),
          ),
          Text(
            textin,
            style: const TextStyle(fontSize: 36),
          ),
          AnimatedTextKit(
            animatedTexts: [
              RotateAnimatedText(
                'qi fazi',
                textStyle: const TextStyle(fontSize: 36),
              ),
              RotateAnimatedText(
                ' ta uh',
                textStyle: const TextStyle(fontSize: 36),
              ),
              RotateAnimatedText(
                'curinthia  😭  😭  😭 ',
                textStyle: const TextStyle(fontSize: 36),
              ),
            ],
            onTap: () {
              print("Tap Event");
            },
          ),
        ],
      ),
    );
  }
}
