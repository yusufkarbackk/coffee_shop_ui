import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BestMenuCard extends StatefulWidget {
  final String name;
  final String desc;
  final double price;
  Color favColor = Colors.black;
  BestMenuCard({this.name, this.desc, this.price});
  @override
  _BestMenuCardState createState() => _BestMenuCardState();
}

class _BestMenuCardState extends State<BestMenuCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        children: [
          Column(
            children: [
              Container(
                width: 220,
                height: 230,
                padding: EdgeInsets.symmetric(horizontal: 10),
                decoration: BoxDecoration(
                  color: Color(0xffccc5b9),
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      child: Text(
                        widget.name,
                        maxLines: 3,
                        style: GoogleFonts.oswald(
                            textStyle: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.w600,
                          color: (Color(0xff403d39)),
                        )),
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Text(
                      widget.desc,
                      overflow: TextOverflow.ellipsis,
                      maxLines: 3,
                      style: GoogleFonts.mukta(
                          textStyle: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w600,
                              letterSpacing: 0.5,
                              height: 1.2,
                              color: Color(0xfffffcf2))),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Row(
                          children: [
                            Text("\$"),
                            Text(
                              widget.price.toString(),
                              style: GoogleFonts.openSans(
                                  textStyle: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                      color: Color(0xff252422))),
                            )
                          ],
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              widget.favColor = Colors.red;
                            });
                          },
                          child: Icon(
                            Icons.favorite,
                            size: 34,
                            color: widget.favColor,
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(height: 30),
              RaisedButton(
                onPressed: () {
                  widget.favColor = Colors.red;
                },
                shape: StadiumBorder(),
                padding: EdgeInsets.symmetric(horizontal: 75),
                color: Color(0xffeb5e28),
                child: Text(
                  "Order Now",
                  style: GoogleFonts.mukta(
                      textStyle: TextStyle(
                          color: Color(0xFFfffcf2),
                          fontWeight: FontWeight.w500)),
                ),
              )
            ],
          ),
          Positioned(
            top: 130,
            child: Container(
              width: 85,
              height: 85,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/coffee_cup.png"),
                      fit: BoxFit.contain)),
            ),
          ),
        ],
      ),
    );
  }
}
