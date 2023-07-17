import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_transition/page_transition.dart';
import 'package:portfolio/contactpart.dart';
import 'package:portfolio/descriptionpart.dart';
import 'package:portfolio/experiencepart.dart';
import 'package:portfolio/reviewpart.dart';
import 'package:portfolio/skillpart.dart';
import 'package:portfolio/workpart.dart';

import 'colors.dart';
import 'educationpart.dart';
import 'main.dart';

Widget tableofContent(BuildContext context) {
  return Container(
    width: MediaQuery.of(context).size.width,
    height: MediaQuery.of(context).size.height,
    child: Column(
      children: [
        const SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextButton(
              onPressed: () {
                Navigator.push(
                    context,
                    PageTransition(
                        type: PageTransitionType.fade,
                        child: const MyHomePage()));
              },
              child: Text("Welcome",
                  style: GoogleFonts.cherryCreamSoda(
                      color: onSurface, fontSize: 20)),
            ),
            TextButton(
              onPressed: () {
                Navigator.push(
                    context,
                    PageTransition(
                        type: PageTransitionType.fade,
                        child: const DescriptionPage()));
              },
              child: Text("Description",
                  style: GoogleFonts.cherryCreamSoda(
                      color: onSurface, fontSize: 20)),
            ),
            TextButton(
              onPressed: () {
                Navigator.push(
                    context,
                    PageTransition(
                        type: PageTransitionType.fade,
                        child: const SkillsPage()));
              },
              child: Text("Skills",
                  style: GoogleFonts.cherryCreamSoda(
                      color: onSurface, fontSize: 20)),
            ),
            TextButton(
              onPressed: () {
                Navigator.push(
                    context,
                    PageTransition(
                        type: PageTransitionType.fade,
                        child: const ExperiencePage()));
              },
              child: Text("Experience",
                  style: GoogleFonts.cherryCreamSoda(
                      color: onSurface, fontSize: 20)),
            ),
            TextButton(
              onPressed: () {
                Navigator.push(
                    context,
                    PageTransition(
                        type: PageTransitionType.fade,
                        child: const WorkPage()));
              },
              child: Text("Works",
                  style: GoogleFonts.cherryCreamSoda(
                      color: onSurface, fontSize: 20)),
            ),
            TextButton(
              onPressed: () {
                Navigator.push(
                    context,
                    PageTransition(
                        type: PageTransitionType.fade,
                        child: const EducationPage()));
              },
              child: Text("Education",
                  style: GoogleFonts.cherryCreamSoda(
                      color: onSurface, fontSize: 20)),
            ),
            TextButton(
              onPressed: () {
                Navigator.push(
                    context,
                    PageTransition(
                        type: PageTransitionType.fade,
                        child: const ReviewPage()));
              },
              child: Text("Reviews",
                  style: GoogleFonts.cherryCreamSoda(
                      color: onSurface, fontSize: 20)),
            ),
            TextButton(
              onPressed: () {
                Navigator.push(
                    context,
                    PageTransition(
                        type: PageTransitionType.fade,
                        child: const ContactPage()));
              },
              child: Text("Contact",
                  style: GoogleFonts.cherryCreamSoda(
                    color: onSurface,
                    fontSize: 20,
                  )),
            ),
          ],
        ),
      ],
    ),
  );
}
