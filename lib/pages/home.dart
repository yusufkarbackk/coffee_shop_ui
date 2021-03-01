import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../widgets/promo_card.dart';
import '../widgets/best_menu_card.dart';
import 'menu.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          color: Color(0xFF252422),
          child: Stack(
            children: [
              ListView(
                scrollDirection: Axis.vertical,
                padding: EdgeInsets.symmetric(horizontal: 24, vertical: 24),
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Welcome, Yusuf",
                          style: GoogleFonts.varela(
                            textStyle: TextStyle(
                              fontSize: 28,
                              color: Color(0xFFFFFCF2),
                              fontWeight: FontWeight.bold,
                            ),
                          )),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "Let's select the best taste for your\nnext coffee drink",
                        style: GoogleFonts.mukta(
                            fontSize: 16,
                            color: Color(0xFFFFFCF2),
                            height: 1.2),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 32,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text("Taste of the week",
                          style: GoogleFonts.oswald(
                            textStyle: TextStyle(
                              fontSize: 20,
                              color: Color(0xFFFFFCF2),
                              fontWeight: FontWeight.bold,
                            ),
                          )),
                      Text("See all",
                          style: GoogleFonts.mukta(
                            textStyle: TextStyle(
                              fontSize: 14,
                              color: Color(0xFFFFFCF2),
                              fontWeight: FontWeight.bold,
                            ),
                          ))
                    ],
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Container(
                    height: 310,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        BestMenuCard(
                          name: "Caramel Macchiato",
                          desc:
                              "Freshly steamed milk with vanilla-flavored syrup marked with espresso and topped with a caramel drizzle for an oh-so-sweet finish.",
                          price: 4.99,
                        ),
                        SizedBox(
                          width: 12,
                        ),
                        BestMenuCard(
                          name: "Caramel Macchiato",
                          desc:
                              "Freshly steamed milk with vanilla-flavored syrup marked with espresso and topped with a caramel drizzle for an oh-so-sweet finish.",
                          price: 4.99,
                        ),
                        SizedBox(
                          width: 12,
                        ),
                        BestMenuCard(
                          name: "Caramel Macchiato",
                          desc:
                              "Freshly steamed milk with vanilla-flavored syrup marked with espresso and topped with a caramel drizzle for an oh-so-sweet finish.",
                          price: 4.99,
                        ),
                        SizedBox(
                          width: 12,
                        ),
                        BestMenuCard(
                          name: "Caramel Macchiato",
                          desc:
                              "Freshly steamed milk with vanilla-flavored syrup marked with espresso and topped with a caramel drizzle for an oh-so-sweet finish.",
                          price: 4.99,
                        ),
                        SizedBox(
                          width: 12,
                        ),
                        BestMenuCard(
                          name: "Caramel Macchiato",
                          desc:
                              "Freshly steamed milk with vanilla-flavored syrup marked with espresso and topped with a caramel drizzle for an oh-so-sweet finish.",
                          price: 4.99,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 32),
                  Text(
                    "Promo of The Week",
                    style: GoogleFonts.oswald(
                        textStyle:
                            TextStyle(fontSize: 20, color: Color(0xFFFFFCF2))),
                  ),
                  SizedBox(height: 20),
                  PromoCard(
                    name: "Sharing Of The Day",
                    desc:
                        "Share with the people you love, start their day with a cup of coffee and live through the day with passion",
                    discount: "35% Discount For 3 purchases",
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  PromoCard(
                    name: "Sharing Of The Day",
                    desc:
                        "Share with the people you love, start their day with a cup of coffee and live through the day with passion",
                    discount: "35% Discount For 3 purchases",
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
