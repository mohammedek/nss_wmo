import 'package:flutter/material.dart';
import 'package:nss_wmo/foundations/config/constants.dart';
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
        body: ListView(
          children: [
            Column(children: [
              header(),
              GridView(
                physics: NeverScrollableScrollPhysics(),
                padding: EdgeInsets.all(16),
                shrinkWrap: true,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2, crossAxisSpacing: 8, mainAxisSpacing: 8),
                children: [
                  ImageBox(image: ImageConst.nss_main1),
                  ImageBox(image: ImageConst.nss_main2),
                  ImageBox(image: ImageConst.nss_main3),
                  ImageBox(image: ImageConst.nss_main4),
                  ImageBox(image: ImageConst.nss_main5),
                  ImageBox(image: ImageConst.nss_main6),
                ],
              )
            ]),
          ],
        ));
  }
}




