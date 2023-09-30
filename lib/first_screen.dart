import 'package:exam_app/second_screen.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class FirstScreen extends StatefulWidget {
  static const String routeName = "first Screen";

  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
               padding: const EdgeInsets.symmetric(vertical: 15,horizontal: 10),
               child: Row(
                children: [
                  Image.asset("assets/images/logo.png"),
                  SizedBox(width: 10,),
                  Text(
                    "Moody",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 25,
                        fontWeight: FontWeight.bold),
                  ),
                  Spacer(),
                  Badge(
                    alignment: Alignment.topRight,
                      child: Icon(
                    Icons.notifications_none,
                    size: 30,
                  ))
                ],
            ),
             ),
            Container(
              height: 200,
              margin: EdgeInsets.all(8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                mainAxisSize: MainAxisSize.max,
                children: [
                  Row(
                    children: [
                      Text(
                        "Hello,",
                        style: TextStyle(
                          fontSize: 20,
                        ),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        "Sara Rose",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                    ],
                  ),
                  Text(
                    "How are you feeling today",
                    style: TextStyle(fontSize: 16),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Image.asset("assets/images/Frame 14.png"),
                      Image.asset("assets/images/Frame 19.png"),
                      Image.asset("assets/images/Frame 15.png"),
                      Image.asset("assets/images/Frame 16.png"),
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text("Feature",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                      Spacer(),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: TextButton(onPressed: () {},
                            child: Row(
                              children: [
                                Text("see more",style: TextStyle(color: Colors.green),),
                                SizedBox(width: 5,),
                                Icon(Icons.arrow_forward_ios,size: 16,color: Colors.green,)
                              ],
                            )),
                      ),
                    ],
                  ),
                  CarouselSlider(items: List.generate(3, (index) {
                    return Container(
                      padding: EdgeInsets.symmetric(vertical: 15),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                          color: Color(0xffECFDF3),
                          image: DecorationImage(
                              image: AssetImage("assets/images/Walking the Dog.png"),
                              alignment: Alignment.centerRight,

                          )
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Positive vibes",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 16,color: Colors.grey[700]),),
                          SizedBox(height: 10,),
                          Text('''Boost your mood with
positive vibes''',style: TextStyle(fontSize: 16),),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 15),
                            child: Row(
                              children: [
                                Icon(Icons.play_circle,color: Color(0xff32D583),),
                                SizedBox(width: 5,),
                                Text("10  mins")
                              ],
                            ),
                          )
                        ],
                      ),
                    );
                  }) , options: CarouselOptions(disableCenter: true,enlargeFactor: 1,enlargeCenterPage: true)),
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(Icons.circle,size: 8,),
                      Icon(Icons.circle,size: 8),
                      Icon(Icons.circle,size: 8,),
                    ],
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Container(
                child: Column(
                  children: [
                    Row(
                      children: [
                        Text("Exercise",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                        Spacer(),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: TextButton(
                              onPressed: () {},
                              child: Row(
                                children: [
                                  Text("see more",style: TextStyle(color: Colors.green),),
                                  SizedBox(width: 5,),
                                  Icon(Icons.arrow_forward_ios,size: 16,color: Colors.green,)
                                ],
                              )),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: InkWell(
                            onTap: () {

                            },
                            child: Container(
                              decoration: BoxDecoration(color: Colors.purple[50],borderRadius: BorderRadius.circular(5)),
                              height: 80,
                              padding: EdgeInsets.all(20),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Image.asset("assets/images/Frame.png"),
                                  SizedBox(width: 10,),
                                  Text("Relaxation",style: TextStyle(fontWeight: FontWeight.w500),),
                                ],
                              ),
                            ),
                          ),
                        ),
                        SizedBox(width: 30,),
                        Expanded(
                          child: InkWell(
                            onTap: () {

                            },
                            child: Container(
                              decoration: BoxDecoration(color: Colors.pink[50],borderRadius: BorderRadius.circular(5)),
                              height: 80,
                              padding: EdgeInsets.all(20),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  ImageIcon(AssetImage("assets/images/Vector.png"),color: Colors.pink[300],),
                                  SizedBox(width: 10,),
                                  Text("Meditation",style: TextStyle(fontWeight: FontWeight.w500),),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 20,),
                    Row(
                      children: [
                        Expanded(
                          child: InkWell(
                            onTap: () {

                            },
                            child: Container(
                              decoration: BoxDecoration(color: Colors.orange[50],borderRadius: BorderRadius.circular(5)),
                              height: 80,
                              padding: EdgeInsets.all(20),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  ImageIcon(AssetImage("assets/images/breathing.png"),color: Colors.orange),
                                  SizedBox(width: 10,),
                                  Text("Breathing",style: TextStyle(fontWeight: FontWeight.w500),),
                                ],
                              ),
                            ),
                          ),
                        ),
                        SizedBox(width: 30,),
                        Expanded(
                          child: InkWell(
                            onTap: () {
                              Navigator.pushNamed(context, SecondScreen.routeName);
                            },
                            child: Container(
                              decoration: BoxDecoration(color: Colors.lightBlue[50],borderRadius: BorderRadius.circular(5)),
                              height: 80,
                              padding: EdgeInsets.all(20),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Image.asset("assets/images/yoga2.png"),
                                  SizedBox(width: 10,),
                                  Text("Yoga",style: TextStyle(fontWeight: FontWeight.w500),),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: 0,
          selectedItemColor: Colors.green,
          unselectedItemColor: Colors.black,
          items: [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
              ),
              label: "",
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.grid_view_outlined), label: ""),
            BottomNavigationBarItem(
                icon: Icon(Icons.calendar_today_outlined), label: ""),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: ""),
          ]),
    );
  }
}
