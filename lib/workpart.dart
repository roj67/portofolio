import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/responsive.dart';
import 'package:portfolio/tableofcontent.dart';
import 'package:portfolio/tableofcontent2.dart';

import 'colors.dart';
import 'main.dart';

Widget workPart(BuildContext context) {
  return Container(
    width: MediaQuery.of(context).size.width,
    height: MediaQuery.of(context).size.height,
    color: background,
    child: Stack(
      children: [
        Column(
          children: [
            const SizedBox(
              height: 50,
            ),
            Align(
              alignment: Alignment.topCenter,
              child: Text(
                "Works",
                style:
                    GoogleFonts.cherryCreamSoda(color: onSurface, fontSize: 50),
              ),
            ),
          ],
        ),
        Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Center(),
        ),
      ],
    ),
  );
}

class WorkPage extends StatefulWidget {
  const WorkPage({super.key});

  @override
  State<WorkPage> createState() => _WorkPageState();
}

class _WorkPageState extends State<WorkPage> {
  GlobalKey<ScaffoldState> _scaffoldState1 = GlobalKey<ScaffoldState>();
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
        drawer: tableOfContent2(context),
        key: _scaffoldState1,
        body: Stack(
          children: [
            Container(
                width: (MediaQuery.of(context).size.width),
                height: MediaQuery.of(context).size.height,
                child: Image.asset(url, fit: BoxFit.fitHeight)),
            Container(
              width: (MediaQuery.of(context).size.width),
              height: MediaQuery.of(context).size.height,
              color: background.withOpacity(0),
              child: SingleChildScrollView(
                child: Column(
                  children: <Widget>[],
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
                    "Works",
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
            Align(
              alignment: Alignment.topLeft,
              child: SizedBox(
                width: 50,
                height: 50,
                child: IconButton(
                  icon: Icon(Icons.menu, color: onSurface, size: 40),
                  onPressed: () {
                    _scaffoldState1.currentState?.openDrawer();
                  },
                ),
              ),
            ),
          ],
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
              width: (MediaQuery.of(context).size.width),
              height: MediaQuery.of(context).size.height,
              color: background.withOpacity(0),
              child: SingleChildScrollView(
                child: Column(
                  children: <Widget>[
                    Center(
                      child: Row(
                        children: [
                          Container(
                              width: (MediaQuery.of(context).size.width / 2),
                              height: MediaQuery.of(context).size.height,
                              child: Center(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[],
                                ),
                              )),
                          Container(
                            width: MediaQuery.of(context).size.width / 2,
                            height: MediaQuery.of(context).size.height,
                            child: Container(),
                          ),
                        ],
                      ),
                    ),
                  ],
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
                    "Works",
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
