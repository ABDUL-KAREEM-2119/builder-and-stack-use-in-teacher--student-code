import 'package:builder_stacke_1/king.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  late double height, width;
  PageController kareem = PageController();
  int index = 0;

  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Container(
        height: height,
        width: width,
        color: Colors.white,
        child: Column(
          children: [
            Expanded(
              child: PageView(
                controller: kareem,
                onPageChanged: (value) {
                  setState(() {
                    index = value;
                  });
                },
                children: [
                  Container(
                    color: Colors.white,
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(22),
                          child: Row(
                            children: [
                              Icon(Icons.arrow_back_ios),
                              Text("Back"),
                            ],
                          ),
                        ),
                        Stack(
                          children: [
                            Container(
                              height: height * 0.84,
                              width: width,
                              decoration: BoxDecoration(
                                color: Color.fromARGB(255, 8, 68, 118),
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(35),
                                  topRight: Radius.circular(35),
                                ),
                              ),
                              child: Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        right: 250, top: 15),
                                    child: Text(
                                      "Manage Leave",
                                      style: TextStyle(
                                        fontSize: 18,
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                  SizedBox(height: height * 0.02),
                                  Container(
                                    height: height * 0.054,
                                    width: width * 0.87,
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(35)),
                                    ),
                                    child: Row(
                                      children: [
                                        SizedBox(width: width * 0.05),
                                        Icon(Icons.search),
                                        SizedBox(width: width * 0.01),
                                        Text("Search....."),
                                      ],
                                    ),
                                  ),
                                  SizedBox(height: height * 0.024),
                                  Container(
                                    height: height * 0.08,
                                    width: width * 0.88,
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(20)),
                                    ),
                                    child: Row(
                                      children: [
                                        SizedBox(width: width * 0.3),
                                        Container(
                                          height: height * 0.03,
                                          width: width * 0.2,
                                           color: Color.fromARGB(255, 16, 87, 146),
                                          child: Center(
                                            child: Text(
                                              " Leave ",
                                              style: TextStyle(
                                                  color: Colors.white),
                                            ),
                                          ),
                                        ),
                                        Container(
                                          height: height * 0.03,
                                          width: width * 0.07,
                                          color: Colors.grey,
                                          child: Icon(Icons.person_2_outlined),
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(height: height * 0.02),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 94, left: 20),
                              child: Container(
                                height: height * 0.08,
                                width: width * 0.06,
                                decoration: BoxDecoration(
                                  color: Color.fromARGB(255, 8, 68, 118),
                                  shape: BoxShape.circle,
                                ),
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(top: 94, left: 405),
                              child: Container(
                                height: height * 0.08,
                                width: width * 0.06,
                                decoration: BoxDecoration(
                                  color: Color.fromARGB(255, 8, 68, 118),
                                  shape: BoxShape.circle,
                                ),
                              ),
                            ),





                            
                            Padding(
                              padding: const EdgeInsets.only(top: 210),
                              child: Container(
                                height: height * 0.65,
                                width: width,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(40),
                                    topRight: Radius.circular(40),
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(top: 200, left: 75),
                              child: Row(
                                children: [
                                  Container(
                                    height: height * 0.036,
                                    width: width * 0.3,
                                    color: Colors.grey,
                                    child: Center(
                                      child: Text(
                                        "Teacher",
                                        style: TextStyle(color: Colors.white),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    height: height * 0.036,
                                    width: width * 0.3,
                                    color: Color.fromARGB(255, 16, 87, 146),
                                    child: Center(
                                      child: Text(
                                        "Students",
                                        style: TextStyle(color: Colors.white),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(top: 230, left: 30),
                              child: Container(
                                height: height * 0.627,
                                width: width * 0.9,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(70),
                                    topRight: Radius.circular(70),
                                  ),
                                ),
                                child: ListView.builder(
                                  itemCount: khan.mylist.length,
                                  itemBuilder: (context, index) {
                                    return Container(
                                      height: height * 0.09,
                                      width: width * 0.9,
                                      decoration: BoxDecoration(
                                        color: khan.mylist[index].color,
                                        border: Border(
                                            bottom:
                                                BorderSide(color: Colors.grey)),
                                      ),
                                      child: Row(
                                        children: [
                                          Container(
                                            height: height * 0.09,
                                            width: width * 0.12,
                                            decoration: BoxDecoration(
                                              image: DecorationImage(
                                                image: AssetImage(
                                                  khan.mylist[index].img!,
                                                ),
                                                fit: BoxFit.cover,
                                              ),
                                              shape: BoxShape.circle,
                                              color: Colors.white,
                                            ),
                                          ),
                                          Expanded(
                                            child: Padding(
                                              padding:
                                                  const EdgeInsets.all(8.0),
                                              child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  SizedBox(
                                                    height: height * 0.01,
                                                  ),
                                                  Text(
                                                    "${khan.mylist[index].name!}",
                                                    style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.bold,
                                                    ),
                                                  ),
                                                  Text(khan.mylist[index].msg!),
                                                ],
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                right: 15),
                                            child: Icon(Icons.more_horiz),
                                          ),
                                        ],
                                      ),
                                    );
                                  },
                                ),
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(top: 670, left: 30),
                              child: Container(
                                height: height * 0.06,
                                width: width * 0.902,
                                decoration: BoxDecoration(
                                  color: Colors.grey,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(30)),
                                ),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    InkWell(
                                      onTap: () {
                                        kareem.jumpToPage(0);
                                        setState(() {
                                          index = 0;
                                        });
                                      },
                                      child: Icon(
                                        Icons.home,
                                        color: index == 0
                                            ? Colors.white
                                            : Colors.black,
                                      ),
                                    ),
                                    InkWell(
                                      onTap: () {
                                        kareem.jumpToPage(1);
                                        setState(() {
                                          index = 1;
                                        });
                                      },
                                      child: Icon(
                                        Icons.add_circle_outline,
                                        color: index == 1
                                            ? Colors.white
                                            : Colors.black,
                                      ),
                                    ),
                                    InkWell(
                                      onTap: () {
                                        kareem.jumpToPage(2);
                                        setState(() {
                                          index = 2;
                                        });
                                      },
                                      child: Icon(
                                        Icons.person_2_outlined,
                                        color: index == 2
                                            ? Colors.white
                                            : Colors.black,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Container(color: Colors.green),
                  Container(color: Colors.pink),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}












//  body: Container(
//         height: height,
//         width: width,
//         color: Colors.white,
//         child: Column(
//           children: [
//             Expanded(
//               child: Container(
//                 height: height,
//                 width: width,
//                 color: Colors.blue,
//                 child: PageView(
//                   controller: kareem,
//                   onPageChanged: (value) {
//                     setState(() {
//                       index = value;
//                     });
//                   },
//                   children: [
//                     Container(
//                       color: Colors.white,
//                       child: Column(
//                         children: [
//                           Padding(
//                             padding: const EdgeInsets.all(22),
//                             child: Row(
//                               children: [
//                                 Icon(Icons.arrow_back_ios),
//                                 Text("Back"),
//                               ],
//                             ),
//                           ),
//                           Stack(
//                             children: [
//                               Container(
//                                 height: height * 0.84,
//                                 width: width,
//                                 decoration: BoxDecoration(
//                                   color: Color.fromARGB(255, 8, 68, 118),
//                                   borderRadius: BorderRadius.only(
//                                     topLeft: Radius.circular(35),
//                                     topRight: Radius.circular(35),
//                                   ),
//                                 ),
//                                 child: Column(
//                                   children: [
//                                     Padding(
//                                       padding: const EdgeInsets.only(
//                                           right: 250, top: 15),
//                                       child: Text(
//                                         "Manage Events",
//                                         style: TextStyle(
//                                           fontSize: 18,
//                                           color: Colors.white,
//                                           fontWeight: FontWeight.bold,
//                                         ),
//                                       ),
//                                     ),
//                                     SizedBox(height: height * 0.01),
//                                     Container(
//                                       height: height * 0.18,
//                                       width: width * 0.88,
//                                       decoration: BoxDecoration(
//                                         color: Colors.white,
//                                         borderRadius: BorderRadius.all(
//                                             Radius.circular(20)),
//                                       ),
//                                       child: Column(
//                                         children: [
//                                           SizedBox(height: height * 0.01),
//                                           Container(
//                                             height: height * 0.04,
//                                             width: width * 0.28,
//                                             color: Colors.blue,
//                                             child: Row(
//                                               children: [
//                                                 SizedBox(width: width * 0.015),
//                                                 Icon(Icons.home),
//                                                 Text("Add Element"),
//                                               ],
//                                             ),
//                                           ),
//                                           SizedBox(height: height * 0.03),
//                                           Row(
//                                             children: [
//                                               SizedBox(width: width * 0.27),
//                                               Container(
//                                                 height: height * 0.003,
//                                                 width: width * 0.15,
//                                                 color: Colors.grey,
//                                               ),
//                                               SizedBox(width: width * 0.02),
//                                               Text("Or"),
//                                               SizedBox(width: width * 0.02),
//                                               Container(
//                                                 height: height * 0.003,
//                                                 width: width * 0.15,
//                                                 color: Colors.grey,
//                                               ),
//                                             ],
//                                           ),
//                                           SizedBox(height: height * 0.02),
//                                           Row(
//                                             children: [
//                                               SizedBox(width: width * 0.23),
//                                               Text("Switch Button Theme"),
//                                               SizedBox(width: width * 0.04),
//                                               Container(
//                                                 height: height * 0.025,
//                                                 width: width * 0.063,
//                                                 color: Colors.grey,
//                                                 child: Text(
//                                                   "ON",
//                                                   style: TextStyle(
//                                                       color: Colors.white),
//                                                 ),
//                                               ),
//                                               Container(
//                                                 height: height * 0.025,
//                                                 width: width * 0.067,
//                                                 color: Colors.blue,
//                                                 child: Text(
//                                                   "OFF",
//                                                   style: TextStyle(
//                                                       color: Colors.white),
//                                                 ),
//                                               ),
//                                             ],
//                                           ),
//                                         ],
//                                       ),
//                                     ),
//                                     SizedBox(height: height * 0.02),
//                                   ],
//                                 ),
//                               ),
//                               Padding(
//                                 padding:
//                                     const EdgeInsets.only(top: 90, left: 20),
//                                 child: Container(
//                                   height: height * 0.08,
//                                   width: width * 0.06,
//                                   decoration: BoxDecoration(
//                                   color: Color.fromARGB(255, 8, 68, 118),
//                                     shape: BoxShape.circle,
//                                   ),
//                                 ),
//                               ),
//                               Padding(
//                                 padding:
//                                     const EdgeInsets.only(top: 90, left: 405),
//                                 child: Container(
//                                   height: height * 0.08,
//                                   width: width * 0.06,
//                                   decoration: BoxDecoration(
//                                    color: Color.fromARGB(255, 8, 68, 118),
//                                     shape: BoxShape.circle,
//                                   ),
//                                 ),
//                               ),
//                               Padding(
//                                 padding: const EdgeInsets.only(top: 230),
//                                 child: Container(
//                                   height: height * 0.6265,
//                                   width: width,
//                                   decoration: BoxDecoration(
//                                     color: Colors.white,
//                                     borderRadius: BorderRadius.only(
//                                       topLeft: Radius.circular(40),
//                                       topRight: Radius.circular(40),
//                                     ),
//                                   ),
//                                 ),
//                               ),
//                               Padding(
//                                 padding:
//                                     const EdgeInsets.only(top: 250, left: 40),
//                                 child: Text(
//                                   "Up Coming",
//                                   style: TextStyle(
//                                     fontSize: 16,
//                                     fontWeight: FontWeight.bold,
//                                   ),
//                                 ),
//                               ),
//                               Padding(
//                                 padding:
//                                     const EdgeInsets.only(top: 275, left: 30),
//                                 child: Container(
//                                   height: height * 0.57,
//                                   width: width * 0.9,
//                                   decoration: BoxDecoration(
//                                       borderRadius: BorderRadius.only(
//                                           topLeft: Radius.circular(70),
//                                           topRight: Radius.circular(70))),
//                                   child: ListView(
//                                     scrollDirection: Axis.vertical,
//                                     children: [
//                                       Container(
//                                         height: height * 0.2,
//                                         width: width * 0.1,
//                                         decoration: BoxDecoration(
//                                             image: DecorationImage(
//                                                 image:
//                                                     AssetImage("images/sing.jpg"),
//                                                 fit: BoxFit.cover),
//                                             borderRadius: BorderRadius.all(
//                                                 Radius.circular(25))),
//                                       ),
//                                       SizedBox(
//                                         height: height * 0.016,
//                                       ),
//                                       Container(
//                                         height: height * 0.2,
//                                         width: width * 0.1,
//                                         decoration: BoxDecoration(
//                                             image: DecorationImage(
//                                                 image:
//                                                     AssetImage("images/girl.jpeg"),
//                                                 fit: BoxFit.cover),
//                                             borderRadius: BorderRadius.all(
//                                                 Radius.circular(25))),
//                                       ),
//                                       SizedBox(
//                                         height: height * 0.016,
//                                       ),
//                                       Container(
//                                         height: height * 0.2,
//                                         width: width * 0.1,
//                                         decoration: BoxDecoration(
//                                             image: DecorationImage(
//                                                 image:
//                                                     AssetImage("images/bb.jpg"),
//                                                 fit: BoxFit.cover),
//                                             borderRadius: BorderRadius.all(
//                                                 Radius.circular(25))),
//                                       ),
//                                       SizedBox(
//                                         height: height * 0.016,
//                                       ),
//                                       Container(
//                                         height: height * 0.2,
//                                         width: width * 0.1,
//                                         decoration: BoxDecoration(
//                                             image: DecorationImage(
//                                                 image:
//                                                     AssetImage("images/girl.jpeg"),
//                                                 fit: BoxFit.cover),
//                                             borderRadius: BorderRadius.all(
//                                                 Radius.circular(25))),
//                                       ),
//                                       SizedBox(
//                                         height: height * 0.016,
//                                       ),
//                                       Container(
//                                         height: height * 0.2,
//                                         width: width * 0.1,
//                                         decoration: BoxDecoration(
//                                             image: DecorationImage(
//                                                 image:
//                                                     AssetImage("images/event.jpg"),
//                                                 fit: BoxFit.cover),
//                                             borderRadius: BorderRadius.all(
//                                                 Radius.circular(25))),
//                                       ),

//                                       SizedBox(
//                                         height: height * 0.016,
//                                       ),
//                                       Container(
//                                         height: height * 0.2,
//                                         width: width * 0.1,
//                                         decoration: BoxDecoration(
//                                             image: DecorationImage(
//                                                 image:
//                                                     AssetImage("images/music.jpg"),
//                                                 fit: BoxFit.cover),
//                                             borderRadius: BorderRadius.all(
//                                                 Radius.circular(25))),
//                                       ),
//                                     ],
//                                   ),
//                                 ),
//                               ),
//                               Padding(
//                                 padding: const EdgeInsets.only(top: 666,left: 30),
//                                 child: Container(
//                                   height: height * 0.06,
//                                   width: width * 0.902,
//                                   decoration: BoxDecoration(
//                                     color: Colors.white,
//                                     borderRadius:
//                                         BorderRadius.all(Radius.circular(30)),
//                                   ),
//                                   child: Row(
//                                     mainAxisAlignment:
//                                         MainAxisAlignment.spaceAround,
//                                     children: [
//                                       InkWell(
//                                         onTap: () {
//                                           kareem.jumpToPage(0);
//                                           setState(() {
//                                             index = 0;
//                                           });
//                                         },
//                                         child: Icon(
//                                           Icons.home,
//                                           color: index == 0
//                                               ? Colors.black
//                                               : Colors.grey,
//                                         ),
//                                       ),
//                                       InkWell(
//                                         onTap: () {
//                                           kareem.jumpToPage(1);
//                                           setState(() {
//                                             index = 1;
//                                           });
//                                         },
//                                         child: Icon(
//                                           Icons.add_circle_outline,
//                                           color: index == 1
//                                               ? Colors.black
//                                               : Colors.grey,
//                                         ),
//                                       ),
//                                       InkWell(
//                                         onTap: () {
//                                           kareem.jumpToPage(2);
//                                           setState(() {
//                                             index = 2;
//                                           });
//                                         },
//                                         child: Icon(
//                                           Icons.person_2_outlined,
//                                           color: index == 2
//                                               ? Colors.black
//                                               : Colors.grey,
//                                         ),
//                                       ),
//                                     ],
//                                   ),
//                                 ),
//                               ),
//                             ],
//                           ),
//                         ],
//                       ),
//                     ),
//                     Container(
//                       color: Colors.green,
//                     ),
//                     Container(
//                       color: Colors.pink,
//                     ),
//                   ],
//                 ),
//               ),
//             ),

//           ],
//         ),
//       ),
//     );
//   }
// }
