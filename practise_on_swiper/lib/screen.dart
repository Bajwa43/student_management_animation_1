import 'package:flutter/material.dart';
import 'package:flutter_swiper_plus/flutter_swiper_plus.dart';
import 'package:practise_on_swiper/Stories.dart';
import 'package:practise_on_swiper/detailScreen.dart';

class Screen extends StatefulWidget {
  const Screen({super.key});

  @override
  State<Screen> createState() => _ScreenState();
}

class _ScreenState extends State<Screen> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.blue,
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [Color(0xFF0050AC), Color(0xFF9354B9)],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter)),
        child: SafeArea(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(32),
              child: Column(
                children: <Widget>[
                  Row(
                    children: const [
                      Text(
                        'Explore',
                        style: TextStyle(
                            fontFamily: 'Avenir',
                            fontSize: 40,
                            color: Color(0xffffffff),
                            fontWeight: FontWeight.w900),
                        textAlign: TextAlign.left,
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      DropdownButton(
                        items: const [
                          DropdownMenuItem(
                            child: Text(
                              'Solar System',
                              style: TextStyle(
                                  fontFamily: 'Avenir',
                                  fontSize: 24,
                                  color: Color(0x7cdbf1ff),
                                  fontWeight: FontWeight.w500),
                              textAlign: TextAlign.left,
                            ),
                          )
                        ],
                        onChanged: (value) {},
                        underline: const SizedBox(),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              height: 500,
              child: Padding(
                padding: const EdgeInsets.only(left: 32.0),
                child: Swiper(
                  itemCount: storiesList.length,
                  fade: 0.3,
                  itemWidth: MediaQuery.of(context).size.width - 2 * 64,
                  layout: SwiperLayout.STACK,
                  pagination: SwiperPagination(
                      builder: DotSwiperPaginationBuilder(
                          activeSize: 20,
                          activeColor: Colors.yellow.shade300,
                          space: 5)),
                  itemBuilder: (context, index) {
                    return InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            PageRouteBuilder(
                              opaque: false,
                              pageBuilder: (context, a, b) => DetailScreen(),
                              transitionsBuilder: (BuildContext context,
                                  Animation<double> animation,
                                  Animation<double> secondaryAnimation,
                                  Widget child) {
                                return FadeTransition(
                                  opacity: animation,
                                  child: child,
                                );
                              },
                            ));
                      },
                      child: Stack(
                        children: <Widget>[
                          Column(
                            children: <Widget>[
                              const SizedBox(
                                height: 100,
                              ),
                              Card(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(32)),
                                elevation: 8,
                                color: Colors.white,
                                child: Padding(
                                  padding: const EdgeInsets.all(32.0),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: <Widget>[
                                      const SizedBox(
                                        height: 100,
                                      ),
                                      Text(
                                        storiesList[index].name.toString(),
                                        style: const TextStyle(
                                            fontSize: 40,
                                            fontFamily: 'Avenir',
                                            color: Color(0xff47455f),
                                            fontWeight: FontWeight.w900),
                                        textAlign: TextAlign.left,
                                      ),
                                      Text(
                                        "Solar System",
                                        style: TextStyle(
                                            fontSize: 23,
                                            fontFamily: 'Avenir',
                                            color: Color(0xFF414C6B),
                                            fontWeight: FontWeight.w400),
                                        textAlign: TextAlign.left,
                                      ),
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(top: 32.0),
                                        child: Row(
                                          children: [
                                            Text(
                                              "Know more",
                                              style: TextStyle(
                                                  fontSize: 16,
                                                  fontFamily: 'Avenir',
                                                  color: Color(0xFFE4979E),
                                                  fontWeight: FontWeight.w400),
                                              textAlign: TextAlign.left,
                                            ),
                                            Icon(
                                              Icons.arrow_forward_rounded,
                                              color: Color(0xFFE4979E),
                                              size: 18,
                                            ),
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              )
                            ],
                          ),
                          Hero(
                              tag: storiesList[1].position,
                              child: Image.asset(
                                  storiesList[index].linkdinProfile))
                        ],
                      ),
                    );
                  },
                ),
              ),
            )
          ],
        )),
      ),
    );
  }
}



/**
 * 
 * Column(
        children: [
          SizedBox(height: height * 0.3),
          Container(
            padding: EdgeInsets.only(
              left: width * 0.15,
            ),
            color: Colors.amber,
            height: height,
            // alignment: Alignment.center,
            child: ColoredBox(
              color: Colors.black,
              child: Swiper(
                itemCount: storiesList.length,
                fade: 0.5,
                // width of cards
                itemWidth: width * 0.6,
                layout: SwiperLayout.STACK,
                // dots yellow
                pagination: SwiperPagination(
                    builder: DotSwiperPaginationBuilder(
                  activeColor: Colors.amber,
                  activeSize: 20,
                  space: 5,
                )),
                itemBuilder: (context, index) {
                  return InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        PageRouteBuilder(
                          opaque: false,
                          pageBuilder:
                              (context, animation, secondaryAnimation) {
                            return DetailScreen();
                          },
                          transitionsBuilder:
                              (context, animation, secondaryAnimation, child) {
                            return FadeTransition(
                              opacity: animation,
                              child: child,
                            );
                          },
                        ),
                      );
                    },
                    child: Stack(
                      children: [
                        Column(
                          children: [
                            SizedBox(
                              height: height * 0.1,
                            ),
                            Card(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.all(
                                    Radius.circular(height * 0.2)),
                              ),
                              // Shadow on lower Cards
                              elevation: 8,
                              color: Colors.white,
                              child: Padding(
                                padding: EdgeInsets.all(width * 0.1),
                                // Texts
                                child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: <Widget>[
                                      SizedBox(
                                        height: height * 0.3,
                                      ),
                                      Text(
                                        storiesList[index].name.toString(),
                                        style: TextStyle(
                                            fontSize: height * 0.07,
                                            // fontFamily: 'Avenir',
                                            color: Color(0xff47455f),
                                            fontWeight: FontWeight.bold),
                                        textAlign: TextAlign.left,
                                      ),
                                      Text(
                                        storiesList[index].company,
                                        style: TextStyle(
                                            fontSize: height * 0.05,
                                            fontFamily: 'Avenir',
                                            color: Color(0xFF414C6B),
                                            fontWeight: FontWeight.w400),
                                        textAlign: TextAlign.left,
                                      ),
                                      Padding(
                                        padding:
                                            EdgeInsets.only(top: height * 0.05),
                                        child: Row(
                                          children: [
                                            Text(
                                              "Know more",
                                              style: TextStyle(
                                                  fontSize: height * 0.045,
                                                  fontFamily: 'Avenir',
                                                  color: Color(0xFFE4979E),
                                                  fontWeight: FontWeight.w400),
                                              textAlign: TextAlign.left,
                                            ),
                                            Icon(
                                              Icons.arrow_forward_rounded,
                                              color: Color(0xFFE4979E),
                                              // weight: 0.9,
                                              size: height * 0.045,
                                            ),
                                          ],
                                        ),
                                      ),
                                    ]),
                              ),
                            ),
                          ],
                        ),
                        Hero(
                            tag: storiesList[1].position,
                            child:
                                Image.asset(storiesList[index].linkdinProfile))
                      ],
                    ),
                  );
                },
              ),
            ),
          ),
        ],
      ),
 */