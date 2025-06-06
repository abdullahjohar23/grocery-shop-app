import 'package:flutter/material.dart';
import 'package:grocery_shop_app/pages/landing.dart';

void main() {
    runApp(const MyApp());
}

class MyApp extends StatelessWidget {
    const MyApp({super.key});

    @override
    Widget build(BuildContext context) {
        return MaterialApp(
            debugShowCheckedModeBanner: false,
            home: Landing(),
        );
    }
}