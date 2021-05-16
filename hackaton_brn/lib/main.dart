import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:meditation_app/constants.dart';
import 'package:meditation_app/screens/Pascal.dart';
import 'package:meditation_app/screens/details_screen.dart';
import 'package:meditation_app/screens/pills.dart';
import 'package:meditation_app/screens/time.dart';
import 'package:meditation_app/widgets/bottom_nav_bar.dart';
import 'package:meditation_app/widgets/category_card.dart';
import 'package:meditation_app/widgets/search_bar.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Meditation App',
      theme: ThemeData(
        fontFamily: "Cairo",
        scaffoldBackgroundColor: kBackgroundColor,
        textTheme: Theme.of(context).textTheme.apply(displayColor: kTextColor),
      ),
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context)
        .size; //this gonna give us total height and with of our device
    return Scaffold(
      bottomNavigationBar: BottomNavBar(),
      body: Stack(
        children: <Widget>[
          Container(
            // Here the height of the container is 45% of our total height
            height: size.height * .45,
            decoration: BoxDecoration(
              color: Color(0xFFF5CEB8),
              image: DecorationImage(
                alignment: Alignment.centerLeft,
                image: AssetImage("assets/images/undraw_pilates_gpdb.png"),
              ),
            ),
          ),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Align(
                    alignment: Alignment.topRight,
                    child: Container(
                      alignment: Alignment.center,
                      height: 52,
                      width: 52,
                      decoration: BoxDecoration(
                        color: Color(0xFFF2BEA1),
                        shape: BoxShape.circle,
                      ),
                      //  child: SvgPicture.asset("assets/icons/menu.svg"),
                    ),
                  ),
                  Text(
                    "Здравствуйте. \n Добро пожаловать",
                    style: Theme.of(context)
                        .textTheme
                        .display1
                        .copyWith(fontWeight: FontWeight.w900),
                  ),
                  SearchBar(),
                  Expanded(
                    child: GridView.count(
                      crossAxisCount: 2,
                      childAspectRatio: .85,
                      crossAxisSpacing: 20,
                      mainAxisSpacing: 20,
                      children: <Widget>[
                        CategoryCard(
                          title: "Прием таблеток",
                          image: "assets/images/таблеткибф.png",
                          // svgSrc: "assets/icons/Hamburger.svg",
                          press: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) {
                                return Pills();
                              }),
                            );
                          },
                        ),
                        CategoryCard(
                          title: "Дневник давления",
                          image: "assets/images/bar.png",
                          //  svgSrc: "assets/icons/Excrecises.svg",

                          press: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) {
                                return Pascal();
                              }),
                            );
                          },
                        ),
                        //  CategoryCard(
                        //    title: "Дневник сахара",
                        //    image: "assets/images/сахар2бф.png",
                        //    // svgSrc: "assets/icons/Meditation.svg",
                        //    press: () {
                        //      Navigator.push(
                        //        context,
                        //        MaterialPageRoute(builder: (context) {
                        //          return DetailsScreen();
                        //        }),
                        //      );
                        //    },
                        //  ),
                        //  CategoryCard(
                        //    title: "Дневник сна",
                        //    //   svgSrc: "assets/icons/yoga.svg",
                        //    image: "assets/images/таблеткибф.png",
                        //    press: () {
                        //      Navigator.push(
                        //        context,
                        //        MaterialPageRoute(builder: (context) {
                        //          return Time();
                        //        }),
                        //      );
                        //    },
                        //  ),
                        //],
                      ],
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
//artem.tanygin@zefirgames.com
