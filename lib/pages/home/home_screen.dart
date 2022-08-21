
import 'package:flutter/material.dart';
import 'package:nss_wmo/foundations/config/constants.dart';
import 'package:nss_wmo/foundations/extensions/textstyle_extension.dart';
import 'package:nss_wmo/pages/home/widgets/card_scroll.dart';
import 'package:nss_wmo/shared_widgets/build_card.dart';
import 'package:nss_wmo/shared_widgets/image_box.dart';
import 'widgets/home_app_bar.dart';
import 'widgets/home_header.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: HomeAppBar(),
      body: ListView(shrinkWrap: true, children: [
        header(),
        Center(
            child: Text("National ServiceScheme(NSS)",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 45,
                ))),
        Container(
            child: Image.asset(
          "assets/images/nss_main_9.jpeg",
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
        )),
        Container(
            padding: EdgeInsets.only(left: 50,right: 50,top: 50),
            child: Center(
                child: Text(
              "The National Service Scheme unit of WMO College was started in"
              " 1996 and functions under the Human Resource Deveopment Ministry of India."
              "The objective of NSS is to create social awareness among the"
              " students and the all round development of their personality. The N.S.S. Unit of this College conducts regular and special camps, awareness classes, "
              "demonstrations, personality development programmes etc. for the volunteers."
              "There are two NSS units in this College ( Unit 138 and 173)."
              " The volunteer strength of each unit is 50",
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.w400,
              ),
            )
            )
        ),
        Text("Programme Officers",textAlign: TextAlign.center, style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,fontStyle: FontStyle.italic)),
        Text("Mrs.Shaheera\n"
            "Mr.Sayeed",textAlign: TextAlign.center, style: TextStyle(fontSize: 20,fontWeight: FontWeight.w400,fontStyle: FontStyle.italic)),

        Divider(
          height: 1,
          thickness: 1,
          color: Colors.black26,
        ),
        GridView(
          physics: NeverScrollableScrollPhysics(),
          padding: EdgeInsets.all(16),
          shrinkWrap: true,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3, crossAxisSpacing: 8, mainAxisSpacing: 8),
          children: [
            ImageBox(image: ImageConst.nss_main1),
            ImageBox(image: ImageConst.nss_main2),
            ImageBox(image: ImageConst.nss_main3),
            ImageBox(image: ImageConst.nss_main4),
            ImageBox(image: ImageConst.nss_main5),
            ImageBox(image: ImageConst.nss_main6),
          ],
        ),
        Divider(
          height: 1,
          thickness: 1,
          color: Colors.black26,
        ),
        Container(
            color: Colors.black,
            height: 100,
            width: 100,
            child: Row(
              children: [
                Text(
                  "\t Devolped by mohammed ek\n"
                  "\t contact : @mohammedek159@gmail.com",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w100,
                    fontStyle: FontStyle.italic,
                  ),
                )
              ],
            ))
      ]),
    );
  }
}
