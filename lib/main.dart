import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key); // `super.key` を `key` に変更
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  // StatefulWidget を StatelessWidget に変更
  const MyHomePage({Key? key}) : super(key: key); // `super.key` を `key` に変更

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center, // <== 追加
            children: [
              Stack(
                children: [
                  Container(
                    padding: const EdgeInsets.all(32),
                    child: Image.network(
                      "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/25.png",
                      height: 100,
                      width: 100,
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(8),
                    child: const Text(
                      'No.25',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
              const Text(
                'pikachu',
                style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
              ),
              const Chip(
                label: Text('electric'),
                backgroundColor: Colors.yellow,
              ),
            ]),
      ),
    );
  }
}