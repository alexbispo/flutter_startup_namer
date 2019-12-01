import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Welcome to Flutter',
        home: HomePage());
  }
}

class HomePage extends StatefulWidget {

  @override
  _HomePageState createState() => _HomePageState();

}

class _HomePageState extends State<HomePage> {
  String _word = "";

  void _nextWord() {
    var wordPair = WordPair.random();
    setState(() {
      _word = wordPair.asPascalCase;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
          appBar: AppBar(title: const Text('Welcome to Flutter')),
          body: Center(
            child: Text('$_word'),
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: _nextWord,
            tooltip: 'Next Word',
            child: Icon(Icons.loop),
          ),
        );
  }
}
