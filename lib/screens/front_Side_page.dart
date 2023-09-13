// import 'dart:async';

// import 'package:fan_carousel_image_slider/fan_carousel_image_slider.dart';
import 'package:flutter/material.dart';
import 'package:glassmorphism/glassmorphism.dart';
import 'package:student_managment_app_screens/model/holder.dart';
import 'package:student_managment_app_screens/screens/courses_offer.dart';
import 'package:overlapped_carousel/overlapped_carousel.dart';
import 'package:student_managment_app_screens/screens/workshop_time_tracker_page.dart';

// import '../model/Stories.dart';
import 'SuccessPeopelCardWidget.dart';

class FrontSideOfFirstPage extends StatefulWidget {
  const FrontSideOfFirstPage({super.key});

  @override
  State<FrontSideOfFirstPage> createState() => _FrontSideOfFirstPageState();
}

class _FrontSideOfFirstPageState extends State<FrontSideOfFirstPage>
    with SingleTickerProviderStateMixin {
  late final AnimationController _animationController;

  late final Animation<double> widthFirstAnimatedContainer;
  late final Animation<double> heightFirstAnimatedContainer;
  late final Animation<double> opacityFirstAnimatedContainer;
  late final Animation<AlignmentGeometry> alignFirstAnimatedContainer;
  // late final Animation<AlignmentGeometry> alignSecondAnimatedContainer;
  late final Animation<double> widthSecondAnimatedContainer;
  late final Animation<double> heightSecondAnimatedContainer;
  late final Animation<double> opacitySecondAnimatedContainer;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 700))
      ..addListener(() {
        setState(() {});
      });

    widthFirstAnimatedContainer = Tween<double>(begin: 0.6, end: 0.1).animate(
        CurvedAnimation(
            parent: _animationController, curve: const Interval(0, 0.3)));
    heightFirstAnimatedContainer = Tween<double>(begin: 0.1, end: 0.2).animate(
        CurvedAnimation(
            parent: _animationController, curve: const Interval(0, 0.3)));
    alignFirstAnimatedContainer = Tween<AlignmentGeometry>(
            begin: const Alignment(0.1, 0.3), end: const Alignment(-0.7, 0.3))
        .animate(CurvedAnimation(
            parent: _animationController, curve: const Interval(0, 0.3)));
    opacityFirstAnimatedContainer = Tween<double>(begin: 1, end: 0).animate(
        CurvedAnimation(
            parent: _animationController, curve: const Interval(0, 0.3)));
    widthSecondAnimatedContainer = Tween<double>(begin: 0, end: 0.6).animate(
        CurvedAnimation(
            parent: _animationController, curve: const Interval(0.3, 0.6)));
    heightSecondAnimatedContainer = Tween<double>(begin: 0.02, end: 0.2)
        .animate(CurvedAnimation(
            parent: _animationController, curve: const Interval(0.6, 0.9)));
    // alignSecondAnimatedContainer = Tween<AlignmentGeometry>(begin: Alignment(-0.8, 0.3),end: )
    opacitySecondAnimatedContainer = Tween<double>(begin: 0, end: 1).animate(
        CurvedAnimation(
            parent: _animationController, curve: const Interval(0.9, 1)));
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  onTapOnLinkdin() {
    ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('LinkDin Profile Not Available')));
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Align(
      alignment: Alignment.center,

      // GLASSMARHPIC_CONTAINER
      child: GlassmorphicContainer(
        alignment: AlignmentDirectional.center,
        width: width * 0.9,
        height: height * 0.98,
        border: 2,
        blur: 3,
        borderGradient: const LinearGradient(colors: [
          Colors.white30,
          Colors.black38,
        ]),
        borderRadius: 10,
        linearGradient: const LinearGradient(
          colors: [
            Color.fromARGB(33, 255, 255, 255),
            Color.fromARGB(20, 0, 0, 0),
            Color.fromARGB(33, 255, 255, 255),
          ],
        ),
        // COLUMB
        child:
            Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
          FittedBox(
            child: Text(
              'Well Come',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: height * 0.027,
                  fontWeight: FontWeight.bold),
            ),
          ),
          // SLIDER FOR IMAGES
          // FanCarouselImageSlider(
          //     isClickable: false,
          //     isAssets: true,
          //     imagesLink: listOfImages,
          //     sliderHeight: height * 0.3),

          SizedBox(
            height: height * 0.35,
            width: width,
            child: OverlappedCarousel(
                currentIndex: 10,
                widgets: [
                  Container(
                    width: 200,
                    height: 200,
                    // color: Color.fromARGB(255, 3, 3, 3),
                  ),
                  Container(
                    width: 200,
                    height: 200,
                    // color: const Color.fromARGB(255, 253, 253, 253),
                  ),
                  SuccessPeopleCards(
                      onTap: onTapOnLinkdin,
                      name: DataHolder.storiesList[0].name,
                      currentPosition:
                          DataHolder.storiesList[0].currentPosition,
                      company: DataHolder.storiesList[0].company,
                      imageUrl: DataHolder.storiesList[0].imageUrl),
                  SuccessPeopleCards(
                      onTap: onTapOnLinkdin,
                      name: DataHolder.storiesList[1].name,
                      currentPosition:
                          DataHolder.storiesList[1].currentPosition,
                      company: DataHolder.storiesList[1].company,
                      imageUrl: DataHolder.storiesList[1].imageUrl),
                  SuccessPeopleCards(
                      onTap: onTapOnLinkdin,
                      name: DataHolder.storiesList[2].name,
                      currentPosition:
                          DataHolder.storiesList[2].currentPosition,
                      company: DataHolder.storiesList[2].company,
                      imageUrl: DataHolder.storiesList[2].imageUrl),
                  SuccessPeopleCards(
                      onTap: onTapOnLinkdin,
                      name: DataHolder.storiesList[3].name,
                      currentPosition:
                          DataHolder.storiesList[3].currentPosition,
                      company: DataHolder.storiesList[3].company,
                      imageUrl: DataHolder.storiesList[3].imageUrl),
                  SuccessPeopleCards(
                      onTap: onTapOnLinkdin,
                      name: DataHolder.storiesList[4].name,
                      currentPosition:
                          DataHolder.storiesList[4].currentPosition,
                      company: DataHolder.storiesList[4].company,
                      imageUrl: DataHolder.storiesList[4].imageUrl),
                  SuccessPeopleCards(
                      onTap: onTapOnLinkdin,
                      name: DataHolder.storiesList[5].name,
                      currentPosition:
                          DataHolder.storiesList[5].currentPosition,
                      company: DataHolder.storiesList[5].company,
                      imageUrl: DataHolder.storiesList[5].imageUrl),
                  SuccessPeopleCards(
                      onTap: onTapOnLinkdin,
                      name: DataHolder.storiesList[6].name,
                      currentPosition:
                          DataHolder.storiesList[6].currentPosition,
                      company: DataHolder.storiesList[6].company,
                      imageUrl: DataHolder.storiesList[6].imageUrl),
                  SuccessPeopleCards(
                      onTap: onTapOnLinkdin,
                      name: DataHolder.storiesList[7].name,
                      currentPosition:
                          DataHolder.storiesList[7].currentPosition,
                      company: DataHolder.storiesList[7].company,
                      imageUrl: DataHolder.storiesList[7].imageUrl),
                  SuccessPeopleCards(
                      onTap: onTapOnLinkdin,
                      name: DataHolder.storiesList[8].name,
                      currentPosition:
                          DataHolder.storiesList[8].currentPosition,
                      company: DataHolder.storiesList[8].company,
                      imageUrl: DataHolder.storiesList[8].imageUrl),
                  SuccessPeopleCards(
                      onTap: onTapOnLinkdin,
                      name: DataHolder.storiesList[9].name,
                      currentPosition:
                          DataHolder.storiesList[9].currentPosition,
                      company: DataHolder.storiesList[9].company,
                      imageUrl: DataHolder.storiesList[9].imageUrl),
                  SuccessPeopleCards(
                      onTap: onTapOnLinkdin,
                      name: DataHolder.storiesList[10].name,
                      currentPosition:
                          DataHolder.storiesList[10].currentPosition,
                      company: DataHolder.storiesList[10].company,
                      imageUrl: DataHolder.storiesList[10].imageUrl),
                  SuccessPeopleCards(
                      onTap: onTapOnLinkdin,
                      name: DataHolder.storiesList[12].name,
                      currentPosition:
                          DataHolder.storiesList[12].currentPosition,
                      company: DataHolder.storiesList[12].company,
                      imageUrl: DataHolder.storiesList[12].imageUrl),
                  SuccessPeopleCards(
                      onTap: onTapOnLinkdin,
                      name: DataHolder.storiesList[13].name,
                      currentPosition:
                          DataHolder.storiesList[13].currentPosition,
                      company: DataHolder.storiesList[13].company,
                      imageUrl: DataHolder.storiesList[13].imageUrl),
                  SuccessPeopleCards(
                      onTap: onTapOnLinkdin,
                      name: DataHolder.storiesList[14].name,
                      currentPosition:
                          DataHolder.storiesList[14].currentPosition,
                      company: DataHolder.storiesList[14].company,
                      imageUrl: DataHolder.storiesList[14].imageUrl),
                  SuccessPeopleCards(
                      onTap: onTapOnLinkdin,
                      name: DataHolder.storiesList[15].name,
                      currentPosition:
                          DataHolder.storiesList[15].currentPosition,
                      company: DataHolder.storiesList[15].company,
                      imageUrl: DataHolder.storiesList[15].imageUrl),
                  SuccessPeopleCards(
                      onTap: onTapOnLinkdin,
                      name: DataHolder.storiesList[16].name,
                      currentPosition:
                          DataHolder.storiesList[16].currentPosition,
                      company: DataHolder.storiesList[16].company,
                      imageUrl: DataHolder.storiesList[16].imageUrl),
                  SuccessPeopleCards(
                      onTap: onTapOnLinkdin,
                      name: DataHolder.storiesList[17].name,
                      currentPosition:
                          DataHolder.storiesList[17].currentPosition,
                      company: DataHolder.storiesList[17].company,
                      imageUrl: DataHolder.storiesList[17].imageUrl),
                  SuccessPeopleCards(
                      onTap: onTapOnLinkdin,
                      name: DataHolder.storiesList[18].name,
                      currentPosition:
                          DataHolder.storiesList[18].currentPosition,
                      company: DataHolder.storiesList[18].company,
                      imageUrl: DataHolder.storiesList[18].imageUrl),
                  SuccessPeopleCards(
                      onTap: onTapOnLinkdin,
                      name: DataHolder.storiesList[19].name,
                      currentPosition:
                          DataHolder.storiesList[19].currentPosition,
                      company: DataHolder.storiesList[19].company,
                      imageUrl: DataHolder.storiesList[19].imageUrl),
                  Container(),
                  Container(),
                ],
                onClicked: (index) {}),
          ),

          // TITLE
          FittedBox(
            child: Text(
              'Center For Advance Solution',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: height * 0.027,
                  fontWeight: FontWeight.bold),
            ),
          ),
          // TITLE MESSAGE
          FittedBox(
            child: Text(
              '''Brighten you future by Learning advance 
              Technologies form Here''',
              style: TextStyle(
                color: Colors.white,
                fontSize: height * 0.02,
              ),
              // maxLines: 2,
            ),
          ),

          // ANIMATED LIST BTN
          Stack(
              clipBehavior: Clip.none,
              // alignment: Alignment.center,
              children: [
                // Lower  CONTAINER  OF LIST
                Align(
                  alignment: const Alignment(0.2, 0.3),
                  child: Container(
                      width: width * widthSecondAnimatedContainer.value,
                      height: height * heightSecondAnimatedContainer.value,
                      decoration: BoxDecoration(
                          // color: Color.fromARGB(255, 202, 149, 255),
                          color: Color.fromARGB(181, 60, 183, 197),
                          borderRadius: BorderRadius.only(
                              topRight: Radius.circular(width * 0.1),
                              bottomRight: Radius.circular(width * 0.1))),
                      child: Opacity(
                        opacity: opacitySecondAnimatedContainer.value,
                        child: (Column(
                          children: [
                            // SUPER ADMIN BTN
                            TextButton(
                                onPressed: () {},
                                child: Text(
                                  'Super Admin',
                                  style: TextStyle(
                                      fontSize: (height *
                                              heightSecondAnimatedContainer
                                                  .value) *
                                          0.15,
                                      color: Colors.white),
                                )),
                            // ADMIN BTN
                            TextButton(
                                onPressed: () {},
                                child: Text(
                                  'Admin',
                                  style: TextStyle(
                                      fontSize: (height *
                                              heightSecondAnimatedContainer
                                                  .value) *
                                          0.15,
                                      color: Colors.white),
                                )),
                            // STUDENT BTN
                            TextButton(
                                onPressed: () {},
                                child: Text(
                                  'Student',
                                  style: TextStyle(
                                      fontSize: (height *
                                              heightSecondAnimatedContainer
                                                  .value) *
                                          0.15,
                                      color: Colors.white),
                                )),
                          ],
                        )),
                      )),
                ),
                // UPPER CONTAINER OPENER OF LIST
                GestureDetector(
                  onTap: () {
                    if (_animationController.status ==
                        AnimationStatus.completed) {
                      _animationController.reverse();
                    } else {
                      _animationController.forward();
                    }
                  },
                  // CHOOSE RULE CONTAINER BTN
                  child: Padding(
                    padding: EdgeInsets.only(left: width * 0.15),
                    child: SizedBox(
                      width: width * widthFirstAnimatedContainer.value,
                      height: height * heightFirstAnimatedContainer.value,
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.white70,
                            borderRadius: BorderRadius.only(
                                topRight: Radius.circular(width * 0.2),
                                bottomRight: Radius.circular(width * 0.2)),
                            boxShadow: const [
                              BoxShadow(
                                  offset: Offset(3, 3),
                                  color: Colors.black38,
                                  blurRadius: 1,
                                  spreadRadius: 1),
                              // BoxShadow(
                              //     offset: Offset(-1, -1),
                              //     color: Colors.white70,
                              //     blurRadius: 3,
                              //     spreadRadius: 3),
                            ]),
                        child: Opacity(
                          opacity: opacityFirstAnimatedContainer.value,
                          child: Center(
                              child: FittedBox(
                                  child: Text(
                            'Choose Rule',
                            style: TextStyle(fontSize: (height * 0.1) * 0.3),
                          ))),
                        ),
                      ),
                    ),
                  ),
                ),
              ]),
          // ROW FOR BTNs At Last
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              // CONTACT BUTTON
              OutlinedButton(
                  style: const ButtonStyle(
                      // backgroundColor: MaterialStatePropertyAll(Colors.white),
                      ),
                  onPressed: () {
                    Navigator.push(
                        context,
                        PageRouteBuilder(pageBuilder:
                            (context, animation, secondaryAnimation) {
                          return const WorkShopTimeTrackerPage();
                        }, transitionsBuilder: (BuildContext context,
                            Animation<double> animation,
                            Animation<double> secondaryAnimation,
                            Widget child) {
                          return FadeTransition(
                            opacity: animation,
                            child: RotationTransition(
                              turns: animation,
                              child: child,
                            ),
                          );
                        }));
                  },
                  child: const FittedBox(
                    child: Text(
                      'Contact Us',
                      style: TextStyle(
                        color: Colors.white,
                        // fontSize: height*0.02,
                      ),
                    ),
                  )),

              // COURSES BUTTON
              OutlinedButton(
                  style: const ButtonStyle(
                      backgroundColor: MaterialStatePropertyAll(Colors.white)),
                  onPressed: () {
                    Navigator.push(
                        context,
                        PageRouteBuilder(pageBuilder:
                            (context, animation, secondaryAnimation) {
                          return const CoursesOfferPage();
                        }, transitionsBuilder: (BuildContext context,
                            Animation<double> animation,
                            Animation<double> secondaryAnimation,
                            Widget child) {
                          return FadeTransition(
                            opacity: animation,
                            child: child,
                          );
                        }));
                  },
                  child: const FittedBox(
                    child: Text(
                      'Courses',
                      style: TextStyle(
                          // color: Colors.white,

                          ),
                    ),
                  )),
            ],
          ),
        ]),
      ),
    );
  }
}
