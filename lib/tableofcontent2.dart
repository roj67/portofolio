import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_transition/page_transition.dart';
import 'package:portfolio/contactpart.dart';
import 'package:portfolio/descriptionpart.dart';
import 'package:portfolio/educationpart.dart';
import 'package:portfolio/experiencepart.dart';
import 'package:portfolio/reviewpart.dart';
import 'package:portfolio/skillpart.dart';
import 'package:portfolio/workpart.dart';

import 'colors.dart';
import 'main.dart';

Widget tableOfContent2(BuildContext context) {
  return Drawer(
      backgroundColor: onSurface,
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          const SizedBox(
            height: 15,
          ),
          Center(
            child: Container(
              height: 70,
              child: ListTile(
                  title: Text("Table of Contents",
                      style: GoogleFonts.cherryCreamSoda(
                          color: background, fontSize: 25))),
            ),
          ),
          Divider(
            color: primaryVariant,
          ),
          ListTile(
            title: Text("Welcome",
                style: GoogleFonts.cherryCreamSoda(
                    color: background, fontSize: 20)),
            onTap: () {
              Navigator.push(
                  context,
                  PageTransition(
                      type: PageTransitionType.fade,
                      child: const MyHomePage()));
            },
          ),
          ListTile(
            title: Text("Description",
                style: GoogleFonts.cherryCreamSoda(
                    color: background, fontSize: 20)),
            onTap: () {
              Navigator.push(
                  context,
                  PageTransition(
                      type: PageTransitionType.fade,
                      child: const DescriptionPage()));
            },
          ),
          ListTile(
            title: Text("Skills",
                style: GoogleFonts.cherryCreamSoda(
                    color: background, fontSize: 20)),
            onTap: () {
              Navigator.push(
                  context,
                  PageTransition(
                      type: PageTransitionType.fade,
                      child: const SkillsPage()));
            },
          ),
          ListTile(
            title: Text("Experience",
                style: GoogleFonts.cherryCreamSoda(
                    color: background, fontSize: 20)),
            onTap: () {
              Navigator.push(
                  context,
                  PageTransition(
                      type: PageTransitionType.fade,
                      child: const ExperiencePage()));
            },
          ),
          ListTile(
            title: Text("Works",
                style: GoogleFonts.cherryCreamSoda(
                    color: background, fontSize: 20)),
            onTap: () {
              Navigator.push(
                  context,
                  PageTransition(
                      type: PageTransitionType.fade, child: const WorkPage()));
            },
          ),
          ListTile(
            title: Text("Education",
                style: GoogleFonts.cherryCreamSoda(
                    color: background, fontSize: 20)),
            onTap: () {
              Navigator.push(
                  context,
                  PageTransition(
                      type: PageTransitionType.fade,
                      child: const EducationPage()));
            },
          ),
          ListTile(
            title: Text("Reviews",
                style: GoogleFonts.cherryCreamSoda(
                    color: background, fontSize: 20)),
            onTap: () {
              Navigator.push(
                  context,
                  PageTransition(
                      type: PageTransitionType.fade,
                      child: const ReviewPage()));
            },
          ),
          ListTile(
            title: Text("Contact",
                style: GoogleFonts.cherryCreamSoda(
                    color: background, fontSize: 20)),
            onTap: () {
              Navigator.push(
                  context,
                  PageTransition(
                      type: PageTransitionType.fade,
                      child: const ContactPage()));
            },
          ),
        ],
      ));
}
