import 'package:flutter/material.dart';

class SecondScreen extends StatefulWidget {
  static const String routeName = "Second Screen";

  const SecondScreen({super.key});

  @override
  State<SecondScreen> createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(32),
          child: Column(
            children: [
              const Row(
                children: [
                  Image(image: AssetImage("assets/images/Ellipse 10.png")),
                  SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Hello, Jade",
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.w400)),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "Ready to Workout?",
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.w600),
                        ),
                      ],
                    ),
                  ),
                  Badge(
                      child: Icon(
                    Icons.notifications_none,
                    size: 30,
                  )),
                ],
              ),
              const SizedBox(height: 20,),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      padding: const EdgeInsets.all(12),
                      height: 85,
                      decoration: BoxDecoration(
                          color: const Color(0xffF8F9FC),
                          borderRadius: BorderRadius.circular(8)),
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Expanded(
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    ImageIcon(
                                        AssetImage("assets/images/heart.png"),
                                        size: 30),
                                    Text(
                                      "Heart Rate",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w400,
                                          fontSize: 12),
                                    ),
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      "81",
                                      style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.w600),
                                    ),
                                    SizedBox(
                                      width: 2,
                                    ),
                                    Text(
                                      "BPM",
                                      style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w500),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                          VerticalDivider(thickness: 1, width: 1, color: Color(0xffD9D9D9), endIndent: 5, indent: 5,),
                          Expanded(
                            child: Column(
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    ImageIcon(
                                        AssetImage("assets/images/Icon.png"),
                                        size: 30),
                                    Text(
                                      "To-Do",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w400,
                                          fontSize: 12),
                                    ),
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      "32,5",
                                      style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.w600),
                                    ),
                                    SizedBox(
                                      width: 2,
                                    ),
                                    Text(
                                      "%",
                                      style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w500),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                          VerticalDivider(thickness: 1, width: 1, color: Color(0xffD9D9D9), endIndent: 5, indent: 5,),
                          Expanded(
                            child: Column(
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    ImageIcon(
                                        AssetImage("assets/images/flame.png"),
                                        size: 30),
                                    Text(
                                      "Calo",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w400,
                                          fontSize: 12),
                                    ),
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      "1000",
                                      style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.w600),
                                    ),
                                    SizedBox(
                                      width: 2,
                                    ),
                                    Text(
                                      "Cal",
                                      style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w500),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 30,),
                    const Text("Workout Programs", style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),),
                    const SizedBox(height: 30,),
                    const TabBar(
                      indicatorColor: Color(0xff363F72),
                      labelStyle: TextStyle(color: Color(0xff363F72), fontWeight: FontWeight.w500, fontSize: 16),
                      labelColor: Color(0xff667085),
                      isScrollable: true,
                      unselectedLabelStyle: TextStyle(color: Color(0xff667085), fontWeight: FontWeight.w400, fontSize: 16),
                      unselectedLabelColor: Color(0xff363F72),
                      dividerColor: Color(0xff363F72),
                      tabAlignment: TabAlignment.center,
                      tabs: [
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text("All Type",),
                        ),
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text("Full Body",),
                        ),
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text("Upper",),
                        ),
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text("Lower",),
                        ),
                      ],
                    ),
                    Expanded(
                      child: ListView(
                        children: [
                          Container(
                            height: 200,
                            padding: const EdgeInsets.symmetric(vertical: 24,horizontal: 16),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                color: const Color(0xffEAECF5),
                                image: const DecorationImage(
                                  image: AssetImage(
                                      "assets/images/yoga3.png"),
                                  alignment: Alignment.centerRight,
                                )),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  padding: const EdgeInsets.symmetric(vertical: 8,horizontal: 12),
                                  decoration: BoxDecoration(color: const Color(0xffFCFCFD),borderRadius: BorderRadius.circular(100)),
                                  child: const Text("7 days",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w500),),
                                ),
                                const SizedBox(height: 10,),
                                const Text(
                                  "Morning Yoga",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 20,
                                  ),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                const Text("Improve mental focus",style: TextStyle(fontSize: 12,fontWeight: FontWeight.w400),),
                                const Padding(
                                  padding:
                                      EdgeInsets.symmetric(vertical: 15),
                                  child: Row(
                                    children: [
                                      Icon(
                                        Icons.access_time,
                                        color: Color(0xff101828),
                                      ),
                                      SizedBox(
                                        width: 5,
                                      ),
                                      Text("30  mins")
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                          const SizedBox(height: 20,),
                          Container(
                            height: 200,
                            padding: const EdgeInsets.symmetric(vertical: 24,horizontal: 16),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                color: const Color(0xffEAECF5),
                                image: const DecorationImage(
                                  image: AssetImage(
                                      "assets/images/pngwing 1.png"),
                                  alignment: Alignment.centerRight,
                                )),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  padding: const EdgeInsets.symmetric(vertical: 8,horizontal: 12),
                                  decoration: BoxDecoration(color: const Color(0xffFCFCFD),borderRadius: BorderRadius.circular(100)),
                                  child: const Text("3 days",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w500),),
                                ),
                                const SizedBox(height: 10,),
                                const Text(
                                  "Plank Exercise",
                                  style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 20,
                                  ),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                const Text("Improve posture and stability",style: TextStyle(fontSize: 12,fontWeight: FontWeight.w400),),
                                const Padding(
                                  padding:
                                  EdgeInsets.symmetric(vertical: 15),
                                  child: Row(
                                    children: [
                                      Icon(
                                        Icons.access_time,
                                        color: Color(0xff101828),
                                      ),
                                      SizedBox(
                                        width: 5,
                                      ),
                                      Text("30  mins")
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                          const SizedBox(height: 20,),
                          Container(
                            height: 200,
                            padding: const EdgeInsets.symmetric(vertical: 24,horizontal: 16),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                color: const Color(0xffEAECF5),
                                image: const DecorationImage(
                                  image: AssetImage(
                                      "assets/images/yoga3.png"),
                                  alignment: Alignment.centerRight,
                                )),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  padding: const EdgeInsets.symmetric(vertical: 8,horizontal: 12),
                                  decoration: BoxDecoration(color: const Color(0xffFCFCFD),borderRadius: BorderRadius.circular(100)),
                                  child: const Text("7 days",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w500),),
                                ),
                                const SizedBox(height: 10,),
                                const Text(
                                  "Morning Yoga",
                                  style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 20,
                                  ),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                const Text("Improve mental focus",style: TextStyle(fontSize: 12,fontWeight: FontWeight.w400),),
                                const Padding(
                                  padding:
                                  EdgeInsets.symmetric(vertical: 15),
                                  child: Row(
                                    children: [
                                      Icon(
                                        Icons.access_time,
                                        color: Color(0xff101828),
                                      ),
                                      SizedBox(
                                        width: 5,
                                      ),
                                      Text("30  mins")
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
            currentIndex: 0,
            selectedItemColor: const Color(0xff363F72),
            unselectedItemColor: const Color(0xff667085),
            
            items: [
              const BottomNavigationBarItem(
                icon: Icon(
                  Icons.home,
                ),
                label: "",
              ),
              BottomNavigationBarItem(
                  icon: Image.asset("assets/images/navigation-pointer-01.png"),
                  label: ""),
              const BottomNavigationBarItem(
                  icon: Icon(Icons.bar_chart), label: ""),
              const BottomNavigationBarItem(icon: Icon(Icons.person), label: ""),
            ]),
      ),
    );
  }
}
