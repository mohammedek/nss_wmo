import 'package:flutter/material.dart';

  Widget buildCard() =>
      Container(
        width: 200,
        height: 200,
        color: Colors.red,
        child: Column(
          children: [
            Image.network('https://images.pexels.com/photos/1556691/pexels-photo-1556691.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500')
          ],
        ),

    );


