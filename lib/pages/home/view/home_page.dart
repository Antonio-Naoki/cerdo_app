import 'package:cerdo_app/global/app_color_style.dart';
import 'package:cerdo_app/global/app_text_style.dart';
import 'package:cerdo_app/global/ratio_calculator.dart';
import 'package:cerdo_app/pages/pesaje/view/pesaje_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final RatioCalculator ratioCalculator = RatioCalculator();
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.only(
                    top: ratioCalculator.calculateHeight(55),
                    left: ratioCalculator.calculateWidth(118),
                    right: ratioCalculator.calculateWidth(122),
                  ),
                  child: Image(
                    image: const AssetImage('assets/images/logo.png'),
                    width: ratioCalculator.calculateWidth(239),
                    height: ratioCalculator.calculateHeight(239),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(
                    bottom: ratioCalculator.calculateHeight(103),
                  ),
                  child: Text(
                    "Hola 👋",
                    style: AppTextStyle.text36W600TextStyle,
                  ),
                ),
                Divider(),
                GestureDetector(
                  onTap: (){
                    Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const PesajePage()),
                  );
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(14),
                      color: AppColors.textFrontColor,
                    ),
                    margin: EdgeInsets.only(
                      left: ratioCalculator.calculateWidth(16),
                      right: ratioCalculator.calculateWidth(15),
                      top: ratioCalculator.calculateHeight(16),
                      bottom: ratioCalculator.calculateHeight(14),
                    ),
                    child: Container(
                      margin: EdgeInsets.only(
                        left: ratioCalculator.calculateWidth(130),
                        right: ratioCalculator.calculateWidth(130),
                        top: ratioCalculator.calculateHeight(12),
                        bottom: ratioCalculator.calculateHeight(12),
                      ),
                      child: Column(
                        children: [
                          Text(
                            "Pesaje",
                            style: AppTextStyle.text25W600TextStyle,
                          ),
                          Icon(
                            Icons.balance,
                            size: 31,
                            color: AppColors.textHomeColor,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(14),
                    color: AppColors.textFrontColor,
                  ),
                  margin: EdgeInsets.only(
                    left: ratioCalculator.calculateWidth(16),
                    right: ratioCalculator.calculateWidth(15),
                    bottom: ratioCalculator.calculateHeight(14),
                  ),
                  child: Container(
                    margin: EdgeInsets.only(
                      left: ratioCalculator.calculateWidth(46),
                      right: ratioCalculator.calculateWidth(45),
                      top: ratioCalculator.calculateHeight(12),
                      bottom: ratioCalculator.calculateHeight(12),
                    ),
                    child: Column(
                      children: [
                        Text(
                          "Consulta tus pesajes",
                          style: AppTextStyle.text25W600TextStyle,
                        ),
                        Icon(
                          Icons.search,
                          size: 31,
                          color: AppColors.textHomeColor,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
