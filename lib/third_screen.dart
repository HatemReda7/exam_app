import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:google_fonts/google_fonts.dart';

class ThirdScreen extends StatelessWidget {
  static const String routeName="Third Screen";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(32),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Center(
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                  ImageIcon(AssetImage("assets/images/flower.png",),color: Color(0xffC9B4FF),),
                  SizedBox(width: 5,),
                  Text("AliceCare",style: GoogleFonts.milonga(fontSize: 24,fontWeight: FontWeight.w400),)
                ],
                ),
              ),
              SizedBox(height: 20,),
              TextFormField(
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.search),
                  hintText: "Articles, Video, Audio and More,...",
                  hintStyle: TextStyle(color: Colors.grey,fontSize: 16,fontWeight: FontWeight.w400,),
                  border: OutlineInputBorder(borderSide: BorderSide(width: 2,color: Colors.grey),borderRadius: BorderRadius.circular(12))
                ),
              ),
              SizedBox(height: 20,),
              Container(
                height: 45,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    ChoiceChip(
                      padding: EdgeInsets.symmetric(vertical: 8,horizontal: 16),
                      label: Text("Discover",
                        style: GoogleFonts.inter(fontSize: 16,fontWeight: FontWeight.w500,color: Color(0xff6941C6)),),
                      selected: true,
                      selectedColor: Color(0xffF4EBFF),
                      avatarBorder: OutlineInputBorder(borderSide: BorderSide(width: 2,color: Color(0xff6941C6))),
                      selectedShadowColor: Colors.transparent,
                      color: MaterialStatePropertyAll(Color(0xff6941C6)),
                    ),
                    SizedBox(width: 8,),
                    ChoiceChip(
                      padding: EdgeInsets.symmetric(vertical: 8,horizontal: 16),
                      label: Text("News",
                        style: GoogleFonts.inter(fontSize: 16,fontWeight: FontWeight.w500,color: Color(0xff667085)),),
                      selected: false,
                      selectedColor: Color(0xffF4EBFF),
                      disabledColor: Color(0xffE4E7EC),
                    ),
                    SizedBox(width: 8,),
                    ChoiceChip(
                      padding: EdgeInsets.symmetric(vertical: 8,horizontal: 16),
                      label: Text("Most Viewed",
                        style: GoogleFonts.inter(fontSize: 16,fontWeight: FontWeight.w500,color: Color(0xff667085)),),
                      selected: false,
                      selectedColor: Color(0xffF4EBFF),
                      disabledColor: Color(0xffE4E7EC),
                    ),
                    SizedBox(width: 8,),
                    ChoiceChip(
                      padding: EdgeInsets.symmetric(vertical: 8,horizontal: 16),
                      label: Text("Saved",
                        style: GoogleFonts.inter(fontSize: 16,fontWeight: FontWeight.w500,color: Color(0xff667085)),),
                      selected: false,
                      selectedColor: Color(0xffF4EBFF),
                      disabledColor: Color(0xffE4E7EC),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 15,),
              Column(
                children: [
                  Row(
                    children: [
                      Text("Hot Topics",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                      Spacer(),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: TextButton(onPressed: () {},
                            child: Row(
                              children: [
                                Text("see all",style: TextStyle(color: Color(0xff5925DC)),),
                                SizedBox(width: 5,),
                                Icon(Icons.arrow_forward_ios,size: 16,color: Color(0xff5925DC),)
                              ],
                            )),
                      ),
                    ],
                  ),
                  CarouselSlider(
                      items: [
                        Image.asset("assets/images/Frame 3466530.png"),
                        Image.asset("assets/images/girl.png"),
                  ],
                      options: CarouselOptions(disableCenter: true,enlargeFactor: 1,enlargeCenterPage: true,autoPlay: true,enlargeStrategy: CenterPageEnlargeStrategy.scale))
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text("Get Tips",style: GoogleFonts.inter(fontSize: 18,fontWeight: FontWeight.w600),),
                  SizedBox(height: 20,),
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 16,horizontal: 24),
                    width: 330,
                    height: 200,
                    alignment: Alignment.centerRight,
                    decoration: BoxDecoration(
                      image: DecorationImage(image: AssetImage("assets/images/Doctor-PNG-Images 1.png"),alignment: Alignment.centerLeft),
                      color: Color(0xffE4E7EC),
                      borderRadius: BorderRadius.circular(10)
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('''Connect with doctors &
get suggestions''',style: GoogleFonts.inter(fontSize: 14,fontWeight: FontWeight.w600),),
                        SizedBox(height: 10,),
                        Text('''Connect now and get
expert insights''',style: GoogleFonts.inter(fontSize: 14,fontWeight: FontWeight.w400),),
                        SizedBox(height: 20,),
                        ElevatedButton(onPressed: () {

                        },
                            child: Text("View detail"),
                        style: ButtonStyle(
                          padding: MaterialStatePropertyAll(EdgeInsets.symmetric(vertical: 8,horizontal: 14),),
                          fixedSize: MaterialStatePropertyAll(Size(105, 36)),
                          backgroundColor: MaterialStatePropertyAll(Color(0xff7F56D9)),
                          shape: MaterialStatePropertyAll(RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)))
                        ),
                        )
                      ],
                    ),
                  )
                ],
              ),
              SizedBox(height: 10,),
              Row(
                children: [
                  Text("Cycle Phases and Period",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w600),),
                  Spacer(),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: TextButton(onPressed: () {},
                        child: Row(
                          children: [
                            Text("see all",style: TextStyle(color: Color(0xff5925DC)),),
                            SizedBox(width: 5,),
                            Icon(Icons.arrow_forward_ios,size: 16,color: Color(0xff5925DC),)
                          ],
                        )),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: 1,
          selectedItemColor: const Color(0xff6941C6),
          unselectedItemColor: const Color(0xff475467),
          items: [
            const BottomNavigationBarItem(icon: Icon(Icons.calendar_today_outlined), label: "Today"),
            const BottomNavigationBarItem(icon: Icon(Icons.grid_view_rounded), label: "Insights"),
            const BottomNavigationBarItem(icon: Icon(Icons.chat_bubble_outline_rounded), label: "Chat"),
          ]),
    );
  }
}

//Row(
//                 children: [
//                   ChoiceChip(
//                     padding: EdgeInsets.symmetric(vertical: 8,horizontal: 16),
//                     label: Text("Discover",
//                       style: GoogleFonts.inter(fontSize: 16,fontWeight: FontWeight.w500,color: Color(0xff6941C6)),),
//                     selected: true,
//                     selectedColor: Color(0xffF4EBFF),
//                   ),
//                   SizedBox(width: 10,),
//                   ChoiceChip(
//                     padding: EdgeInsets.symmetric(vertical: 8,horizontal: 16),
//                     label: Text("News",
//                       style: GoogleFonts.inter(fontSize: 16,fontWeight: FontWeight.w500,color: Color(0xff667085)),),
//                     selected: false,
//                     selectedColor: Color(0xffF4EBFF),
//                     disabledColor: Color(0xffE4E7EC),
//                   ),
//                 ],
//               ),