import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/responsive.dart';
import 'package:portfolio/tableofcontent.dart';
import 'package:portfolio/tableofcontent2.dart';
import 'package:timelines/timelines.dart';

import 'colors.dart';
import 'main.dart';

Widget addDate(String date) {
  return Padding(
    padding: const EdgeInsets.all(8),
    child: Text(
      date,
      style: GoogleFonts.cherryCreamSoda(color: onSurface, fontSize: 20),
    ),
  );
}

Widget addCard(String descript, String descript1, BuildContext context) {
  return Card(
    margin: EdgeInsets.all(9),
    color: onSurface,
    child: Padding(
      padding: const EdgeInsets.all(8),
      child: Container(
        child: Column(
          children: [
            Text(
              descript,
              style:
                  GoogleFonts.cherryCreamSoda(color: background, fontSize: 20),
            ),
            Text(
              descript1,
              style:
                  GoogleFonts.cherryCreamSoda(color: background, fontSize: 20),
            )
          ],
        ),
      ),
    ),
  );
}

class EducationPage extends StatefulWidget {
  const EducationPage({super.key});

  @override
  State<EducationPage> createState() => _EducationPageState();
}

class _EducationPageState extends State<EducationPage> {
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
                child: Image.asset(url, fit: BoxFit.fill)),
            Container(
              width: (MediaQuery.of(context).size.width),
              height: MediaQuery.of(context).size.height,
              color: background.withOpacity(0),
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
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
                            "Education",
                            style: GoogleFonts.cherryCreamSoda(
                                color: onSurface, fontSize: 50),
                          ),
                        ),
                      ],
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          FixedTimeline.tileBuilder(
                            builder: TimelineTileBuilder.connectedFromStyle(
                                itemCount: 3,
                                contentsAlign: ContentsAlign.alternating,
                                connectionDirection: ConnectionDirection.after,
                                oppositeContentsBuilder: (context, index) {
                                  if (index == 0) {
                                    return addDate("2022-Present");
                                  } else if (index == 1) {
                                    return addDate("2019-2021");
                                  } else if (index == 2) {
                                    return addDate("2010-2018");
                                  }
                                  return addDate("content");
                                },
                                contentsBuilder: (context, index) {
                                  if (index == 0) {
                                    return addCard(
                                        "College",
                                        "Pursuing Bachelor in Computer Science from Patan Multiple Campus",
                                        context);
                                  } else if (index == 1) {
                                    return addCard(
                                        "High School",
                                        "Completed High School from Prasadi Academy",
                                        context);
                                  } else if (index == 2) {
                                    return addCard(
                                        "Middle School",
                                        "Completed Middle School from Eden Garden Boarding School",
                                        context);
                                  }
                                  return addCard("content", "none", context);
                                },
                                connectorStyleBuilder: (context, index) =>
                                    ConnectorStyle.solidLine,
                                indicatorStyleBuilder: (context, index) =>
                                    IndicatorStyle.dot),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
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
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
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
                            "Education",
                            style: GoogleFonts.cherryCreamSoda(
                                color: onSurface, fontSize: 50),
                          ),
                        ),
                      ],
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          FixedTimeline.tileBuilder(
                            builder: TimelineTileBuilder.connectedFromStyle(
                                itemCount: 3,
                                contentsAlign: ContentsAlign.alternating,
                                connectionDirection: ConnectionDirection.after,
                                oppositeContentsBuilder: (context, index) {
                                  if (index == 0) {
                                    return addDate("2022-Present");
                                  } else if (index == 1) {
                                    return addDate("2019-2021");
                                  } else if (index == 2) {
                                    return addDate("2010-2018");
                                  }
                                  return addDate("content");
                                },
                                contentsBuilder: (context, index) {
                                  if (index == 0) {
                                    return addCard(
                                        "College",
                                        "Pursuing Bachelor in Computer Science from Patan Multiple Campus",
                                        context);
                                  } else if (index == 1) {
                                    return addCard(
                                        "High School",
                                        "Completed High School from Prasadi Academy",
                                        context);
                                  } else if (index == 2) {
                                    return addCard(
                                        "Middle School",
                                        "Completed Middle School from Eden Garden Boarding School",
                                        context);
                                  }
                                  return addCard("content", "none", context);
                                },
                                connectorStyleBuilder: (context, index) =>
                                    ConnectorStyle.solidLine,
                                indicatorStyleBuilder: (context, index) =>
                                    IndicatorStyle.dot),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
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
