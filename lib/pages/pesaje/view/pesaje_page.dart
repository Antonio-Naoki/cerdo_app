import 'package:cerdo_app/global/app_color_style.dart';
import 'package:cerdo_app/global/app_text_style.dart';
import 'package:cerdo_app/global/ratio_calculator.dart';
import 'package:cerdo_app/pages/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class PesajePage extends StatefulWidget {
  const PesajePage({super.key});

  @override
  State<PesajePage> createState() => _PesajePageState();
}

final List<String> items = [
  'Cerdo',
  'Bovino',
  'Caballo',
  'Caprino',
  'Conejo',
  'Ave de corral'
];
String? selectedValue;

class _PesajePageState extends State<PesajePage> {
  final RatioCalculator ratioCalculator = RatioCalculator();
  double perimetroToracico = 0.0;
  double longitudCuerpo = 0.0;
  double pesoEstimado = 0.0;
  // double perimetroToracico = 0.0;
  // double longitudCuerpo = 0.0;
  double peso = 0.0;
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
                      top: ratioCalculator.calculateHeight(46),
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
                      top: ratioCalculator.calculateHeight(41),
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
                            width: 40,
                            margin: EdgeInsets.only(
                              left: ratioCalculator.calculateWidth(10),
                              right: ratioCalculator.calculateWidth(10),
                            ),
                            child: TextFormField(
                              keyboardType: TextInputType.number,
                              onChanged: (value) {
                                setState(() {
                                  perimetroToracico =
                                      double.tryParse(value) ?? 0.0;
                                });
                              },
                              decoration: InputDecoration(
                                hintText: '---',
                                border: InputBorder.none,
                              ),
                              style: AppTextStyle.text16W600TextInputTextStyle,
                              textAlign: TextAlign.center,
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
                            width: 40,
                            margin: EdgeInsets.only(
                              left: ratioCalculator.calculateWidth(10),
                              right: ratioCalculator.calculateWidth(10),
                            ),
                            child: TextFormField(
                              keyboardType: TextInputType.number,
                              onChanged: (value) {
                                setState(() {
                                  longitudCuerpo =
                                      double.tryParse(value) ?? 0.0;
                                });
                              },
                              decoration: InputDecoration(
                                hintText: '---',
                                border: InputBorder.none,
                              ),
                              style: AppTextStyle.text16W600TextInputTextStyle,
                              textAlign: TextAlign.center,
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
              Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(
                      left: ratioCalculator.calculateWidth(13),
                    ),
                    child: Text(
                      "Animal",
                      style: AppTextStyle.text20tW600TitleTextStyle,
                    ),
                  ),
                  Spacer(),
                  Container(
                    margin: EdgeInsets.only(
                      right: ratioCalculator.calculateWidth(15),
                    ),
                    child: Text(
                      "vaca",
                      style: AppTextStyle.text20tW600TitleTextStyle,
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(
                      top: ratioCalculator.calculateHeight(11),
                      left: ratioCalculator.calculateWidth(13),
                    ),
                    child: Text(
                      "Nombre",
                      style: AppTextStyle.text20tW600TitleTextStyle,
                    ),
                  ),
                  Spacer(),
                  Container(
                    margin: EdgeInsets.only(
                      right: ratioCalculator.calculateWidth(15),
                    ),
                    child: Text(
                      "Luna",
                      style: AppTextStyle.text20tW600TitleTextStyle,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: ratioCalculator.calculateHeight(5),
              ),
              Divider(
                color: AppColors.textTitleColor,
                thickness: 2,
                indent: 100.0,
                endIndent: 100.0,
              ),
              Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(
                      top: ratioCalculator.calculateHeight(11),
                      left: ratioCalculator.calculateWidth(13),
                    ),
                    child: Text(
                      "Total",
                      style: AppTextStyle.text32W600TextStyle,
                    ),
                  ),
                  Spacer(),
                  Container(
                    margin: EdgeInsets.only(
                      right: ratioCalculator.calculateWidth(15),
                    ),
                    child: Text(
                      "Kgs: ${pesoEstimado == 0.0 ? '0.00' : pesoEstimado.toStringAsFixed(2)}",
                      style: AppTextStyle.text20tW600TitleTextStyle,
                    ),
                  ),
                ],
              ),
              Divider(),
              Container(
                margin: EdgeInsets.only(
                  top: ratioCalculator.calculateHeight(8),
                  left: ratioCalculator.calculateWidth(15),
                  right: ratioCalculator.calculateWidth(15),
                ),
                child: Column(
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        if (selectedValue == "Cerdo") {
                          double peso = calcularPesoCerdo(
                              perimetroToracico, longitudCuerpo);
                          setState(() {
                            pesoEstimado = peso;
                          });
                        } else if (selectedValue == "Bovino") {
                          peso = calcularPesoGanado(
                              perimetroToracico, longitudCuerpo);
                          setState(() {
                            pesoEstimado = peso;
                          });
                        } else {
                          showToast("¡Selecciona un animal!");
                        }
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: AppColors.textFrontColor,
                        minimumSize: Size(300, 50),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(14),
                        ),
                      ),
                      child: const Text(
                        "Calcular",
                        style: AppTextStyle.text30W600TextTextStyle,
                      ),
                    ),
                    SizedBox(
                      height: ratioCalculator.calculateHeight(10),
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: AppColors.textFrontColor,
                        minimumSize: Size(300, 50),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(14),
                        ),
                      ),
                      child: const Text(
                        "Descargar",
                        style: AppTextStyle.text30W600TextTextStyle,
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

// Formula para calcular el peso del cerdo.
double calcularPesoCerdo(double anchoCorazon, double largoCerdo) {
  // Elevamos al cuadrado la anchura del corazón
  double anchuraResultante = anchoCorazon * anchoCorazon;

  // Multiplicamos la anchura resultante por el largo del cerdo y por la constante 69.3
  double peso = anchuraResultante * largoCerdo * 69.3;

  return peso;
}

// Formula para calcular el peso del ganado.
double calcularPesoGanado(double perimetroToracico, double longitudCuerpo) {
  // Fórmula de Schaeffer adaptada
  double peso =
      (perimetroToracico * perimetroToracico * longitudCuerpo) / 10838;
  return peso;
}
