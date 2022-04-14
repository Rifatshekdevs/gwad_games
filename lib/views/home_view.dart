import 'package:flutter/material.dart';
import 'package:gadwd_games/widgets/carousel_with_dot.dart';
import 'package:gadwd_games/widgets/custom_Container.dart';
import 'package:gadwd_games/widgets/custom_container2.dart';
import 'package:gadwd_games/widgets/custom_container3.dart';
import 'package:gadwd_games/widgets/custom_container4.dart';
import 'package:gadwd_games/widgets/display_bet_window.dart';
import 'package:gadwd_games/widgets/hexColor.dart';
import '/utils/app_colors.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  final List<String> imgList = [
    'images/bet.jpg',
    'images/bet.jpg',
    'images/bet.jpg',
    'images/bet.jpg',
  ];
  dynamic mainHeight;
  dynamic mainWidth;

  @override
  Widget build(BuildContext context) {
    mainHeight = MediaQuery.of(context).size.height;
    mainWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: AppColors.appBackgroundColor,
      body: Container(
        height: mainHeight,
        width: mainWidth,
        padding: const EdgeInsets.symmetric(vertical: 15.0, horizontal: 15.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset("images/app_name.png"),
                  Row(
                    children: [
                      InkWell(
                          child: Container(
                            height: 39,
                            width: 78,
                            decoration: BoxDecoration(
                                color: AppColors.skyBlue,
                                borderRadius: BorderRadius.circular(5.0)),
                            child: const Center(
                              child: Text(
                                "Log in",
                                style: TextStyle(
                                    color: AppColors.basicWhite,
                                    fontSize: 16.0),
                              ),
                            ),
                          ),
                          onTap: () {}),
                      const SizedBox(width: 16.0),
                      InkWell(
                          child: Container(
                            height: 39,
                            width: 78,
                            decoration: BoxDecoration(
                                color: AppColors.lightOrange,
                                borderRadius: BorderRadius.circular(5.0)),
                            child: const Center(
                                child: Text(
                              "Join Now",
                              style: TextStyle(
                                  color: AppColors.basicWhite, fontSize: 16.0),
                            )),
                          ),
                          onTap: () {}),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 30.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text("Popular",
                      style: TextStyle(
                          color: AppColors.basicWhite,
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold)),
                  InkWell(
                    onTap: () {},
                    child: Row(
                      children: const [
                        Text("All Sports",
                            style: TextStyle(
                                color: AppColors.basicWhite, fontSize: 16.0)),
                        SizedBox(width: 10.0),
                        Icon(Icons.arrow_forward_ios,
                            color: AppColors.basicWhite, size: 14.0),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: 15.0),
              SizedBox(
                height: 100,
                child: ListView.builder(
                  itemCount: 5,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (ctx, index) => Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Column(
                      children: [
                        Container(
                          height: 52.0,
                          width: 53.0,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(color: AppColors.basicWhite),
                            color: AppColors.appBackgroundColor,
                          ),
                          child: Center(
                            child: Image.asset("images/live_1.png"),
                          ),
                        ),
                        const SizedBox(height: 5.0),
                        const Text("Live now",
                            style: TextStyle(
                                color: AppColors.basicWhite, fontSize: 12.0)),
                      ],
                    ),
                  ),
                ),
              ),
              CarouselWitDot(),
              SizedBox(
                height: 10,
              ),
              Container(
                height: 58.0,
                width: mainWidth,
                color: AppColors.grey,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: const [
                    Text("NCCAB",
                        style: TextStyle(color: AppColors.lightOrange)),
                    Text("NBA", style: TextStyle(color: AppColors.lightOrange)),
                    Text("NHL", style: TextStyle(color: AppColors.lightOrange)),
                    Text("PGA TOUR",
                        style: TextStyle(color: AppColors.lightOrange)),
                    Text("SOCCER",
                        style: TextStyle(color: AppColors.lightOrange)),
                  ],
                ),
              ),
              const SizedBox(height: 10),
              Container(
                height: 58.0,
                width: mainWidth,
                color: AppColors.grey,
                padding: const EdgeInsets.symmetric(horizontal: 15.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text("NCAA Men's Games",
                        style: TextStyle(
                            color: AppColors.basicWhite, fontSize: 14.0)),
                    Text(""),
                  ],
                ),
              ),
              const SizedBox(height: 5.0),
              Container(
                height: 53.0,
                width: mainWidth,
                color: hexToColor('#2D2D2D'),
                padding: const EdgeInsets.symmetric(horizontal: 15.0),
                child: Column(
                  children: [
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text("NCAA Basketball",
                            style: TextStyle(
                                color: AppColors.basicWhite, fontSize: 14.0)),
                        Row(
                          children: const [
                            Text("SPREAD",
                                style: TextStyle(
                                    color: AppColors.offWhite, fontSize: 14.0)),
                            SizedBox(width: 15.0),
                            Text("MONEY",
                                style: TextStyle(
                                    color: AppColors.offWhite, fontSize: 14.0)),
                            SizedBox(width: 15.0),
                            Text("TOTAL",
                                style: TextStyle(
                                    color: AppColors.offWhite, fontSize: 14.0)),
                          ],
                        ),
                      ],
                    ),
                    Divider(
                      color: AppColors.profileCircleColor,
                      thickness: 5.0,
                    ),
                  ],
                ),
              ),
              Container(
                height: 1195,
                width: mainWidth,
                decoration: BoxDecoration(color: hexToColor('#2D2D2D')),
                child: Column(
                  children: [
                    CustomContainer(
                      icon: Icon(Icons.person_outline),
                      text: 'HOUSTON',
                      text1: '25',
                      text2: '-4.5',
                      text3: '-102',
                      text4: '',
                      text5: '',
                      extraText1: '-102',
                      extraText2: '0 121',
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 20),
                      child: Row(
                        children: [
                          Text(
                            '@',
                            style:
                                TextStyle(color: AppColors.profileCircleColor),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Container(
                            height: 5,
                            width: 200,
                            color: AppColors.profileCircleColor,
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    CustomContainer(
                      icon: Icon(Icons.person_outline),
                      text: 'HOUSTON',
                      text1: '25',
                      text2: '-4.5',
                      text3: '-102',
                      text4: '',
                      text5: '',
                      extraText1: '-102',
                      extraText2: '0 121',
                    ),
                    ListTile(
                      leading: Container(
                        height: 40,
                        width: 70,
                        decoration: BoxDecoration(
                          color: AppColors.red,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Center(
                            child: Text(
                          'Live',
                          style: TextStyle(
                              color: AppColors.basicWhite,
                              fontSize: 17,
                              fontWeight: FontWeight.bold),
                        )),
                      ),
                      title: Text(
                        '2ND HALF-06:52',
                        style: TextStyle(
                          color: AppColors.basicWhite,
                          fontSize: 14,
                        ),
                      ),
                      trailing: TextButton(
                        onPressed: () {},
                        child: Text(
                          'More Wagers  >',
                          style: TextStyle(
                            color: AppColors.lightOrange,
                            fontSize: 14,
                          ),
                        ),
                      ),
                    ),
                    Divider(
                      color: AppColors.profileCircleColor,
                      thickness: 5.0,
                    ),
                    CustomContainer(
                      icon: Icon(Icons.person_outline),
                      text: 'HOUSTON',
                      text1: '25',
                      text2: '-4.5',
                      text3: '-102',
                      text4: '',
                      text5: '',
                      extraText1: '-102',
                      extraText2: '0 121',
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 20),
                      child: Row(
                        children: [
                          Text(
                            '@',
                            style:
                                TextStyle(color: AppColors.profileCircleColor),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Container(
                            height: 5,
                            width: 200,
                            color: AppColors.profileCircleColor,
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    CustomContainer(
                      icon: Icon(Icons.person_outline),
                      text: 'HOUSTON',
                      text1: '25',
                      text2: '-4.5',
                      text3: '-102',
                      text4: '',
                      text5: '',
                      extraText1: '-102',
                      extraText2: '0 121',
                    ),
                    ListTile(
                      leading: Container(
                        height: 40,
                        width: 70,
                        decoration: BoxDecoration(
                          color: AppColors.red,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Center(
                            child: Text(
                          'Live',
                          style: TextStyle(
                              color: AppColors.basicWhite,
                              fontSize: 17,
                              fontWeight: FontWeight.bold),
                        )),
                      ),
                      title: Text(
                        '8PM MT',
                        style: TextStyle(
                          color: AppColors.basicWhite,
                          fontSize: 14,
                        ),
                      ),
                      trailing: TextButton(
                        onPressed: () {},
                        child: Text(
                          'More Wagers  >',
                          style: TextStyle(
                            color: AppColors.lightOrange,
                            fontSize: 14,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    //"NCAA Men's Basketball
                    Container(
                      height: 53.0,
                      width: mainWidth,
                      color: AppColors.profileCircleColor.withOpacity(.5),
                      padding: const EdgeInsets.symmetric(horizontal: 15.0),
                      child: Column(
                        children: [
                          SizedBox(
                            height: 15,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Text(
                                  "NCAA Men's Basketball champpionship 2022",
                                  style: TextStyle(
                                      color: AppColors.basicWhite,
                                      fontSize: 14.0)),
                            ],
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    CustomContainer2(
                      icon: Icon(Icons.person_outlined),
                      text: 'Kansas',
                      text1: '+502',
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    CustomContainer2(
                      icon: Icon(Icons.person_outlined),
                      text: 'Duke',
                      text1: '+102',
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    CustomContainer2(
                      icon: Icon(Icons.person_outlined),
                      text: 'Villanova',
                      text1: '+1000',
                    ),
                    Padding(
                      padding: EdgeInsets.only(right: 220),
                      child: Text(
                        'SAT 8.00PM MT',
                        style: TextStyle(color: AppColors.profileCircleColor),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      height: 53.0,
                      width: mainWidth,
                      color: AppColors.profileCircleColor.withOpacity(.5),
                      padding: const EdgeInsets.symmetric(horizontal: 15.0),
                      child: Column(
                        children: [
                          SizedBox(
                            height: 15,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Text(
                                "National champpionship",
                                style: TextStyle(
                                  color: AppColors.basicWhite,
                                  fontSize: 14.0,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    CustomContainer3(
                      icon: Icon(Icons.person_outline),
                      text: 'DUke to beat Kansas',
                      text1: '+502',
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    CustomContainer3(
                      icon: Icon(Icons.person_outline),
                      text: 'Kansas to beat Duke',
                      text1: '+102',
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    CustomContainer3(
                      icon: Icon(Icons.person_outline),
                      text: 'Villanova to beat Duke',
                      text1: '+1000',
                    ),
                    Padding(
                      padding: EdgeInsets.only(right: 220),
                      child: Text(
                        'SAT 8.00PM MT',
                        style: TextStyle(color: AppColors.profileCircleColor),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        displayBetWindow();
                      },
                      child: CustomContainer4(
                          icon: Icon(Icons.keyboard_arrow_down),
                          text: 'Player Perfomence Doubbles'),
                    ),
                    Divider(
                      color: AppColors.profileCircleColor,
                      thickness: 1.0,
                    ),
                    CustomContainer4(
                        icon: Icon(Icons.keyboard_arrow_down),
                        text: '20+ Points Player Builder'),
                    Divider(
                      color: AppColors.profileCircleColor,
                      thickness: 1.0,
                    ),
                    CustomContainer4(
                        icon: Icon(Icons.keyboard_arrow_down),
                        text: 'First Basket Player Builder'),
                    Divider(
                      color: AppColors.profileCircleColor,
                      thickness: 1.0,
                    ),
                    Container(
                      height: 53.0,
                      width: mainWidth,
                      color: AppColors.profileCircleColor.withOpacity(.5),
                      padding: const EdgeInsets.symmetric(horizontal: 15.0),
                      child: Column(
                        children: [
                          SizedBox(
                            height: 15,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Text(
                                "More",
                                style: TextStyle(
                                  color: AppColors.lightOrange,
                                  fontSize: 14.0,
                                ),
                              ),
                              Icon(
                                Icons.keyboard_arrow_right,
                                color: AppColors.lightOrange,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Divider(
                      color: AppColors.profileCircleColor,
                      thickness: 1.0,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
