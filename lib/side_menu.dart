import 'package:cryptart/constants.dart';
import 'package:flutter/cupertino.dart';
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
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.bold,
                      fontSize: 20.0,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                color: kDarkBg,
              ),
              child: ListTile(
                // horizontalTitleGap: 0.0,
                leading: Container(
                  margin: EdgeInsets.only(right: 10.0),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: kDarkBg,
                  ),
                  child: Container(
                    padding: EdgeInsets.all(10.0),
                    decoration: BoxDecoration(
                      color: kDeepBlue,
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                    child: SvgPicture.asset(
                      'assets/icons/menu_doc.svg',
                      color: kDeepBlue,
                      height: 16,
                    ),
                  ),
                ),
                title: Text(
                  'Dashboard',
                  style: TextStyle(color: Colors.white54),
                ),
                // onTap: () {},
              ),
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

// class DrawerListTile extends StatelessWidget {
//   const DrawerListTile({
//     Key? key,
//     // For selecting those three line once press "Command+D"
//     required this.title,
//     required this.svgSrc,
//   }) : super(key: key);
//
//   final String title, svgSrc;
//
//   @override
//   Widget build(BuildContext context) {
//     return ListTile(
//       leading: Container(
//         margin: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
//         child: Container(
//           padding: EdgeInsets.all(10.0),
//           decoration: BoxDecoration(
//             color: kDarkBg,
//             borderRadius: BorderRadius.circular(30.0),
//           ),
//           child: SvgPicture.asset(
//             svgSrc,
//             color: Colors.white54,
//             height: 16,
//           ),
//         ),
//       ),
//       title: Text(
//         title,
//         style: TextStyle(color: Colors.white54),
//       ),
//       // onTap: () {},
//     );
//   }
// }

class DrawerListTile extends StatelessWidget {
  const DrawerListTile({
    Key? key,
    // For selecting those three line once press "Command+D"
    required this.title,
    required this.svgSrc,
  }) : super(key: key);

  final String title, svgSrc;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        // color: kDarkBg,
      ),
      child: ListTile(
        leading: Container(
          margin: EdgeInsets.only(right: 10.0),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: kDarkBg,
          ),
          child: Container(
            padding: EdgeInsets.all(10.0),
            decoration: BoxDecoration(
              color: kDarkBg,
              borderRadius: BorderRadius.circular(30.0),
            ),
            child: SvgPicture.asset(
              'assets/icons/menu_doc.svg',
              color: kDeepBlue,
              height: 16,
            ),
          ),
        ),
        title: Text(
          title,
          style: TextStyle(color: Colors.white54),
        ),
// onTap: () {},
      ),
    );
  }
}
