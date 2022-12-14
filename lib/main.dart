import 'package:flutter/material.dart';
import 'package:koraplay/models/category_model.dart';
import 'package:koraplay/models/doctor_model.dart';
import 'package:koraplay/models/onboard_model.dart';
// import 'package:koraplay/ui/pages/details_page.dart';
import 'package:koraplay/ui/pages/main_page.dart';
import 'package:koraplay/ui/pages/welcome_page.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (ctx) => OnboardItemsModel()),
        ChangeNotifierProvider(create: (ctx) => CategoryModel()),
        ChangeNotifierProvider(create: (ctx) => DoctorModel()),
      ],
      child: MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Flutter Demo',
          theme: ThemeData(
            primarySwatch: Colors.blue,
          ),
          initialRoute: '/',
          routes: {
            '/': (context) => const WelcomePage(),
            '/mainPage': (context) => const MainPage(),
            // '/detailsPage': (context) =>  DetailsPage(data: ,),
          }),
    );
  }
}
