import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:google_fonts/google_fonts.dart';

class ThirdScreen extends StatelessWidget {
  static const String routeName="Third Screen";

  const ThirdScreen({super.key});

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
                  const ImageIcon(AssetImage("assets/images/flower.png",),color: Color(0xffC9B4FF),),
                  const SizedBox(width: 5,),
                  Text("AliceCare",style: GoogleFonts.milonga(fontSize: 24,fontWeight: FontWeight.w400),)
                ],
                ),
              ),
              const SizedBox(height: 20,),
              TextFormField(
                decoration: InputDecoration(
                  prefixIcon: const Icon(Icons.search),
                  hintText: "Articles, Video, Audio and More,...",
                  hintStyle: const TextStyle(color: Colors.grey,fontSize: 16,fontWeight: FontWeight.w400,),
                  border: OutlineInputBorder(borderSide: const BorderSide(width: 2,color: Colors.grey),borderRadius: BorderRadius.circular(12))
                ),
              ),
              const SizedBox(height: 20,),
              SizedBox(
                height: 45,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    ChoiceChip(
                      padding: const EdgeInsets.symmetric(vertical: 8,horizontal: 16),
                      label: Text("Discover",
                        style: GoogleFonts.inter(fontSize: 16,fontWeight: FontWeight.w500,color: const Color(0xff6941C6)),),
                      selected: true,
                      selectedColor: const Color(0xffF4EBFF),
                      avatarBorder: const OutlineInputBorder(borderSide: BorderSide(width: 2,color: Color(0xff6941C6))),
                      selectedShadowColor: Colors.transparent,
                      color: const MaterialStatePropertyAll(Color(0xff6941C6)),
                    ),
                    const SizedBox(width: 8,),
                    ChoiceChip(
                      padding: const EdgeInsets.symmetric(vertical: 8,horizontal: 16),
                      label: Text("News",
                        style: GoogleFonts.inter(fontSize: 16,fontWeight: FontWeight.w500,color: const Color(0xff667085)),),
                      selected: false,
                      selectedColor: const Color(0xffF4EBFF),
                      disabledColor: const Color(0xffE4E7EC),
                    ),
                    const SizedBox(width: 8,),
                    ChoiceChip(
                      padding: const EdgeInsets.symmetric(vertical: 8,horizontal: 16),
                      label: Text("Most Viewed",
                        style: GoogleFonts.inter(fontSize: 16,fontWeight: FontWeight.w500,color: const Color(0xff667085)),),
                      selected: false,
                      selectedColor: const Color(0xffF4EBFF),
                      disabledColor: const Color(0xffE4E7EC),
                    ),
                    const SizedBox(width: 8,),
                    ChoiceChip(
                      padding: const EdgeInsets.symmetric(vertical: 8,horizontal: 16),
                      label: Text("Saved",
                        style: GoogleFonts.inter(fontSize: 16,fontWeight: FontWeight.w500,color: const Color(0xff667085)),),
                      selected: false,
                      selectedColor: const Color(0xffF4EBFF),
                      disabledColor: const Color(0xffE4E7EC),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 15,),
              Column(
                children: [
                  Row(
                    children: [
                      const Text("Hot Topics",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                      const Spacer(),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: TextButton(onPressed: () {},
                            child: const Row(
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
                  const SizedBox(height: 20,),
                  Container(
                    padding: const EdgeInsets.symmetric(vertical: 16,horizontal: 24),
                    width: 330,
                    height: 200,
                    alignment: Alignment.centerRight,
                    decoration: BoxDecoration(
                      image: const DecorationImage(image: AssetImage("assets/images/Doctor-PNG-Images 1.png"),alignment: Alignment.centerLeft),
                      color: const Color(0xffE4E7EC),
                      borderRadius: BorderRadius.circular(10)
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('''Connect with doctors &
get suggestions''',style: GoogleFonts.inter(fontSize: 14,fontWeight: FontWeight.w600),),
                        const SizedBox(height: 10,),
                        Text('''Connect now and get
expert insights''',style: GoogleFonts.inter(fontSize: 14,fontWeight: FontWeight.w400),),
                        const SizedBox(height: 20,),
                        ElevatedButton(onPressed: () {

                        },
                        style: ButtonStyle(
                          padding: const MaterialStatePropertyAll(EdgeInsets.symmetric(vertical: 8,horizontal: 14),),
                          fixedSize: const MaterialStatePropertyAll(Size(105, 36)),
                          backgroundColor: const MaterialStatePropertyAll(Color(0xff7F56D9)),
                          shape: MaterialStatePropertyAll(RoundedRectangleBorder(borderRadius: BorderRadius.circular(8))),
                        ),
                          child: const Text("View detail"),
                        )
                      ],
                    ),
                  )
                ],
              ),
              const SizedBox(height: 10,),
              Row(
                children: [
                  const Text("Cycle Phases and Period",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w600),),
                  const Spacer(),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: TextButton(onPressed: () {},
                        child: const Row(
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
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.calendar_today_outlined), label: "Today"),
            BottomNavigationBarItem(icon: Icon(Icons.grid_view_rounded), label: "Insights"),
            BottomNavigationBarItem(icon: Icon(Icons.chat_bubble_outline_rounded), label: "Chat"),
          ]),
    );
  }
}