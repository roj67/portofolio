import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/responsive.dart';
import 'package:portfolio/tableofcontent.dart';
import 'package:portfolio/tableofcontent2.dart';

import 'colors.dart';
import 'main.dart';

class DescriptionPage extends StatefulWidget {
  const DescriptionPage({super.key});

  @override
  State<DescriptionPage> createState() => _DescriptionPageState();
}

class _DescriptionPageState extends State<DescriptionPage> {
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
        key: _scaffoldState1,
        drawer: tableOfContent2(context),
        body: Stack(
          children: [
            Container(
                width: (MediaQuery.of(context).size.width),
                height: MediaQuery.of(context).size.height,
                child: Image.asset(url, fit: BoxFit.fitHeight)),
            ListView(
              children: [
                Container(
                    width: (MediaQuery.of(context).size.width),
                    height: MediaQuery.of(context).size.height,
                    color: background.withOpacity(0),
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height,
                      child: ListView(
                        children: [
                          const SizedBox(
                            height: 50,
                          ),
                          Align(
                            alignment: Alignment.topCenter,
                            child: Text(
                              "About Me",
                              style: GoogleFonts.cherryCreamSoda(
                                  color: onSurface, fontSize: 50),
                            ),
                          ),
                          Column(
                            children: [
                              const SizedBox(width: 40.0, height: 20.0),
                              Container(
                                child: Container(
                                  width: (MediaQuery.of(context).size.width),
                                  height:
                                      MediaQuery.of(context).size.height / 4,
                                  padding: EdgeInsets.all(10),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(20),
                                    child: Image.asset(
                                      "images/user.png",
                                      fit: BoxFit.contain,
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                  width: MediaQuery.of(context).size.width,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      Column(
                                        children: [
                                          Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: [
                                              const SizedBox(
                                                  width: 40.0, height: 30.0),
                                              Text(
                                                'I am Roj Tamang',
                                                style:
                                                    GoogleFonts.cherryCreamSoda(
                                                        color: onSurface,
                                                        fontSize: 30),
                                              ),
                                              const SizedBox(
                                                  width: 40.0, height: 20.0),
                                              DefaultTextStyle(
                                                style:
                                                    GoogleFonts.cherryCreamSoda(
                                                        color: onSurface,
                                                        fontSize: 30),
                                                child: AnimatedTextKit(
                                                  repeatForever: true,
                                                  pause: Duration(seconds: 3),
                                                  animatedTexts: [
                                                    TyperAnimatedText(
                                                        'DEVELOPER'),
                                                    TyperAnimatedText(
                                                        'DESIGNER'),
                                                    TyperAnimatedText(
                                                        'CREATOR'),
                                                  ],
                                                  onTap: () {},
                                                ),
                                              ),
                                              const SizedBox(
                                                  width: 40.0, height: 20.0),
                                              Center(
                                                child: Padding(
                                                  padding:
                                                      const EdgeInsets.all(8.0),
                                                  child: Container(
                                                    width:
                                                        MediaQuery.of(context)
                                                                .size
                                                                .width -
                                                            50,
                                                    child: Text(
                                                      "I am a passionate developer who likes to work with web related things and always eager to learn new things. I am always developing new things and also trying to learn new thing every day.",
                                                      style: GoogleFonts
                                                          .cherryCreamSoda(
                                                              color: onSurface,
                                                              fontSize: 20),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ],
                                  ))
                            ],
                          ),
                        ],
                      ),
                    )),
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
                              "About Me",
                              style: GoogleFonts.cherryCreamSoda(
                                  color: onSurface, fontSize: 50),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width / 2,
                            height: MediaQuery.of(context).size.height,
                            child: Container(
                              padding: EdgeInsets.all(
                                  MediaQuery.of(context).size.width / 14),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(20),
                                child: Image.asset(
                                  "images/user.png",
                                  fit: BoxFit.contain,
                                ),
                              ),
                            ),
                          ),
                          Container(
                              width: MediaQuery.of(context).size.width / 2,
                              height: MediaQuery.of(context).size.height,
                              child: Row(
                                children: <Widget>[
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Column(
                                        children: [
                                          const SizedBox(
                                              width: 40.0, height: 50.0),
                                          Text(
                                            'I am Roj Tamang',
                                            style: GoogleFonts.cherryCreamSoda(
                                                color: onSurface, fontSize: 50),
                                          ),
                                          const SizedBox(
                                              width: 40.0, height: 20.0),
                                          DefaultTextStyle(
                                            style: GoogleFonts.cherryCreamSoda(
                                                color: onSurface, fontSize: 50),
                                            child: AnimatedTextKit(
                                              repeatForever: true,
                                              pause: Duration(seconds: 3),
                                              animatedTexts: [
                                                TyperAnimatedText('DEVELOPER'),
                                                TyperAnimatedText('DESIGNER'),
                                                TyperAnimatedText('CREATOR'),
                                              ],
                                              onTap: () {},
                                            ),
                                          ),
                                          const SizedBox(
                                              width: 40.0, height: 20.0),
                                          Wrap(
                                            children: [
                                              Text(
                                                "I am a passionate developer who likes to work with\nweb related things and always eager to learn\nnew things. I am always developing new things and \nalso trying to learn new thing every day.",
                                                style:
                                                    GoogleFonts.cherryCreamSoda(
                                                        color: onSurface,
                                                        fontSize: 20),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ],
                              ))
                        ],
                      ),
                    ],
                  ),
                )),
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
