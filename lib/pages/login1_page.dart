import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_codigo5_ui/constants.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class Login1Page extends StatelessWidget {
  const Login1Page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kColorPrimaryLogin,
      body: Stack(
        children: [
          Stack(
            children: [
              Positioned(
                left: 36,
                top: -40,
                child: Transform.rotate(
                  angle: -pi / 3,
                  child: Container(
                    width: 200,
                    height: 60,
                    decoration: BoxDecoration(
                      color: kColorSecondaryLogin,
                      borderRadius: BorderRadius.circular(13.0),
                    ),
                  ),
                ),
              ),
            ],
          ),
          SafeArea(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: 14.0, vertical: 10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 50.0,
                    ),
                    Container(
                      padding: const EdgeInsets.all(18.0),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: kColorSecondaryLogin.withOpacity(0.15),
                      ),
                      child: SvgPicture.asset(
                        'assets/icons/bx-home.svg',
                        color: kColorSecondaryLogin,
                        height: 40,
                      ),
                    ),
                    const SizedBox(
                      height: 34,
                    ),
                    Text(
                      "Let's log you in",
                      style: GoogleFonts.poppins(
                        color: Colors.white,
                        fontSize: 22,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const SizedBox(
                      height: 8.0,
                    ),
                    Text(
                      "Welcome back You've been missed!",
                      style: GoogleFonts.poppins(
                        color: Colors.white38,
                        fontSize: 16.0,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    const SizedBox(
                      height: 40.0,
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: ElevatedButton.icon(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              primary: Color(0xffEA4335),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                            ),
                            icon: SvgPicture.asset(
                              'assets/icons/bx-google.svg',
                              color: Colors.white,
                              height: 17.0,
                            ),
                            label: Container(
                              margin:
                                  const EdgeInsets.symmetric(vertical: 14.0),
                              child: Text(
                                "Google",
                                style: GoogleFonts.poppins(
                                  fontSize: 15.0,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 18.0,
                        ),
                        Expanded(
                          child: ElevatedButton.icon(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              primary: Color(0xff1877F2),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                            ),
                            icon: SvgPicture.asset(
                              'assets/icons/bx-facebook.svg',
                              color: Colors.white,
                              height: 17.0,
                            ),
                            label: Container(
                              margin:
                                  const EdgeInsets.symmetric(vertical: 14.0),
                              child: Text(
                                "Facebook",
                                style: GoogleFonts.poppins(
                                  fontSize: 15.0,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 30.0,
                    ),
                    TextField(
                      decoration: InputDecoration(
                        contentPadding: const EdgeInsets.symmetric(
                            horizontal: 20.0, vertical: 16.0),
                        filled: true,
                        fillColor: kColorTertiaryLogin,
                        hintText: "Username",
                        hintStyle: GoogleFonts.poppins(
                          color: Colors.white60,
                          fontSize: 14.0,
                          fontWeight: FontWeight.w500,
                        ),
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.circular(14.0)),
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.circular(14.0)),
                      ),
                    ),
                    const SizedBox(
                      height: 20.0,
                    ),
                    TextField(
                      decoration: InputDecoration(
                        contentPadding: const EdgeInsets.symmetric(
                            horizontal: 20.0, vertical: 16.0),
                        filled: true,
                        fillColor: kColorTertiaryLogin,
                        hintText: "Email Address",
                        hintStyle: GoogleFonts.poppins(
                          color: Colors.white60,
                          fontSize: 14.0,
                          fontWeight: FontWeight.w500,
                        ),
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.circular(14.0)),
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.circular(14.0)),
                      ),
                    ),
                    const SizedBox(
                      height: 20.0,
                    ),
                    TextField(
                      decoration: InputDecoration(
                        contentPadding: const EdgeInsets.symmetric(
                            horizontal: 20.0, vertical: 16.0),
                        filled: true,
                        fillColor: kColorTertiaryLogin,
                        hintText: "Password",
                        hintStyle: GoogleFonts.poppins(
                          color: Colors.white60,
                          fontSize: 14.0,
                          fontWeight: FontWeight.w500,
                        ),
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.circular(14.0)),
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.circular(14.0)),
                      ),
                    ),
                    const SizedBox(
                      height: 30.0,
                    ),
                    SizedBox(
                      width: double.infinity,
                      height: 54.0,
                      child: ElevatedButton(
                        child: Text(
                          "Sign Up",
                          style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w500
                          ),
                        ),
                        style: ElevatedButton.styleFrom(
                          primary: kColorSecondaryLogin,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(14),
                          ),
                        ),
                        onPressed: () {},
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
