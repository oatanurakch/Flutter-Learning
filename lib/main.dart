import 'package:flutter/material.dart';

// void main() {
//   runApp(MyApp());
// }

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionindex = 0;

  // Function for call when clicked answer1 button
  void answerQuestion() {
    setState(() {
      _questionindex = _questionindex + 1;
    });
    print(_questionindex);
  }

  var questions = [
    'What\'s your favorite color?',
    'What\'s your favorite animal?'
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
            title: Text('First App'),
          ),
          body: Column(
            children: [
              // Access to element of list
              // Text(questions.elementAt(0)),
              Text(questions[_questionindex]),
              ElevatedButton(
                child: Text('Answer 1'),
                style: ElevatedButton.styleFrom(),
                onPressed: answerQuestion,
              ),
              ElevatedButton(
                child: Text('Answer 2'),
                style: ElevatedButton.styleFrom(),
                // Anonymous function
                onPressed: () => print('Answer 2 clicked!'),
              ),
              ElevatedButton(
                child: Text('Answer 3'),
                style: ElevatedButton.styleFrom(),
                // function body
                onPressed: () {
                  print('Answer 3 clicked!');
                },
              ),
            ],
          )),
    );
  }
}
