import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/responsive.dart';
import 'package:portfolio/tableofcontent.dart';

import 'colors.dart';
import 'main.dart';

class ReviewPage extends StatefulWidget {
  const ReviewPage({super.key});

  @override
  State<ReviewPage> createState() => _ReviewPageState();
}

class _ReviewPageState extends State<ReviewPage> {
  //GlobalKey<ScaffoldState> _scaffoldState1 = GlobalKey<ScaffoldState>();
  //GlobalKey<ScaffoldState> _scaffoldState2 = GlobalKey<ScaffoldState>();
  GlobalKey<ScaffoldState> _scaffoldState3 = GlobalKey<ScaffoldState>();
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    if (responsive(context) == 'isMobile') {
      return Scaffold(
        drawer: Drawer(
            child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(child: Text("Table of Contents")),
            ListTile(
              title: const Text("Welcome"),
              onTap: () {
                Navigator.pop(context);
              },
            )
          ],
        )),
        body: Container(
          color: background,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Column(
                  children: [
                    Container(
                        width: (MediaQuery.of(context).size.width),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            Column(
                              children: [],
                            ),
                          ],
                        )),
                  ],
                )
              ],
            ),
          ),
        ),
      );
    } else if (responsive(context) == 'isTablet') {
      return Scaffold(
        drawer: Drawer(
            child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(child: Text("Table of Contents")),
            ListTile(
              title: const Text("Welcome"),
              onTap: () {
                Navigator.pop(context);
              },
            )
          ],
        )),
        body: Container(
          color: background,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Row(
                  children: [
                    Container(
                        width: (MediaQuery.of(context).size.width / 2),
                        height: MediaQuery.of(context).size.height,
                        child: Row()),
                    Container(
                      width: MediaQuery.of(context).size.width / 2,
                      height: MediaQuery.of(context).size.height,
                      child: Container(),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      );
    } else {
      return Scaffold(
        key: _scaffoldState3,
        body: Stack(
          children: [
            Container(
                width: (MediaQuery.of(context).size.width),
                height: MediaQuery.of(context).size.height,
                child: Image.asset(url, fit: BoxFit.fill)),
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              color: background.withOpacity(0),
              child: Center(
                child: ScrollConfiguration(
                  behavior: CustomScrollBehavior(),
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      Container(
                        height: MediaQuery.of(context).size.height / 2,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            const SizedBox(
                              width: 20,
                            ),
                            addReview("images/p4.jpeg",
                                "Very good at his work and very diligient. Knows what he is doing"),
                            const SizedBox(
                              width: 20,
                            ),
                            addReview("images/p3.jpeg",
                                "Good knowledge on technologies and great to work with."),
                            const SizedBox(
                              width: 20,
                            ),
                            addReview("images/prof3.jpeg",
                                "Creative and can work in fast paced environment."),
                            const SizedBox(
                              width: 20,
                            ),
                            addReview("images/prof4.jpeg",
                                "Good at what he does and very creative and knowlegable."),
                            const SizedBox(
                              width: 20,
                            ),
                            addReview("images/prof5.jpeg",
                                "If you want someone to work with then he is the one."),
                            const SizedBox(
                              width: 20,
                            ),
                            addReview("images/prof6.jpeg",
                                "I was very impressed by his creativity and work."),
                            const SizedBox(
                              width: 20,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Column(
              children: [
                const SizedBox(
                  height: 50,
                ),
                Align(
                  alignment: Alignment.topCenter,
                  child: Text(
                    "Reviews",
                    style: GoogleFonts.cherryCreamSoda(
                        color: onSurface, fontSize: 50),
                  ),
                ),
              ],
            ),
            Align(
              alignment: Alignment.topRight,
              child: SizedBox(
                width: 50,
                height: 50,
                child: Switch(
                  value: dark,
                  overlayColor: overlayColor,
                  trackColor: trackColor,
                  onChanged: (value) {
                    setState(() {
                      dark = value;
                      switchColor();
                    });
                  },
                ),
              ),
            ),
            tableofContent(context),
          ],
        ),
      );
    }
  }

  final MaterialStateProperty<Color?> overlayColor =
      MaterialStateProperty.resolveWith<Color?>(
    (Set<MaterialState> states) {
      // Material color when switch is selected.
      if (states.contains(MaterialState.selected)) {
        return Colors.amber.withOpacity(0.54);
      }
      // Material color when switch is disabled.
      if (states.contains(MaterialState.disabled)) {
        return Colors.grey.shade400;
      }
      // Otherwise return null to set default material color
      // for remaining states such as when the switch is
      // hovered, or focused.
      return null;
    },
  );
  final MaterialStateProperty<Color?> trackColor =
      MaterialStateProperty.resolveWith<Color?>(
    (Set<MaterialState> states) {
      // Track color when the switch is selected.
      if (states.contains(MaterialState.selected)) {
        return Colors.amber;
      }
      // Otherwise return null to set default track color
      // for remaining states such as when the switch is
      // hovered, focused, or disabled.
      return null;
    },
  );
}

Widget addReview(String url, String review) {
  return Container(
    width: 300,
    height: 400,
    child: Card(
        elevation: 0,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        color: onSurface,
        child: Column(
          children: [
            Container(
              width: 300,
              height: 250,
              child: ClipRRect(
                borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.zero,
                    bottomRight: Radius.zero,
                    topLeft: Radius.circular(15),
                    topRight: Radius.circular(15)),
                child: Image.asset(url, fit: BoxFit.none),
              ),
            ),
            const SizedBox(height: 5),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Wrap(
                children: [
                  Text(review,
                      style: GoogleFonts.cherryCreamSoda(
                        color: background,
                        fontSize: 20,
                      )),
                ],
              ),
            ),
          ],
        )),
  );
}

class CustomScrollBehavior extends MaterialScrollBehavior {
  @override
  Set<PointerDeviceKind> get dragDevices => {
        PointerDeviceKind.touch,
        PointerDeviceKind.mouse,
      };
}
