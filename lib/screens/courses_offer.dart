import 'package:flutter/material.dart';
import 'package:student_managment_app_screens/model/courses_model.dart';
import 'package:student_managment_app_screens/screens/back_side_page.dart';

class CoursesOfferPage extends StatefulWidget {
  const CoursesOfferPage({super.key});

  @override
  State<CoursesOfferPage> createState() => _CoursesOfferPageState();
}

class _CoursesOfferPageState extends State<CoursesOfferPage>
    with SingleTickerProviderStateMixin {
  late AnimationController _casAnimationController;

  @override
  void initState() {
    super.initState();
    _casAnimationController =
        AnimationController(vsync: this, duration: Duration(seconds: 5))
          ..repeat();
  }

  @override
  void dispose() {
    _casAnimationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double width = size.width;
    double height = size.height;

    // return Scaffold(
    // body: Column(children: [
    //   Container(
    //     height: height * 0.2,
    //     width: width,
    //     decoration: BoxDecoration(
    //         color: Colors.blueAccent,
    //         borderRadius: BorderRadius.only(
    //             bottomLeft: Radius.circular(5),
    //             bottomRight: Radius.circular(5))),
    //     child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
    //       SizedBox(
    //           height: height * 0.05,
    //           child: Image.asset('assets/images/caslogo.png')),
    //       Text(
    //         'Courses We Offer',
    //         style: TextStyle(shadows: [
    //           BoxShadow(offset: Offset(1, 1), color: Colors.black38)
    //         ]),
    //       )
    //     ]),
    //   )
    // ]),
    // );

// ..........................................................................

    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 228, 225, 224),
      body: Stack(children: [
        Container(
          width: width,
          height: height,
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/images/sky.jpg'),
                  fit: BoxFit.cover)),
        ),
        // AnimatedBackGround(),

        //Second Stack Child

        Column(mainAxisAlignment: MainAxisAlignment.end, children: [
          SizedBox(
            height: height * 0.05,
          ),
          // ROW
          SizedBox(
            width: width,
            height: height * 0.15,
            child: Padding(
              padding: EdgeInsets.only(left: width * 0.05),
              child: Row(children: [
                // TEXT TITLE
                Align(
                  alignment: const Alignment(-0.7, 0.3),
                  child: SizedBox(
                    width: width * 0.55,
                    child: FittedBox(
                      child: Text(
                        'Courses We Offer',
                        style: TextStyle(
                          color: Colors.white,
                          //  fontSize: height * 0.1
                        ),
                      ),
                    ),
                  ),
                ),
                // LOGO CAS
                RotationTransition(
                  turns: _casAnimationController,
                  child: Container(
                    decoration: const BoxDecoration(
                        // color: Colors.amber,
                        borderRadius: BorderRadius.only(
                            // topRight: Radius.circular(70),
                            // bottomLeft: Radius.circular(70)
                            )),
                    child: Align(
                      alignment: const Alignment(0.9, 0.1),
                      child: SizedBox(
                          width: width * 0.25,
                          // height: height * 0.2,
                          child: Image.asset(
                            'assets/images/caslogo.png',
                            fit: BoxFit.cover,
                          )),
                    ),
                  ),
                ),
              ]),
            ),
          ),
          // COURSES CONTAINER
          Align(
            alignment: Alignment.bottomRight,
            child: SizedBox(
                width: width * 0.9,
                height: height * 0.8,
                child: Container(
                  clipBehavior: Clip.antiAlias,
                  // padding: EdgeInsets.only(top: 10),
                  decoration: BoxDecoration(
                      // color: const Color.fromARGB(250, 21, 18, 46),
                      color: Colors.white38,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(width * 0.15))),
                  // LIST OF COURSES
                  child: ListView.builder(
                    itemCount: CoursesModel.cousesDataList.length,
                    itemBuilder: (context, index) {
                      return Padding(
                          padding: EdgeInsets.only(
                              bottom: (height * 0.8) * 0.05,
                              left: (width * 0.85) * 0.08,
                              right: (width * 0.85) * 0.05),
                          // CONTAINER FOR IMAGES
                          child: Container(
                            height: (height * 0.8) * 0.5,
                            decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.circular(height * 0.8) * 0.02,
                                boxShadow: [
                                  BoxShadow(
                                      color: Colors.black26,
                                      offset: Offset(3, 3),
                                      // spreadRadius: 2,
                                      blurRadius: 5),
                                  // BoxShadow(
                                  //     color: Colors.white38,
                                  //     offset: Offset(3, 3),
                                  //     spreadRadius: 2,
                                  //     blurRadius: 2),
                                ],
                                color: Colors.white),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(
                                      top: ((height * 0.8) * 0.01),
                                      left: (width * 0.9) * 0.02,
                                      right: (width * 0.9) * 0.02),
                                  // IMAGE IN CONTAINER
                                  child: SizedBox(
                                      height: ((height * 0.8) * 0.7) * 0.55,
                                      child: Container(
                                        decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(
                                                ((height * 0.8) * 0.7) * 0.0),
                                            // boxShadow: [BoxShadow(offset: Offset(3, 3),color: Colors.black38)],
                                            image: DecorationImage(
                                                image: AssetImage(CoursesModel
                                                    .cousesDataList[index]
                                                    .courseImageUrl),
                                                fit: BoxFit.fill)),
                                      )),
                                ),
                                // TEXT OF IMAGE
                                Padding(
                                  padding: EdgeInsets.only(
                                      top: ((height * 0.8) * 0.02)),
                                  child: FittedBox(
                                    child: Text(
                                      CoursesModel
                                          .cousesDataList[index].courseName,
                                      style: TextStyle(
                                          fontSize:
                                              (((height * 0.8) * 0.7) * 0.5) *
                                                  0.1,
                                          fontWeight: FontWeight.w700,
                                          fontFamily: 'Open Sans',
                                          fontStyle: FontStyle.italic),
                                    ),
                                  ),
                                ),
                                // Dotes for Just Design
                                const Text('. . . . .')
                              ],
                            ),
                          ));
                    },
                  ),
                )),
          ),
        ])
      ]),
    );
  }
}
