import 'package:flutter/material.dart';
import 'package:nss_wmo/foundations/config/constants.dart';

class HomeAppBar extends StatelessWidget implements PreferredSizeWidget {
  const HomeAppBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
        backgroundColor: Colors.indigo,
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Image.asset(
            ImageConst.nss_logo_png,
            fit: BoxFit.contain,
            height: 60,
          ),
        ),
        title: Padding(
          padding: const EdgeInsets.all(9.0),
          child: const Text('NSS - WMOC'),
        ));
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => AppBar().preferredSize;
}