import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: Color(0xFFC41A3B),
        primaryColorLight: Color(0xFFFBE0E6),
        accentColor: Color(0xFF1B1F32),
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String title = 'Option Menu (Alert Dialog)';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        centerTitle: true,
      ),
      body: Center(
        child: FlatButton(
          color: Color(0xFFC41A3B),
          onPressed: () {
            _optionMenuDialog(context);
          },
          child: Text(
            'Show',
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
    );
  }
}

enum Options {
  Option1,
  Option2,
  Option3,
  Option4,
  Option5,
  Option6,
}

Future<Options> _optionMenuDialog(BuildContext context) async {
  return await showDialog<Options>(
    context: context,
    barrierDismissible: false,
    builder: (BuildContext context) {
      return SimpleDialog(
        title: Text('Select Option'),
        children: <Widget>[
          SimpleDialogOption(
            child: Text('Option 1'),
            onPressed: () {
              Navigator.pop(context, Options.Option1);
            },
          ),
          SimpleDialogOption(
            child: Text('Option 2'),
            onPressed: () {
              Navigator.pop(context, Options.Option2);
            },
          ),
          SimpleDialogOption(
            child: Text('Option 3'),
            onPressed: () {
              Navigator.pop(context, Options.Option3);
            },
          ),
          SimpleDialogOption(
            child: Text('Option 4'),
            onPressed: () {
              Navigator.pop(context, Options.Option4);
            },
          ),
          SimpleDialogOption(
            child: Text('Option 5'),
            onPressed: () {
              Navigator.pop(context, Options.Option5);
            },
          ),
          SimpleDialogOption(
            child: Text('Option 6'),
            onPressed: () {
              Navigator.pop(context, Options.Option6);
            },
          ),
        ],
      );
    },
  );
}
