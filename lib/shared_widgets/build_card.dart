import 'package:flutter/material.dart';

class buildCards extends StatefulWidget {
  final String imageId;
  const buildCards({required this.imageId});

  @override
  State<buildCards> createState() => _buildCardsState();
}

class _buildCardsState extends State<buildCards> {
  @override
  Widget build(BuildContext context) {
    return Card(
        semanticContainer: true,
        color: Colors.red,
        child:
        SizedBox(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child:Image.asset('assets/images/nss_main1.jpeg',fit: BoxFit.cover
            )));
  }
}



