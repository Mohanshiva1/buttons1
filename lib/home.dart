import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool switchValueUPS = true;
  bool switchValueRND = true;
  bool switchValueIT = true;

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: const Color(0xff05102C),
      body: Container(
        height: height * 0.7,
        color: Colors.transparent,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            /// Top Text
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/Vector.png',
                  scale: 3.0,
                ),
                Text(
                  '   Department Rooms',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontSize: height * 0.03),
                ),
              ],
            ),

            /// Button Container
            Padding(
              padding: EdgeInsets.symmetric(horizontal: width * 0.01),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ///UPS
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return AlertDialog(
                              insetPadding: EdgeInsets.zero,
                              backgroundColor: Colors.transparent,
                              content: StatefulBuilder(builder:
                                  (BuildContext context, StateSetter setState) {
                                return Container(
                                  margin: EdgeInsets.only(top: height * 0.05),
                                  height: height * 0.6,
                                  width: width * 0.95,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      gradient: const LinearGradient(
                                          begin: Alignment.topCenter,
                                          end: Alignment.bottomCenter,
                                          colors: [
                                            Color(0xff202326),
                                            Color(0xff202326),
                                          ])),
                                  child: Column(
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.symmetric(
                                            vertical: height * 0.028),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Image.asset(
                                              'assets/Vector.png',
                                              scale: 4.0,
                                            ),
                                            const Text(
                                              '   Change Phase for UPS',
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  color: Colors.white),
                                            )
                                          ],
                                        ),
                                      ),
                                      Expanded(
                                        child: GridView(
                                          gridDelegate:
                                              const SliverGridDelegateWithFixedCrossAxisCount(
                                                  crossAxisCount: 2,
                                                  mainAxisSpacing: 10 / 0.5),
                                          children: [
                                            ///RED
                                            buttonContainer(height, width,'RED',Image.asset('assets/Group 1689.png', fit: BoxFit.fitHeight,),const Color(0xffE74444)),

                                            ///YELLOW
                                            buttonContainer(height, width,'YELLOW',Image.asset(
                                              'assets/Group 1690.png',
                                              fit: BoxFit.fitHeight,
                                            ),const Color(0xffFFC90B)),

                                            ///BLUE
                                            buttonContainer(height, width,'BLUE',Image.asset(
                                              'assets/Group 1691.png',
                                              fit: BoxFit.fitHeight,
                                            ),const Color(0xff6150E9)),
                                            ///OFF
                                            buttonContainer(height, width,'OFF',Image.asset(
                                              'assets/Group 1693.png',
                                              fit: BoxFit.fitHeight,
                                            ),Colors.white),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                );
                              }),
                            );
                          },
                        );
                      });
                    },
                    child: Container(
                      height: height * 0.13,
                      width: width * 0.3,
                      decoration: BoxDecoration(
                          color: Colors.red,
                          borderRadius: BorderRadius.circular(20)),
                      child: const Center(
                          child: Text(
                        'UPS',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.white),
                      )),
                    ),
                  ),

                  ///RND
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return AlertDialog(
                              insetPadding: EdgeInsets.zero,
                              backgroundColor: Colors.transparent,
                              content: StatefulBuilder(builder:
                                  (BuildContext context, StateSetter setState) {
                                return Container(
                                  margin: EdgeInsets.only(top: height * 0.05),
                                  height: height * 0.6,
                                  width: width * 0.95,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      gradient: const LinearGradient(
                                          begin: Alignment.topCenter,
                                          end: Alignment.bottomCenter,
                                          colors: [
                                            Color(0xff202326),
                                            Color(0xff202326),
                                          ])),
                                  child: Column(
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.symmetric(
                                            vertical: height * 0.028),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Image.asset(
                                              'assets/Vector.png',
                                              scale: 4.0,
                                            ),
                                            const Text(
                                              '   Change Phase for RND',
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  color: Colors.white),
                                            )
                                          ],
                                        ),
                                      ),
                                      Expanded(
                                        child: GridView(
                                          gridDelegate:
                                              const SliverGridDelegateWithFixedCrossAxisCount(
                                                  crossAxisCount: 2,
                                                  mainAxisSpacing: 10 / 0.5),
                                          children: [
                                            ///RED
                                            buttonContainer(height, width,'RED',Image.asset('assets/Group 1689.png', fit: BoxFit.fitHeight,),const Color(0xffE74444)),

                                            ///YELLOW
                                            buttonContainer(height, width,'YELLOW',Image.asset(
                                              'assets/Group 1690.png',
                                              fit: BoxFit.fitHeight,
                                            ),const Color(0xffFFC90B)),

                                            ///BLUE
                                            buttonContainer(height, width,'BLUE',Image.asset(
                                              'assets/Group 1691.png',
                                              fit: BoxFit.fitHeight,
                                            ),const Color(0xff6150E9)),
                                            ///OFF
                                            buttonContainer(height, width,'OFF',Image.asset(
                                              'assets/Group 1693.png',
                                              fit: BoxFit.fitHeight,
                                            ),Colors.white),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                );
                              }),
                            );
                          },
                        );
                      });
                    },
                    child: Container(
                      height: height * 0.13,
                      width: width * 0.3,
                      decoration: BoxDecoration(
                          color: Colors.red,
                          borderRadius: BorderRadius.circular(20)),
                      child: const Center(
                          child: Text(
                        'RND',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.white),
                      )),
                    ),
                  ),

                  ///IT
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return AlertDialog(
                              insetPadding: EdgeInsets.zero,
                              backgroundColor: Colors.transparent,
                              content: StatefulBuilder(builder:
                                  (BuildContext context, StateSetter setState) {
                                return Container(
                                  margin: EdgeInsets.only(top: height * 0.05),
                                  height: height * 0.6,
                                  width: width * 0.95,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      gradient: const LinearGradient(
                                          begin: Alignment.topCenter,
                                          end: Alignment.bottomCenter,
                                          colors: [
                                            Color(0xff202326),
                                            Color(0xff202326),
                                          ])),
                                  child: Column(
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.symmetric(
                                            vertical: height * 0.028),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Image.asset(
                                              'assets/Vector.png',
                                              scale: 4.0,
                                            ),
                                            const Text(
                                              '   Change Phase for IT',
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  color: Colors.white),
                                            )
                                          ],
                                        ),
                                      ),
                                      Expanded(
                                        child: GridView(
                                          gridDelegate:
                                              const SliverGridDelegateWithFixedCrossAxisCount(
                                                  crossAxisCount: 2,
                                                  mainAxisSpacing: 10 / 0.5),
                                          children: [
                                            ///RED
                                            buttonContainer(height, width,'RED',Image.asset('assets/Group 1689.png', fit: BoxFit.fitHeight,),const Color(0xffE74444)),

                                            ///YELLOW
                                            buttonContainer(height, width,'YELLOW',Image.asset(
                                              'assets/Group 1690.png',
                                              fit: BoxFit.fitHeight,
                                            ),const Color(0xffFFC90B)),

                                            ///BLUE
                                            buttonContainer(height, width,'BLUE',Image.asset(
                                              'assets/Group 1691.png',
                                              fit: BoxFit.fitHeight,
                                            ),const Color(0xff6150E9)),
                                            ///OFF
                                            buttonContainer(height, width,'OFF',Image.asset(
                                              'assets/Group 1693.png',
                                              fit: BoxFit.fitHeight,
                                            ),Colors.white),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                );
                              }),
                            );
                          },
                        );
                      });
                    },
                    child: Container(
                      height: height * 0.13,
                      width: width * 0.3,
                      decoration: BoxDecoration(
                          color: const Color(0xff6450EA),
                          borderRadius: BorderRadius.circular(20)),
                      child: const Center(
                          child: Text(
                        'IT',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.white),
                      ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buttonContainer(double height, double width,String name,Image image,Color color) {
    return Container(
      margin: const EdgeInsets.all(5),
      height: height * 0.15,
      width: width * 0.5,
      // color: Colors.green,
      child: Stack(
        children: [
          Positioned(
              top: 0,
              left: 0,
              right: 0,
              child: image),
          Positioned(
            top: height * 0.12,
            left: 0,
            right: 0,
            child: Center(
              child: Text(
                name,
                style: TextStyle(
                    color: color,
                    fontSize: height * 0.02,
                    fontWeight: FontWeight.w700),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
