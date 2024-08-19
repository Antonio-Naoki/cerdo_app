import 'package:cerdo_app/global/app_color_style.dart';
import 'package:cerdo_app/global/app_text_style.dart';
import 'package:cerdo_app/global/ratio_calculator.dart';
import 'package:cerdo_app/pages/login/view/login_page.dart';
import 'package:cerdo_app/pages/record/view/record_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

class FrontPage extends StatefulWidget {
  const FrontPage({super.key});

  @override
  State<FrontPage> createState() => _FrontPageState();
}

class _FrontPageState extends State<FrontPage> {
  final RatioCalculator ratioCalculator = RatioCalculator();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(
                  top: ratioCalculator.calculateHeight(168),
                  left: ratioCalculator.calculateWidth(79),
                  right: ratioCalculator.calculateWidth(72),
                  bottom: ratioCalculator.calculateHeight(56),
                ),
                child: Image(
                  image: const AssetImage('assets/images/logo.png'),
                  width: ratioCalculator.calculateWidth(239),
                  height: ratioCalculator.calculateHeight(239),
                ).animate().fade(duration: 500.ms).scale(delay: 500.ms).rotate(
                    duration: const Duration(milliseconds: 800),
                    curve: Curves.easeInOut),
              ),
              Container(
                margin: EdgeInsets.only(
                  left: ratioCalculator.calculateWidth(85),
                  right: ratioCalculator.calculateWidth(86),
                  bottom: ratioCalculator.calculateHeight(140),
                ),
                child: Text(
                  "Bienvenido",
                  style: AppTextStyle.text36W600TextStyle,
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => LoginPage()),
                  );
                },
                child: Container(
                  height: ratioCalculator.calculateHeight(62),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    border: Border.all(
                      color: AppColors.inputLoginColor,
                      width: 2.0,
                    ),
                  ),
                  margin: EdgeInsets.only(
                    left: ratioCalculator.calculateWidth(43),
                    right: ratioCalculator.calculateWidth(47),
                    bottom: ratioCalculator.calculateHeight(14),
                  ),
                  child: ButtonBar(
                    alignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Ingresar",
                        style: AppTextStyle.text25W600InputTextStyle,
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(
                  left: ratioCalculator.calculateWidth(47),
                  right: ratioCalculator.calculateWidth(51),
                  bottom: ratioCalculator.calculateWidth(72),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      "Eres nuevo aqui?",
                      style: AppTextStyle.text18W600FrontTextStyle,
                    ),
                    SizedBox(
                      width: ratioCalculator.calculateWidth(8),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => RecordPage()),
                        );
                      },
                      child: const Text(
                        "Crear tu cuenta",
                        style: AppTextStyle.text18W600Front2TextStyle,
                      ),
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
