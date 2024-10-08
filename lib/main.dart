import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:toggle_provider/tgScreen.dart';
import 'package:toggle_provider/togglepro.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => ToggleProvider(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
         
        ),
        home:ToggleScreen(),
      ),
    );
  }
}

