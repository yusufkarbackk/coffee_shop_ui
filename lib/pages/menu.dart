import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Menu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        color: Color(0xff252422),
        child: ListView(
          padding: EdgeInsets.symmetric(horizontal: 24, vertical: 24),
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Our Menu",
                  style: GoogleFonts.varela(
                      color: Color(0xFFFFFCF2),
                      fontSize: 28,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 28),
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 190,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('assets/kategori-coffee.jpg'),
                          fit: BoxFit.contain,
                          colorFilter: ColorFilter.srgbToLinearGamma())),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 24),
                      child: Text(
                        "Coffee",
                        style: GoogleFonts.mukta(
                            textStyle: TextStyle(
                                color: Color(0xfffffcf2), fontSize: 32)),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 16,
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 190,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('assets/kategori-foods.jpg'),
                          fit: BoxFit.fill,
                          colorFilter: ColorFilter.srgbToLinearGamma())),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 24),
                      child: Text(
                        "Foods",
                        style: GoogleFonts.mukta(
                            textStyle: TextStyle(
                                color: Color(0xfffffcf2), fontSize: 32)),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 16,
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 190,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('assets/kategiri-others.jpg'),
                          fit: BoxFit.contain,
                          colorFilter: ColorFilter.srgbToLinearGamma())),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 24),
                      child: Text(
                        "Other",
                        style: GoogleFonts.mukta(
                            textStyle: TextStyle(
                                color: Color(0xfffffcf2), fontSize: 32)),
                      ),
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
