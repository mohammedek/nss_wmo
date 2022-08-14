import 'package:flutter/material.dart';
import 'package:nss_wmo/foundations/config/constants.dart';
import 'package:nss_wmo/foundations/extensions/textstyle_extension.dart';
import 'package:nss_wmo/pages/events/event_page.dart';
import 'package:nss_wmo/shared_widgets/container_decorations.dart';

class header extends StatelessWidget {
  const header({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.symmetric(vertical: 16),
        decoration: const BoxDecoration(
            color: Colors.white10,
            borderRadius: BorderRadius.vertical(bottom: Radius.circular(50))),
        child: Column(
          children: [
            Image.asset(
              ImageConst.wmo_logo_png,
              height: 60,
            ),
            Center(
                child: Text(
              'Wmo Arts&Science College\n'
              'NATIONAL SERVICE SCHEME',
              style: TextStyle(
                fontSize: 24,
              ).bold,
            )),
            InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => EventPage()));
                },
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        margin: EdgeInsets.all(8),
                        height: 60,
                        width: 340,
                        child: Center(
                          child: Text(
                            "Events",
                            style: TextStyle(
                              fontSize: 20,
                            ).bold.white,
                          ),
                        ),
                        decoration: ContainerDecor.boxDecor1,
                      ),
                    ])),
          ],
        ));
  }
}
