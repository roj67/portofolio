import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/responsive.dart';
import 'package:portfolio/tableofcontent.dart';
import 'package:portfolio/tableofcontent2.dart';
import 'dart:html' as html;
import 'colors.dart';
import 'main.dart';

class ContactPage extends StatefulWidget {
  const ContactPage({super.key});

  @override
  State<ContactPage> createState() => _ContactPageState();
}

class _ContactPageState extends State<ContactPage> {
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
                  children: <Widget>[
                    Center(
                      child: Column(
                        children: [
                          Container(
                              width: (MediaQuery.of(context).size.width),
                              child: Center(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        const SizedBox(height: 150),
                                        Text("Name",
                                            style: GoogleFonts.cherryCreamSoda(
                                                color: onSurface,
                                                fontSize: 25)),
                                        const SizedBox(
                                          height: 10,
                                        ),
                                        Container(
                                          width: (MediaQuery.of(context)
                                                  .size
                                                  .width) -
                                              100,
                                          decoration: BoxDecoration(
                                              color: same,
                                              borderRadius:
                                                  BorderRadius.circular(15)),
                                          child: TextField(
                                            style: GoogleFonts.cherryCreamSoda(
                                                color: Colors.black,
                                                fontSize: 20),
                                            decoration: InputDecoration(
                                                border: OutlineInputBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            15))),
                                          ),
                                        ),
                                      ],
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        const SizedBox(
                                          height: 15,
                                        ),
                                        Text("Email",
                                            style: GoogleFonts.cherryCreamSoda(
                                                color: onSurface,
                                                fontSize: 25)),
                                        const SizedBox(
                                          height: 10,
                                        ),
                                        Container(
                                          width: (MediaQuery.of(context)
                                                  .size
                                                  .width) -
                                              100,
                                          decoration: BoxDecoration(
                                              color: same,
                                              borderRadius:
                                                  BorderRadius.circular(15)),
                                          child: TextField(
                                            style: GoogleFonts.cherryCreamSoda(
                                                color: Colors.black,
                                                fontSize: 20),
                                            decoration: InputDecoration(
                                                border: OutlineInputBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            15))),
                                          ),
                                        ),
                                        const SizedBox(
                                          height: 15,
                                        ),
                                      ],
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text("Message",
                                            style: GoogleFonts.cherryCreamSoda(
                                                color: onSurface,
                                                fontSize: 25)),
                                        const SizedBox(
                                          height: 10,
                                        ),
                                        Container(
                                          width: (MediaQuery.of(context)
                                                  .size
                                                  .width) -
                                              100,
                                          decoration: BoxDecoration(
                                              color: same,
                                              borderRadius:
                                                  BorderRadius.circular(15)),
                                          child: TextField(
                                            style: GoogleFonts.cherryCreamSoda(
                                                color: Colors.black,
                                                fontSize: 20),
                                            maxLines: 5,
                                            decoration: InputDecoration(
                                                border: OutlineInputBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            15))),
                                          ),
                                        ),
                                      ],
                                    ),
                                    const SizedBox(
                                      height: 15,
                                    ),
                                    Container(
                                      width: MediaQuery.of(context).size.width -
                                          100,
                                      height: 60,
                                      decoration: BoxDecoration(
                                        color: primaryVariant,
                                        borderRadius: BorderRadius.circular(25),
                                      ),
                                      child: ElevatedButton(
                                        style: ElevatedButton.styleFrom(
                                            backgroundColor: primaryVariant,
                                            shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(15))),
                                        onPressed: () {},
                                        child: Text("Send an Email",
                                            style: GoogleFonts.cherryCreamSoda(
                                                color: onSurface,
                                                fontSize: 25)),
                                      ),
                                    ),
                                  ],
                                ),
                              )),
                          const SizedBox(height: 50),
                          Container(
                            width: MediaQuery.of(context).size.width,
                            child: Container(
                                child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text("Connect with me on",
                                    style: GoogleFonts.cherryCreamSoda(
                                        color: onSurface, fontSize: 30)),
                                Wrap(
                                  children: [
                                    const SizedBox(
                                      width: 10,
                                    ),
                                    IconButton(
                                      onPressed: () {
                                        html.window.open(
                                            "https://www.facebook.com/tamangroj56/",
                                            "");
                                      },
                                      icon: FaIcon(
                                        FontAwesomeIcons.facebook,
                                        color: onSurface,
                                        size: 40,
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 10,
                                    ),
                                    IconButton(
                                      onPressed: () {
                                        html.window.open(
                                            "https://github.com/roj67", "");
                                      },
                                      icon: FaIcon(
                                        FontAwesomeIcons.github,
                                        color: onSurface,
                                        size: 40,
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 10,
                                    ),
                                    IconButton(
                                      onPressed: () {
                                        html.window.open(
                                            "https://twitter.com/tamangroj56",
                                            "");
                                      },
                                      icon: FaIcon(
                                        FontAwesomeIcons.twitter,
                                        color: onSurface,
                                        size: 40,
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 10,
                                    ),
                                    IconButton(
                                      onPressed: () {
                                        html.window.open(
                                            "https://www.instagram.com/tmg_roj/",
                                            "");
                                      },
                                      icon: FaIcon(
                                        FontAwesomeIcons.instagram,
                                        color: onSurface,
                                        size: 40,
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 10,
                                    ),
                                    IconButton(
                                      onPressed: () {
                                        html.window.open(
                                            "https://www.linkedin.com/in/roj-tamang-92ba06220",
                                            "");
                                      },
                                      icon: FaIcon(
                                        FontAwesomeIcons.linkedin,
                                        color: onSurface,
                                        size: 40,
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 10,
                                    ),
                                  ],
                                )
                              ],
                            )),
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
                    "Contact Me",
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
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text("Name",
                                            style: GoogleFonts.cherryCreamSoda(
                                                color: onSurface,
                                                fontSize: 25)),
                                        const SizedBox(
                                          height: 10,
                                        ),
                                        Container(
                                          width: (MediaQuery.of(context)
                                                      .size
                                                      .width /
                                                  2) -
                                              250,
                                          decoration: BoxDecoration(
                                              color: same,
                                              borderRadius:
                                                  BorderRadius.circular(15)),
                                          child: TextField(
                                            style: GoogleFonts.cherryCreamSoda(
                                                color: Colors.black,
                                                fontSize: 20),
                                            decoration: InputDecoration(
                                                border: OutlineInputBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            15))),
                                          ),
                                        ),
                                      ],
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        const SizedBox(
                                          height: 15,
                                        ),
                                        Text("Email",
                                            style: GoogleFonts.cherryCreamSoda(
                                                color: onSurface,
                                                fontSize: 25)),
                                        const SizedBox(
                                          height: 10,
                                        ),
                                        Container(
                                          width: (MediaQuery.of(context)
                                                      .size
                                                      .width /
                                                  2) -
                                              250,
                                          decoration: BoxDecoration(
                                              color: same,
                                              borderRadius:
                                                  BorderRadius.circular(15)),
                                          child: TextField(
                                            style: GoogleFonts.cherryCreamSoda(
                                                color: Colors.black,
                                                fontSize: 20),
                                            decoration: InputDecoration(
                                                border: OutlineInputBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            15))),
                                          ),
                                        ),
                                        const SizedBox(
                                          height: 15,
                                        ),
                                      ],
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text("Message",
                                            style: GoogleFonts.cherryCreamSoda(
                                                color: onSurface,
                                                fontSize: 25)),
                                        const SizedBox(
                                          height: 10,
                                        ),
                                        Container(
                                          width: (MediaQuery.of(context)
                                                      .size
                                                      .width /
                                                  2) -
                                              250,
                                          decoration: BoxDecoration(
                                              color: same,
                                              borderRadius:
                                                  BorderRadius.circular(15)),
                                          child: TextField(
                                            style: GoogleFonts.cherryCreamSoda(
                                                color: Colors.black,
                                                fontSize: 20),
                                            maxLines: 5,
                                            decoration: InputDecoration(
                                                border: OutlineInputBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            15))),
                                          ),
                                        ),
                                      ],
                                    ),
                                    const SizedBox(
                                      height: 15,
                                    ),
                                    Container(
                                      width: MediaQuery.of(context).size.width /
                                              2 -
                                          250,
                                      height: 60,
                                      decoration: BoxDecoration(
                                        color: primaryVariant,
                                        borderRadius: BorderRadius.circular(25),
                                      ),
                                      child: ElevatedButton(
                                        style: ElevatedButton.styleFrom(
                                            backgroundColor: primaryVariant,
                                            shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(15))),
                                        onPressed: () {},
                                        child: Text("Send an Email",
                                            style: GoogleFonts.cherryCreamSoda(
                                                color: onSurface,
                                                fontSize: 25)),
                                      ),
                                    ),
                                  ],
                                ),
                              )),
                          Container(
                            width: MediaQuery.of(context).size.width / 2,
                            height: MediaQuery.of(context).size.height,
                            child: Container(
                                child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text("Connect with me on",
                                    style: GoogleFonts.cherryCreamSoda(
                                        color: onSurface, fontSize: 30)),
                                Wrap(
                                  children: [
                                    const SizedBox(
                                      width: 10,
                                    ),
                                    IconButton(
                                      onPressed: () {
                                        html.window.open(
                                            "https://www.facebook.com/tamangroj56/",
                                            "");
                                      },
                                      icon: FaIcon(
                                        FontAwesomeIcons.facebook,
                                        color: onSurface,
                                        size: 40,
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 10,
                                    ),
                                    IconButton(
                                      onPressed: () {
                                        html.window.open(
                                            "https://github.com/roj67", "");
                                      },
                                      icon: FaIcon(
                                        FontAwesomeIcons.github,
                                        color: onSurface,
                                        size: 40,
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 10,
                                    ),
                                    IconButton(
                                      onPressed: () {
                                        html.window.open(
                                            "https://twitter.com/tamangroj56",
                                            "");
                                      },
                                      icon: FaIcon(
                                        FontAwesomeIcons.twitter,
                                        color: onSurface,
                                        size: 40,
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 10,
                                    ),
                                    IconButton(
                                      onPressed: () {
                                        html.window.open(
                                            "https://www.instagram.com/tmg_roj/",
                                            "");
                                      },
                                      icon: FaIcon(
                                        FontAwesomeIcons.instagram,
                                        color: onSurface,
                                        size: 40,
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 10,
                                    ),
                                    IconButton(
                                      onPressed: () {
                                        html.window.open(
                                            "https://www.linkedin.com/in/roj-tamang-92ba06220",
                                            "");
                                      },
                                      icon: FaIcon(
                                        FontAwesomeIcons.linkedin,
                                        color: onSurface,
                                        size: 40,
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 10,
                                    ),
                                  ],
                                )
                              ],
                            )),
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
                    "Contact Me",
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
