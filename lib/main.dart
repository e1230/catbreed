import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:catbreed/screens/screens.dart';
import 'package:catbreed/services/catbreeds.service.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [ChangeNotifierProvider(create: (_) => CatbreedsService())],
      child: MaterialApp(
        title: 'Catbreeds',
        theme: ThemeData.light().copyWith(
          appBarTheme: AppBarTheme(
            centerTitle: true,
            color: Colors.white,
            titleTextStyle: TextStyle(
                color: Colors.black,
                fontFamily: "arial",
                fontSize: 22,
                fontWeight: FontWeight.bold),
          ),
        ),
        initialRoute: "splash",
        routes: {
          "splash": (_) => SplashScreen(),
          "home": (_) => HomeScreen(),
          "details": (_) => DetailsScreen()
        },
      ),
    );
  }
}
