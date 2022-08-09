import 'package:flutter/material.dart';
import 'package:koraplay/models/onboard_model.dart';
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
          }),
    );
  }
}
