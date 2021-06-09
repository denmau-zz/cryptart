import 'package:cryptart/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        decoration: BoxDecoration(color: kLightBg),
        child: ListView(
          children: [
            DrawerHeader(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    "assets/images/logo.png",
                    height: 30.0,
                  ),
                  Text(
                    'Cryptart.',
                    style: kBrandTitle,
                  ),
                ],
              ),
            ),
            DrawerListTile(
              title: "Dashboard",
              svgSrc: "assets/icons/menu_doc.svg",
              isActive: true,
            ),
            DrawerListTile(
              title: "Market",
              svgSrc: "assets/icons/menu_doc.svg",
            ),
            DrawerListTile(
              title: "Price",
              svgSrc: "assets/icons/menu_doc.svg",
            ),
            DrawerListTile(
              title: "Analytics",
              svgSrc: "assets/icons/menu_doc.svg",
            ),
            DrawerListTile(
              title: "Notification",
              svgSrc: "assets/icons/menu_doc.svg",
            ),
            DrawerListTile(
              title: "Settings",
              svgSrc: "assets/icons/menu_doc.svg",
            ),
          ],
        ),
      ),
    );
  }
}

class DrawerListTile extends StatelessWidget {
  final String title, svgSrc;
  final bool isActive;

  DrawerListTile(
      {required this.title, required this.svgSrc, this.isActive = false});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        color: isActive ? kDarkBg : Colors.transparent,
      ),
      child: ListTile(
        leading: iconContainer(svgSrc, isActive),
        title: Text(title, style: kDashboardTitle),
      ),
    );
  }
}

Widget iconContainer(String svgSrc, bool isActive) {
  return Container(
    padding: EdgeInsets.all(10.0),
    decoration: BoxDecoration(
      color: isActive ? kDeepBlue : Colors.transparent,
      borderRadius: BorderRadius.circular(30.0),
    ),
    child: SvgPicture.asset(
      svgSrc,
      color: kDeepBlue,
      height: 16,
    ),
  );
}
