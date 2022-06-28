import 'package:flutter/material.dart';

class EventPage extends StatelessWidget {
  const EventPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('this is an appbar'),
        ),
        body: Container(
          height: 50,
          width: 50,
          child:Text('navigation')
        ),
      ),
    );
  }
}
