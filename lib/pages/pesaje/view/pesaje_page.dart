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

final List<String> items = ['Cerdo', 'Ganado', 'Perro', 'Gato'];
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
                height: ratioCalculator.calculateHeight(42),
              ),
              Container(
                margin: EdgeInsets.only(
                  left: ratioCalculator.calculateWidth(13),
                  right: ratioCalculator.calculateWidth(98),
                  bottom: ratioCalculator.calculateWidth(54),
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
            ],
          ),
        ),
      ),
    );
  }
}
