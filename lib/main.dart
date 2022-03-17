import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Quiz App",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.grey,
        brightness: Brightness.light,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  //const HomePage({Key? key}) : super(key: key);
  void answerQuestion(){
    setState(() {
      questionIndex =questionIndex+1;
    });
    print(questionIndex);
  }

  var question = [
    'What\'s your favorite color?',
    'What\'s your favorite animal?',
  ];

  int questionIndex=0;

  @override
  Widget build(BuildContext context) {


    return Scaffold(
      appBar: AppBar(
        title: Text('Quiz'),
      ),
      body: _myBody(context),
    );
  }

  Widget _myBody(BuildContext context) {


    return Center(

      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            Text(question[questionIndex]),
            RaisedButton(
              child: Text('Answer 1'),
              onPressed: answerQuestion,
            ),
            RaisedButton(
              child: Text('Answer 2'),
              onPressed: answerQuestion,
            ),
            RaisedButton(
              child: Text('Answer 3'),
              onPressed: (){
                answerQuestion();
              },
            ),
          ],
        ),
      ),
    );
  }
}
