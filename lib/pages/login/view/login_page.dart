import 'package:cerdo_app/global/app_color_style.dart';
import 'package:cerdo_app/global/app_text_style.dart';
import 'package:cerdo_app/global/ratio_calculator.dart';
import 'package:cerdo_app/pages/home/view/home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final RatioCalculator ratioCalculator = RatioCalculator();
  bool _obscureText = true;
  IconData _icon = Icons.visibility_off;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(
                  top: ratioCalculator.calculateHeight(53),
                  bottom: ratioCalculator.calculateHeight(4),
                ),
                child: Image(
                  image: AssetImage('assets/images/logo.png'),
                  width: ratioCalculator.calculateWidth(200),
                  height: ratioCalculator.calculateHeight(200),
                ).animate().fade(duration: 500.ms).scale(delay: 500.ms),
              ),
              Container(
                  margin: EdgeInsets.only(
                    left: ratioCalculator.calculateWidth(85),
                    right: ratioCalculator.calculateWidth(86),
                    top: ratioCalculator.calculateHeight(53),
                    bottom: ratioCalculator.calculateHeight(4),
                  ),
                  child: Text(
                    "Bienvenido",
                    style: AppTextStyle.text36W600TextStyle,
                  ).animate().fade(duration: 500.ms).scale(delay: 500.ms)),
              Container(
                margin: EdgeInsets.only(
                  left: ratioCalculator.calculateWidth(61),
                  right: ratioCalculator.calculateWidth(61),
                  bottom: ratioCalculator.calculateHeight(21),
                ),
                child: Text(
                  "Tu pesaje nunca fue tan sencillo",
                  style: AppTextStyle.text20W600TextStyle,
                  textAlign: TextAlign.center,
                ).animate().fade(duration: 500.ms).scale(delay: 500.ms),
              ),
              Container(
                margin: EdgeInsets.only(
                  left: ratioCalculator.calculateWidth(46),
                  right: ratioCalculator.calculateWidth(42),
                ),
                child: TextField(
                  decoration: InputDecoration(
                    labelText: "Correo Electronico",
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
                    suffixIcon: Icon(
                      Icons.person,
                      color: AppColors.iconInputLoginColor,
                    ),
                  ),
                  style: AppTextStyle.text16W600InputTextStyle,
                ).animate().fade(duration: 500.ms).scale(delay: 500.ms),
              ),
              SizedBox(
                height: ratioCalculator.calculateHeight(27),
              ),
              Container(
                margin: EdgeInsets.only(
                  left: ratioCalculator.calculateWidth(46),
                  right: ratioCalculator.calculateWidth(42),
                ),
                child: TextField(
                  obscureText: _obscureText,
                  decoration: InputDecoration(
                    labelText: "Contraseña",
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
                    suffixIcon: GestureDetector(
                      onTap: () {
                        setState(() {
                          _obscureText = !_obscureText;
                          _icon = _obscureText
                              ? Icons.visibility_off
                              : Icons.visibility;
                        });
                      },
                      child: Icon(
                        _icon,
                        color: AppColors.iconInputLoginColor,
                      ),
                    ),
                  ),
                  style: AppTextStyle.text16W600InputTextStyle,
                ).animate().fade(duration: 500.ms).scale(delay: 500.ms),
              ),
              Container(
                margin: EdgeInsets.only(
                  top: ratioCalculator.calculateWidth(13),
                  left: ratioCalculator.calculateWidth(110),
                ),
                child: Text(
                  "¿Olvidaste tu contraseña?",
                  style: AppTextStyle.text13W600InputTextStyle,
                ).animate().fade(duration: 500.ms).scale(delay: 500.ms),
              ),
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
                  ),
                  child: ButtonBar(
                    alignment: MainAxisAlignment.center,
                    children: [
                      TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => HomePage()),
                          );
                        },
                        child: const Text(
                          "Ingresar",
                          style: AppTextStyle.text25W600InputTextStyle,
                        ),
                      ),
                    ],
                  )).animate().fade(duration: 500.ms).scale(delay: 500.ms),
              const SizedBox(
                height: 15,
              ),
              Icon(
                Icons.fingerprint,
                size: 44.0,
                color: AppColors.inputLoginColor,
                // controller.state.hasCredentials ? Colors.white : Colors.red,
              ).animate().fade(duration: 500.ms).scale(delay: 500.ms),
            ],
          ),
        ),
      ),
    );
  }
}
