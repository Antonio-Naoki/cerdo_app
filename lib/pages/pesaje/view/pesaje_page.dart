import 'package:cerdo_app/global/app_color_style.dart';
import 'package:cerdo_app/global/app_text_style.dart';
import 'package:cerdo_app/global/ratio_calculator.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class PesajePage extends StatefulWidget {
  const PesajePage({super.key});

  @override
  State<PesajePage> createState() => _PesajePageState();
}

final List<String> items = ['Cerdo', 'Bovino', 'Caballo', 'Caprino', 'Conejo', 'Ave de corral'];
String? selectedValue;

class _PesajePageState extends State<PesajePage> {
  final RatioCalculator ratioCalculator = RatioCalculator();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(
                      top: ratioCalculator.calculateHeight(76),
                      left: ratioCalculator.calculateWidth(13),
                    ),
                    child: Text(
                      "Pesaje",
                      style: AppTextStyle.text36W600TextStyle,
                    ),
                  ),
                  Spacer(),
                  Container(
                    margin: EdgeInsets.only(
                      top: ratioCalculator.calculateHeight(71),
                      right: ratioCalculator.calculateWidth(15),
                    ),
                    child: Icon(
                      Icons.balance,
                      size: 57,
                      color: AppColors.inputLoginColor,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: ratioCalculator.calculateHeight(28),
              ),
              Container(
                margin: EdgeInsets.only(
                  left: ratioCalculator.calculateWidth(13),
                  right: ratioCalculator.calculateWidth(98),
                  bottom: ratioCalculator.calculateWidth(24),
                ),
                child: DropdownButtonFormField(
                  decoration: InputDecoration(
                    labelText: 'Animal:',
                    labelStyle: AppTextStyle.text20tW600InputTextStyle,
                  ),
                  value: selectedValue,
                  items: items.map((item) {
                    return DropdownMenuItem(
                      value: item,
                      child: Text(item),
                    );
                  }).toList(),
                  onChanged: (newValue) {
                    setState(() {
                      selectedValue = newValue;
                    });
                  },
                ),
              ),
              Container(
                margin: EdgeInsets.only(
                  left: ratioCalculator.calculateWidth(13),
                  right: ratioCalculator.calculateWidth(15),
                  bottom: ratioCalculator.calculateWidth(5),
                ),
                child: TextFormField(
                  decoration: InputDecoration(
                    labelText: 'Nombre:',
                    labelStyle: AppTextStyle.text20tW600InputTextStyle,
                    hintText: 'Introduzca un nombre para identificar el animal',
                  ),
                ),
              ),
              Divider(),
              Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(
                      left: ratioCalculator.calculateWidth(13),
                      right: ratioCalculator.calculateWidth(9),
                    ),
                    child: Icon(
                      Icons.input,
                      size: 36,
                      color: AppColors.inputLoginColor,
                    ),
                  ),
                  Text(
                    "Ingrese el ancho",
                    style: AppTextStyle.text20tW600InputTextStyle,
                  ),
                  Container(
                    margin: EdgeInsets.only(
                      left: ratioCalculator.calculateWidth(20),
                      right: ratioCalculator.calculateWidth(15),
                    ),
                    padding: EdgeInsets.all(4),
                    decoration: BoxDecoration(
                      color: AppColors.inputLoginColor,
                      borderRadius: BorderRadius.circular(14),
                    ),
                    child: Row(
                      children: [
                        Container(
                          margin: EdgeInsets.only(
                            right: ratioCalculator.calculateWidth(3),
                          ),
                          decoration: BoxDecoration(
                            color: AppColors.textHomeColor,
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(14),
                              bottomLeft: Radius.circular(14),
                            ),
                          ),
                          child: Container(
                            margin: EdgeInsets.only(
                              top: ratioCalculator.calculateHeight(15),
                              bottom: ratioCalculator.calculateHeight(15),
                              left: ratioCalculator.calculateWidth(20),
                              right: ratioCalculator.calculateWidth(25),
                            ),
                            child: Text(
                              "103",
                              style:
                                  AppTextStyle.text20tW600TitleBlackTextStyle,
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(
                            right: ratioCalculator.calculateWidth(4),
                          ),
                          child: Text(
                            "Cm",
                            style: AppTextStyle.text18W600TextTextStyle,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: ratioCalculator.calculateHeight(19),
              ),
              Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(
                      left: ratioCalculator.calculateWidth(13),
                      right: ratioCalculator.calculateWidth(9),
                    ),
                    child: Icon(
                      Icons.input,
                      size: 36,
                      color: AppColors.inputLoginColor,
                    ),
                  ),
                  Text(
                    "Ingrese el largo",
                    style: AppTextStyle.text20tW600InputTextStyle,
                  ),
                  Container(
                    margin: EdgeInsets.only(
                      left: ratioCalculator.calculateWidth(27),
                      right: ratioCalculator.calculateWidth(15),
                    ),
                    padding: EdgeInsets.all(4),
                    decoration: BoxDecoration(
                      color: AppColors.inputLoginColor,
                      borderRadius: BorderRadius.circular(14),
                    ),
                    child: Row(
                      children: [
                        Container(
                          margin: EdgeInsets.only(
                            right: ratioCalculator.calculateWidth(3),
                          ),
                          decoration: BoxDecoration(
                            color: AppColors.textHomeColor,
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(14),
                              bottomLeft: Radius.circular(14),
                            ),
                          ),
                          child: Container(
                            margin: EdgeInsets.only(
                              top: ratioCalculator.calculateHeight(15),
                              bottom: ratioCalculator.calculateHeight(15),
                              left: ratioCalculator.calculateWidth(20),
                              right: ratioCalculator.calculateWidth(25),
                            ),
                            child: Text(
                              "103",
                              style:
                                  AppTextStyle.text20tW600TitleBlackTextStyle,
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(
                            right: ratioCalculator.calculateWidth(4),
                          ),
                          child: Text(
                            "Cm",
                            style: AppTextStyle.text18W600TextTextStyle,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Divider(),
              Container(
                margin: EdgeInsets.only(
                  top: ratioCalculator.calculateHeight(11),
                  bottom: ratioCalculator.calculateHeight(8),
                  left: ratioCalculator.calculateWidth(139),
                  right: ratioCalculator.calculateWidth(138),
                ),
                child: Text(
                  "Resumen",
                  style: AppTextStyle.text20tW600TitleTextStyle,
                ),
              ),
              Divider(),
            ],
          ),
        ),
      ),
    );
  }
}
