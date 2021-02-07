import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          color: Color(0xFF03174C),
          image: DecorationImage(
            fit: BoxFit.fill,
            image: AssetImage('assets/images/welcome.png'),
          ),
        ),
        child: Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height / 6,
            ),
            Text(
              'Welcome to Sleep',
              textAlign: TextAlign.center,
              style: GoogleFonts.lato(
                textStyle: Theme.of(context).textTheme.headline3,
                color: Colors.white,
                fontWeight: FontWeight.w900,
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: 20),
              margin: EdgeInsets.symmetric(
                  horizontal: MediaQuery.of(context).size.width / 7),
              //width: MediaQuery.of(context).size.width / 1.2,
              child: Text(
                'Explore the new kind of sleep. It uses sound and visualization to create perfect conditions for refreshing sleep.',
                style: GoogleFonts.lato(
                    textStyle: Theme.of(context).textTheme.headline6,
                    color: Colors.white,
                    fontWeight: FontWeight.w300,
                    wordSpacing: 2.5,
                    height: 1.4),
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height / 1.8,
            ),
            ElevatedButton(
              onPressed: () {},
              child: Text(
                'Get Started'.toUpperCase(),
                style: GoogleFonts.lato(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  textStyle: Theme.of(context).textTheme.bodyText1,
                  letterSpacing: 1,
                ),
              ),
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(
                  Color(0xFF8E97FD),
                ),
                minimumSize: MaterialStateProperty.all<Size>(
                  Size(MediaQuery.of(context).size.width / 1.15,
                      MediaQuery.of(context).size.height / 15),
                ),
                shape: MaterialStateProperty.all<OutlinedBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
