import 'package:carousel_slider/carousel_slider.dart';
import 'package:ecomm_239/custom_ui/custom_icon_ui.dart';
import 'package:ecomm_239/custom_ui/custom_item_ui.dart';
import 'package:ecomm_239/utils/app_colors.dart';
import 'package:ecomm_239/utils/ui_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_onboarding_slider/flutter_onboarding_slider.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  List<String> imgUrls = ['assets/images/bg_banner_1.jpg', 'assets/images/bg_banner_2.png'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8.0),
        child: Padding(
          padding: EdgeInsets.all(11),
          child: Column(
            children: [
              ///appBar
              mAppBar(),
              heightSpacing(),
              ///searchBar
              searchBar(),
              heightSpacing(),
              ///slider
              bannerSlider(),
              heightSpacing(),
              ///gridLay
              Expanded(child: GridView.builder(
                itemCount: 5,
                  gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                maxCrossAxisExtent: 240,
                childAspectRatio: 7/8,
                mainAxisSpacing: 11,
                crossAxisSpacing: 11,
              ), itemBuilder: (_, index){
                return CustomProductItemUI();
              }))
            ],
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        backgroundColor: AppColors.primaryColor,
        foregroundColor: AppColors.whiteColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(100)
        ),
        onPressed: (){

        },
        child: Icon(Icons.home_outlined),
      ),
      bottomNavigationBar: BottomAppBar(
        elevation: 11,
        shadowColor: AppColors.primaryColor,
        surfaceTintColor: Colors.white,
        notchMargin: 5,
        shape: CircularNotchedRectangle(),

      ),
    );
  }

  Widget mAppBar(){
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CustomIconUI(mIcon: Icons.menu),
          CustomIconUI(mIcon: Icons.notifications_none),
        ],
      ),
    );
  }

  Widget searchBar(){
    return Container(
      height: 40,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: AppColors.lightGreyColor
      ),
      child: Row(
        children: [
          widthSpacing(),
          Icon(Icons.search, color: AppColors.greyColor,),
          Expanded(child: TextField(
            maxLines: 1,
            cursorHeight: 16,
            decoration: InputDecoration(
              floatingLabelBehavior: FloatingLabelBehavior.never,
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  width: 0,
                  color: Colors.transparent
                )
              ),
              focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                      width: 0,
                      color: Colors.transparent
                  )
              )
            ),
          )),
          widthSpacing(),
          Container(
            width: 1,
            height: 20,
            color: AppColors.greyColor,
          ),
          widthSpacing(),
          Icon(Icons.menu_open, color: AppColors.greyColor,),
          widthSpacing(),
        ],
      ),
    );
  }

  Widget bannerSlider(){
    return SizedBox(
      height: 200,
      width: double.infinity,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(21),
        child: CarouselSlider(
          options: CarouselOptions(
            pageSnapping: false,
            viewportFraction: 1,
            height: 200,
            autoPlay: true,
          ),
          items: imgUrls.map((eachUrl) {
            return SizedBox(
              width: double.infinity,
                child: Image.asset(eachUrl, fit: BoxFit.fill));
          }).toList(),
        ),
      )
    );
  }
}


//OnBoardingSlider(
//         controllerColor: Colors.black,
//         speed: 1.5,
//         totalPage: 3,
//         hasFloatingButton: false,
//         hasSkip: false,
//         headerBackgroundColor: Colors.grey,
//         pageBackgroundColor: Colors.orange,
//         pageBodies: [
//           SizedBox(
//             height: 200,
//               child: Image.asset('assets/images/bg_banner_1.jpg', fit: BoxFit.fill)),
//           SizedBox(
//               height: 200,
//               child: Image.asset('assets/images/bg_banner_2.png', height: double.infinity, fit: BoxFit.fill)),
//           SizedBox(
//               height: 200,
//               child: Image.asset('assets/images/bg_banner_1.jpg', height: double.infinity, fit: BoxFit.fill)),
//         ],
//         background: [
//           Container(
//           ),
//           Container(
//
//           ),
//           Container(
//
//           ),
//
//         ],
//       ),
