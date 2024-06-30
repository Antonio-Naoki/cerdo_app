import 'package:cerdo_app/global/firebase/firebase_api.dart';
import 'package:cerdo_app/global/ratio_calculator.dart';
import 'package:cerdo_app/pages/front_page/view/front_page.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(
    options: const FirebaseOptions(
      apiKey: 'AIzaSyDZu8kHNsWDdBgq7_Jmffjru6t2_1YLl3k',
      appId: '1:761040881366:android:601490b5e793bd9dae6b77',
      messagingSenderId: '761040881366',
      projectId: 'capp-32a9b',
      storageBucket: 'capp-32a9b.appspot.com',
    ),
  );

  await FirebaseApi().initNotifications();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final RatioCalculator ratioCalculator = RatioCalculator();
    ratioCalculator.updateRatio(
      context: context,
      figmaWidth: 390,
      figmaHeight: 844,
    );

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(useMaterial3: false),
      home: const FrontPage(),
    );
  }
}
