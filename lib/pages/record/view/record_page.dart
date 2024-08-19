import 'package:cerdo_app/global/app_color_style.dart';
import 'package:cerdo_app/global/app_text_style.dart';
import 'package:cerdo_app/global/ratio_calculator.dart';

import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

class RecordPage extends StatefulWidget {
  const RecordPage({super.key});

  @override
  State<RecordPage> createState() => _RecordPageState();
}

class _RecordPageState extends State<RecordPage> {
  final RatioCalculator ratioCalculator = RatioCalculator();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            margin: EdgeInsets.only(
              top: ratioCalculator.calculateHeight(59),
              bottom: ratioCalculator.calculateHeight(34),
              left: ratioCalculator.calculateWidth(18),
              right: ratioCalculator.calculateWidth(18),
            ),
            decoration: BoxDecoration(
              border: Border.all(
                color: AppColors.containerColor,
              ),
              borderRadius: BorderRadius.circular(15),
            ),
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.only(
                    top: ratioCalculator.calculateHeight(27),
                    left: ratioCalculator.calculateWidth(20),
                    right: ratioCalculator.calculateWidth(10),
                  ),
                  child: Row(
                    children: [
                      Text(
                        "Datos Personales",
                        style: AppTextStyle.text29W600TextStyle,
                      ),
                      SizedBox(
                        width: ratioCalculator.calculateWidth(12),
                      ),
                      Icon(
                        Icons.person,
                        size: 45,
                        color: AppColors.inputLoginColor,
                      ),
                    ],
                  ),
                ).animate().fade(duration: 500.ms).scale(delay: 500.ms),
                Container(
                  margin: EdgeInsets.only(
                    top: ratioCalculator.calculateHeight(47),
                    left: ratioCalculator.calculateWidth(14),
                    right: ratioCalculator.calculateWidth(14),
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                      labelText: "Nombre:",
                      labelStyle: AppTextStyle.text20W600InputTextStyle,
                      hintStyle: AppTextStyle.text16W600InputTextStyle,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: const BorderSide(
                          color: AppColors.inputLoginColor,
                          width: 2.0,
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: const BorderSide(
                          color: AppColors.inputLoginColor,
                          width: 2.0,
                        ),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: const BorderSide(
                          color: AppColors.inputLoginColor,
                          width: 2.0,
                        ),
                      ),
                    ),
                    style: AppTextStyle.text16W600InputTextStyle,
                  ),
                )
                    .animate()
                    .fadeIn(duration: 600.ms)
                    .then(delay: 200.ms)
                    .slide(),
                Container(
                  margin: EdgeInsets.only(
                    top: ratioCalculator.calculateHeight(31),
                    left: ratioCalculator.calculateWidth(14),
                    right: ratioCalculator.calculateWidth(14),
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                      labelText: "Apellido:",
                      labelStyle: AppTextStyle.text20W600InputTextStyle,
                      hintStyle: AppTextStyle.text16W600InputTextStyle,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: const BorderSide(
                          color: AppColors.inputLoginColor,
                          width: 2.0,
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: const BorderSide(
                          color: AppColors.inputLoginColor,
                          width: 2.0,
                        ),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: const BorderSide(
                          color: AppColors.inputLoginColor,
                          width: 2.0,
                        ),
                      ),
                    ),
                    style: AppTextStyle.text16W600InputTextStyle,
                  ),
                )
                    .animate()
                    .fadeIn(duration: 600.ms)
                    .then(delay: 200.ms)
                    .slide(),
                Container(
                  margin: EdgeInsets.only(
                    top: ratioCalculator.calculateHeight(31),
                    left: ratioCalculator.calculateWidth(14),
                    right: ratioCalculator.calculateWidth(14),
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                      labelText: "Telefono:",
                      labelStyle: AppTextStyle.text20W600InputTextStyle,
                      hintStyle: AppTextStyle.text16W600InputTextStyle,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: const BorderSide(
                          color: AppColors.inputLoginColor,
                          width: 2.0,
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: const BorderSide(
                          color: AppColors.inputLoginColor,
                          width: 2.0,
                        ),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: const BorderSide(
                          color: AppColors.inputLoginColor,
                          width: 2.0,
                        ),
                      ),
                    ),
                    style: AppTextStyle.text16W600InputTextStyle,
                  ),
                )
                    .animate()
                    .fadeIn(duration: 600.ms)
                    .then(delay: 200.ms)
                    .slide(),
                Container(
                  margin: EdgeInsets.only(
                    top: ratioCalculator.calculateHeight(31),
                    left: ratioCalculator.calculateWidth(14),
                    right: ratioCalculator.calculateWidth(14),
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                      labelText: "Usuario:",
                      labelStyle: AppTextStyle.text20W600InputTextStyle,
                      hintStyle: AppTextStyle.text16W600InputTextStyle,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: const BorderSide(
                          color: AppColors.inputLoginColor,
                          width: 2.0,
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: const BorderSide(
                          color: AppColors.inputLoginColor,
                          width: 2.0,
                        ),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: const BorderSide(
                          color: AppColors.inputLoginColor,
                          width: 2.0,
                        ),
                      ),
                    ),
                    style: AppTextStyle.text16W600InputTextStyle,
                  ),
                )
                    .animate()
                    .fadeIn(duration: 600.ms)
                    .then(delay: 200.ms)
                    .slide(),
                Container(
                  margin: EdgeInsets.only(
                    top: ratioCalculator.calculateHeight(31),
                    left: ratioCalculator.calculateWidth(14),
                    right: ratioCalculator.calculateWidth(14),
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                      labelText: "Contraseña:",
                      labelStyle: AppTextStyle.text20W600InputTextStyle,
                      hintStyle: AppTextStyle.text16W600InputTextStyle,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: const BorderSide(
                          color: AppColors.inputLoginColor,
                          width: 2.0,
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: const BorderSide(
                          color: AppColors.inputLoginColor,
                          width: 2.0,
                        ),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: const BorderSide(
                          color: AppColors.inputLoginColor,
                          width: 2.0,
                        ),
                      ),
                    ),
                    style: AppTextStyle.text16W600InputTextStyle,
                  ),
                )
                    .animate()
                    .fadeIn(duration: 600.ms)
                    .then(delay: 200.ms)
                    .slide(),
                Container(
                  height: ratioCalculator.calculateHeight(57),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    border: Border.all(
                      color: AppColors.inputLoginColor,
                      width: 2.0,
                    ),
                  ),
                  margin: EdgeInsets.only(
                    top: ratioCalculator.calculateHeight(61),
                    left: ratioCalculator.calculateWidth(43),
                    right: ratioCalculator.calculateWidth(47),
                    bottom: ratioCalculator.calculateHeight(25),
                  ),
                  child: const ButtonBar(
                    alignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Crear Cuenta",
                        style: AppTextStyle.text25W600InputTextStyle,
                      ),
                    ],
                  ),
                )
                    .animate()
                    .fadeIn(duration: 600.ms)
                    .then(delay: 200.ms)
                    .slide(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
