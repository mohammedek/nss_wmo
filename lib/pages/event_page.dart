import 'package:flutter/material.dart';
import 'package:nss_wmo/pages/home_screen.dart';

class EventPage extends StatelessWidget {
  const EventPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
          appBar: AppBar(
            leading:
            ElevatedButton(
                onPressed: () {
                  print("pressed");
                }, child: Icon(Icons.arrow_back_rounded)),
            title: Text('NSS Daily Events'),
          ),
          body: GridView.builder(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              crossAxisSpacing: 9.0,
              mainAxisSpacing: 9.0,
            ),
            itemCount: 20,
            itemBuilder: (context, index) {
              return ListView(
              physics: AlwaysScrollableScrollPhysics(),
              children: <Widget>[
    Image.network("https://upload.wikimedia.org/wikipedia/commons/thumb/9/90/NSS-symbol.jpeg/480px-NSS-symbol.jpeg",
    height: 150,
    width: MediaQuery.of(context).size.width * 0.5,
    fit: BoxFit.fill,
    ),
    ],
    );
            },
          )
        ));
  }
}
