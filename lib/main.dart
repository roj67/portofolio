import 'dart:ui';

import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/contactpart.dart';
import 'package:portfolio/responsive.dart';
import 'package:portfolio/tableofcontent.dart';
import 'package:portfolio/tableofcontent2.dart';

import 'colors.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MyHomePage(),
    );
  }
}

String url = "images/ground4.jpg";

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  GlobalKey<ScaffoldState> _scaffoldState1 = GlobalKey<ScaffoldState>();
  //GlobalKey<ScaffoldState> _scaffoldState2 = GlobalKey<ScaffoldState>();
  GlobalKey<ScaffoldState> _scaffoldState3 = GlobalKey<ScaffoldState>();

  final urlImages = [
    'images/first.png',
    'images/second.png',
    'images/third.png',
    'images/fourth.png',
    'images/prod1.png'
  ];
  Widget buildImage(String urlImage, int index) {
    return Container(
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: Image.asset(
          urlImage,
          fit: BoxFit.contain,
        ),
      ),
    );
  }

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
            Container(
              width: (MediaQuery.of(context).size.width),
              height: MediaQuery.of(context).size.height,
              color: background.withOpacity(0),
              child: SingleChildScrollView(
                child: Column(
                  children: <Widget>[
                    Center(
                      child: Container(
                          width: (MediaQuery.of(context).size.width),
                          height: MediaQuery.of(context).size.height,
                          child: Center(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Create',
                                          style: GoogleFonts.cherryCreamSoda(
                                              color: onSurface, fontSize: 29),
                                        ),
                                        const SizedBox(
                                            width: 20.0, height: 100.0),
                                        DefaultTextStyle(
                                          style: GoogleFonts.cherryCreamSoda(
                                              color: onSurface, fontSize: 29),
                                          child: AnimatedTextKit(
                                            repeatForever: true,
                                            pause: Duration(seconds: 3),
                                            animatedTexts: [
                                              TypewriterAnimatedText('AWESOME'),
                                              TypewriterAnimatedText(
                                                  'BEAUTIFUL'),
                                              TypewriterAnimatedText('AMAZING'),
                                              TypewriterAnimatedText(
                                                  'STUNNING'),
                                              TypewriterAnimatedText(
                                                  'RESPONSIVE')
                                            ],
                                            onTap: () {},
                                          ),
                                        ),
                                      ],
                                    ),
                                    Text(
                                        "If you want to make Websites,\nMobile apps and Desktop apps.",
                                        style: GoogleFonts.cherryCreamSoda(
                                            color: onSurface, fontSize: 20)),
                                    Text("Contact me",
                                        style: GoogleFonts.cherryCreamSoda(
                                            color: onSurface, fontSize: 20)),
                                    const SizedBox(
                                      height: 40,
                                    ),
                                    Container(
                                      width: MediaQuery.of(context).size.width -
                                          100,
                                      height: 60,
                                      decoration: BoxDecoration(
                                        color: primaryVariant,
                                        borderRadius: BorderRadius.circular(20),
                                      ),
                                      child: ElevatedButton(
                                        style: ElevatedButton.styleFrom(
                                          backgroundColor: primaryVariant,
                                        ),
                                        onPressed: () {
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      const ContactPage()));
                                        },
                                        child: Text("Get Started",
                                            style: GoogleFonts.cherryCreamSoda(
                                                color: onSurface,
                                                fontSize: 25)),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          )),
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
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(15.0),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Create',
                                        style: GoogleFonts.cherryCreamSoda(
                                            color: onSurface, fontSize: 30),
                                      ),
                                      const SizedBox(width: 20.0, height: 5.0),
                                      DefaultTextStyle(
                                        style: GoogleFonts.cherryCreamSoda(
                                            color: onSurface, fontSize: 30),
                                        child: AnimatedTextKit(
                                          pause: Duration(seconds: 1),
                                          animatedTexts: [
                                            TyperAnimatedText('AWESOME'),
                                            TyperAnimatedText('BEAUTIFUL'),
                                            TyperAnimatedText('AMAZING'),
                                            TyperAnimatedText('STUNNING'),
                                            TyperAnimatedText('RESPONSIVE')
                                          ],
                                          onTap: () {},
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ],
                        )),
                    Container(
                      width: MediaQuery.of(context).size.width / 2,
                      height: MediaQuery.of(context).size.height,
                      child: Container(
                        child: CarouselSlider.builder(
                            options: CarouselOptions(
                                height:
                                    MediaQuery.of(context).size.height - 100,
                                autoPlay: true,
                                enlargeFactor: 0.3,
                                viewportFraction: 0.9,
                                autoPlayInterval: const Duration(seconds: 3),
                                enlargeCenterPage: true,
                                clipBehavior: Clip.antiAliasWithSaveLayer),
                            itemCount: urlImages.length,
                            itemBuilder: (context, index, realIndex) {
                              final urlImage = urlImages[index];
                              return buildImage(urlImage, index);
                            }),
                      ),
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
                                  children: <Widget>[
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Row(
                                          children: [
                                            Text(
                                              'Create',
                                              style:
                                                  GoogleFonts.cherryCreamSoda(
                                                      color: onSurface,
                                                      fontSize: 50),
                                            ),
                                            const SizedBox(
                                                width: 20.0, height: 100.0),
                                            DefaultTextStyle(
                                              style:
                                                  GoogleFonts.cherryCreamSoda(
                                                      color: onSurface,
                                                      fontSize: 50),
                                              child: AnimatedTextKit(
                                                repeatForever: true,
                                                pause: Duration(seconds: 3),
                                                animatedTexts: [
                                                  TypewriterAnimatedText(
                                                      'AWESOME'),
                                                  TypewriterAnimatedText(
                                                      'BEAUTIFUL'),
                                                  TypewriterAnimatedText(
                                                      'AMAZING'),
                                                  TypewriterAnimatedText(
                                                      'STUNNING'),
                                                  TypewriterAnimatedText(
                                                      'RESPONSIVE')
                                                ],
                                                onTap: () {},
                                              ),
                                            ),
                                          ],
                                        ),
                                        Text(
                                            "If you want to make Websites,\nMobile apps and Desktop apps.",
                                            style: GoogleFonts.cherryCreamSoda(
                                                color: onSurface,
                                                fontSize: 25)),
                                        Text("Contact me",
                                            style: GoogleFonts.cherryCreamSoda(
                                                color: onSurface,
                                                fontSize: 25)),
                                        const SizedBox(
                                          height: 40,
                                        ),
                                        Container(
                                          width: MediaQuery.of(context)
                                                      .size
                                                      .width /
                                                  2 -
                                              200,
                                          height: 60,
                                          decoration: BoxDecoration(
                                            color: primaryVariant,
                                            borderRadius:
                                                BorderRadius.circular(20),
                                          ),
                                          child: ElevatedButton(
                                            style: ElevatedButton.styleFrom(
                                              backgroundColor: primaryVariant,
                                            ),
                                            onPressed: () {
                                              Navigator.push(
                                                  context,
                                                  MaterialPageRoute(
                                                      builder: (context) =>
                                                          const ContactPage()));
                                            },
                                            child: Text("Get Started",
                                                style:
                                                    GoogleFonts.cherryCreamSoda(
                                                        color: onSurface,
                                                        fontSize: 25)),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              )),
                          Container(
                            width: MediaQuery.of(context).size.width / 2,
                            height: MediaQuery.of(context).size.height,
                            child: Container(
                              child: CarouselSlider.builder(
                                  options: CarouselOptions(
                                      height:
                                          MediaQuery.of(context).size.height -
                                              100,
                                      autoPlay: true,
                                      enlargeFactor: 0.3,
                                      viewportFraction: 0.9,
                                      autoPlayInterval:
                                          const Duration(seconds: 3),
                                      enlargeCenterPage: true,
                                      clipBehavior:
                                          Clip.antiAliasWithSaveLayer),
                                  itemCount: urlImages.length,
                                  itemBuilder: (context, index, realIndex) {
                                    final urlImage = urlImages[index];
                                    return buildImage(urlImage, index);
                                  }),
                            ),
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
      if (states.contains(MaterialState.selected)) {
        return Colors.black.withOpacity(0.54);
      }
      if (states.contains(MaterialState.disabled)) {
        return Colors.grey.shade400;
      }
      return null;
    },
  );
  final MaterialStateProperty<Color?> trackColor =
      MaterialStateProperty.resolveWith<Color?>(
    (Set<MaterialState> states) {
      if (states.contains(MaterialState.selected)) {
        return Colors.white;
      }
      return null;
    },
  );
}
