import 'package:dictionary_app_provider/screens/search_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      routes: {
        '/': (context) => SearchScreen(),
        SearchScreen.routeName: (context) => SearchScreen()
      },
    );
  }
}
