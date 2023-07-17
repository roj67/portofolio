import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/main.dart';
import 'package:portfolio/responsive.dart';
import 'package:portfolio/tableofcontent.dart';
import 'package:portfolio/tableofcontent2.dart';

import 'colors.dart';

Widget addLogo(String url, String name, BuildContext context) {
  return Container(
    margin: EdgeInsets.all(10),
    height: 90,
    width: 90,
    child: Tooltip(message: name, child: Image.asset(url, fit: BoxFit.contain)),
  );
}

class SkillsPage extends StatefulWidget {
  const SkillsPage({super.key});

  @override
  State<SkillsPage> createState() => _SkillsPageState();
}

class _SkillsPageState extends State<SkillsPage> {
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
                            "Skills",
                            style: GoogleFonts.cherryCreamSoda(
                                color: onSurface, fontSize: 50),
                          ),
                        ),
                      ],
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height,
                      child: Center(
                        child: Wrap(
                          children: [
                            addLogo("logos/c-sharp.png", "C#", context),
                            addLogo("logos/clanguage.png", "C", context),
                            addLogo("logos/cpp.png", "C++", context),
                            addLogo(
                                "logos/JavaScript.png", "JavaScript", context),
                            addLogo("logos/css.png", "CSS", context),
                            addLogo("logos/html.png", "HTML", context),
                            addLogo("logos/dartlogo.png", "Dart", context),
                            addLogo("logos/dotnet.png", ".NET", context),
                            addLogo(
                                "logos/bootstrap.png", "BootStrap", context),
                            addLogo("logos/flutter.png", "Flutter", context),
                            addLogo("logos/git.png", "Git", context),
                            addLogo("logos/github.png", "GitHub", context),
                            addLogo("logos/PHP.png", "PHP", context),
                          ],
                        ),
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
                            "Skills",
                            style: GoogleFonts.cherryCreamSoda(
                                color: onSurface, fontSize: 50),
                          ),
                        ),
                      ],
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height,
                      child: Center(
                        child: Wrap(
                          children: [
                            const SizedBox(
                              width: 10,
                            ),
                            addLogo("logos/c-sharp.png", "C#", context),
                            const SizedBox(
                              width: 10,
                            ),
                            addLogo("logos/clanguage.png", "C", context),
                            const SizedBox(
                              width: 10,
                            ),
                            addLogo("logos/cpp.png", "C++", context),
                            const SizedBox(
                              width: 10,
                            ),
                            addLogo(
                                "logos/JavaScript.png", "JavaScript", context),
                            const SizedBox(
                              width: 10,
                            ),
                            addLogo("logos/css.png", "CSS", context),
                            const SizedBox(
                              width: 10,
                            ),
                            addLogo("logos/html.png", "HTML", context),
                            const SizedBox(
                              width: 10,
                            ),
                            addLogo("logos/dartlogo.png", "Dart", context),
                            const SizedBox(
                              width: 10,
                            ),
                            addLogo("logos/dotnet.png", ".NET", context),
                            const SizedBox(
                              width: 10,
                            ),
                            addLogo(
                                "logos/bootstrap.png", "BootStrap", context),
                            const SizedBox(
                              width: 10,
                            ),
                            addLogo("logos/flutter.png", "Flutter", context),
                            const SizedBox(
                              width: 10,
                            ),
                            addLogo("logos/git.png", "Git", context),
                            const SizedBox(
                              width: 10,
                            ),
                            addLogo("logos/github.png", "GitHub", context),
                            const SizedBox(
                              width: 10,
                            ),
                            addLogo("logos/PHP.png", "PHP", context),
                            const SizedBox(
                              width: 10,
                            ),
                          ],
                        ),
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
