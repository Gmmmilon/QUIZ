import 'package:flutter/material.dart';
import './quiz.dart';
import '/results.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final _questions = const [
    {
      'questionText':
          "আমাদের দেশের নাম কি?",
      'answers': [
        {"text": "বাংলাদেশ", 'score': 10},
        {"text": "নেপাল", 'score': 20},
        {"text": "ভারত", 'score': 30},
        {"text": "পাকিস্তান", 'score': 40},
      ],
    },
    {
      'questionText': "বাংলাদেশের জাতীয় খেলা কি??",
      'answers': [
        {"text": "হাডুডু", 'score': 10},
        {"text": "ক্রিকেট", 'score': 20},
        {"text": "ভলিবল", 'score': 30},
        {"text": "ফুটবল", 'score': 40},
      ],
    },
    {
      'questionText': "বাংলাদেশের জাতীয় পাখি কোনটি?",
      'answers': [
        {"text": "শালিক", 'score': 10},
        {"text": "দোয়েল", 'score': 20},
        {"text": "কাক", 'score': 30},
        {"text": "বক", 'score': 40},
      ],
    },
    {
      'questionText': " ডার্ট প্রোগ্রামিং কত সালে শুরু হয়?",
      'answers': [
        {"text": "২০২২", 'score': 10},
        {"text": "২০২১", 'score': 20},
        {"text": "২০০০", 'score': 30},
        {"text": "২০১৯", 'score': 40},
      ],
    },
    {
      'questionText': "বাবার রক্ত বইয়ের লেখক কে?",
      'answers': [
        {"text": "মিলন বিশ্বাস", 'score': 10},
        {"text": "সামিউল আলম", 'score': 20},
        {"text": "রাকিব হারুন", 'score': 30},
        {"text": "কাজী নজরুল", 'score': 40},
      ],
    },
    {
      'questionText': "বাংলাদেশের জাতীয় ফুল কি?",
      'answers': [
        {"text": "গোলাপ", 'score': 10},
        {"text": "শাপলা", 'score': 20},
        {"text": "গাধা", 'score': 30},
        {"text": "শিউলি", 'score': 40},
      ],
    },
    
  ];

  var _answerIndex = 0;
  var _totalScore = 0;

  void _resetQuiz() {
    setState(() {
      _answerIndex = 0;
      _totalScore = 0;
    });
  }

  void _answerQuestions(int score) {
    _totalScore = _totalScore + 1;
    setState(() {
      _answerIndex = _answerIndex + 1;
    });

    print(_answerIndex);
    if (_answerIndex < _questions.length) {
      print("You have more questions");
    } else {
      print("You have already done with this quiz..Congratulations!!");
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text("My Quiz App"),
        ),
        body: _answerIndex < _questions.length
            ? Quiz(
                answerQuestions: _answerQuestions,
                questions: _questions,
                answerIndex: _answerIndex,
              )
            : Result(_totalScore, _resetQuiz),
      ),
    );
  }
}