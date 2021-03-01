import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PromoCard extends StatelessWidget {
  final String name;
  final String desc;
  final String discount;

  PromoCard({this.name = "", this.desc = "", this.discount = ""});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 200,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(20)),
          image: DecorationImage(
              image: AssetImage("assets/coffee-sharing.jpg"),
              fit: BoxFit.cover,
              colorFilter: ColorFilter.srgbToLinearGamma())),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24, vertical: 16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              name,
              style: GoogleFonts.varela(
                  textStyle: TextStyle(
                      color: Color(0xfffffcf2),
                      fontSize: 18,
                      fontWeight: FontWeight.w600)),
            ),
            SizedBox(
              height: 12,
            ),
            Text(
              desc,
              style: GoogleFonts.mukta(
                  textStyle: TextStyle(
                      color: Color(0xfffffcf2),
                      fontSize: 14,
                      height: 1.2,
                      fontWeight: FontWeight.w600)),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              discount,
              style: GoogleFonts.mukta(
                  textStyle: TextStyle(
                      color: Color(0xffccc5b9),
                      fontSize: 22,
                      height: 1.2,
                      fontWeight: FontWeight.bold)),
            ),
          ],
        ),
      ),
    );
  }
}
