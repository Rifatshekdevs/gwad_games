import 'package:flutter/material.dart';
import 'package:gadwd_games/utils/app_colors.dart';
import 'package:get/get.dart';

class SportsView extends StatefulWidget {
  const SportsView({Key? key}) : super(key: key);

  @override
  _SportsViewState createState() => _SportsViewState();
}

class _SportsViewState extends State<SportsView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.appBackgroundColor,
      appBar: AppBar(
        backgroundColor: AppColors.appBarColor,
        title: const Text("ALL SPORTS",
            style: TextStyle(color: AppColors.basicWhite, fontSize: 16.0)),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 10.0),
              child: Text("Popular",
                  style: TextStyle(
                      color: AppColors.basicWhite,
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold)),
            ),
            const SizedBox(height: 5.0),
            Container(
              height: 750,
              width: Get.width,
              padding:
                  const EdgeInsets.symmetric(vertical: 20.0, horizontal: 10.0),
              child: ListView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: 9,
                  itemBuilder: (ctx, index) => Column(
                        children: [
                          ListTile(
                            leading: Image.asset("images/live_1.png"),
                            title: const Text("Live now",
                                style: TextStyle(
                                    color: AppColors.basicWhite,
                                    fontSize: 14.0)),
                            trailing: const Icon(Icons.arrow_forward_ios,
                                color: AppColors.basicWhite),
                          ),
                          const SizedBox(height: 5.0),
                          const Divider(color: AppColors.offWhite),
                        ],
                      )),
            ),
            const SizedBox(height: 20.0),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.0),
              child: Text("Othre Links",
                  style: TextStyle(
                      color: AppColors.basicWhite,
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold)),
            ),
            const SizedBox(height: 20.0),
            const Divider(color: AppColors.offWhite),
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text("Betting Guide",
                        style: TextStyle(
                            color: AppColors.basicWhite, fontSize: 14.0)),
                    Icon(Icons.arrow_forward_ios,
                        color: AppColors.offWhite, size: 14.0),
                  ]),
            ),
            const Divider(color: AppColors.offWhite),
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text("Term & Conditions",
                        style: TextStyle(
                            color: AppColors.basicWhite, fontSize: 14.0)),
                    Icon(Icons.arrow_forward_ios,
                        color: AppColors.offWhite, size: 14.0),
                  ]),
            ),
            const Divider(color: AppColors.offWhite),
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text("Support",
                        style: TextStyle(
                            color: AppColors.basicWhite, fontSize: 14.0)),
                    Icon(Icons.arrow_forward_ios,
                        color: AppColors.offWhite, size: 14.0),
                  ]),
            ),
            const Divider(color: AppColors.offWhite),
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text("Fantancy",
                        style: TextStyle(
                            color: AppColors.basicWhite, fontSize: 14.0)),
                    Icon(Icons.arrow_forward_ios,
                        color: AppColors.offWhite, size: 14.0),
                  ]),
            ),
            const Divider(color: AppColors.offWhite),
            const SizedBox(height: 10.0),
          ],
        ),
      ),
    );
  }
}
