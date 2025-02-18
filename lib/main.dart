import 'package:cyclestore/features/cart_screen.dart';
import 'package:cyclestore/features/dashboard_screen.dart';
import 'package:cyclestore/features/home_screen.dart';
import 'package:cyclestore/features/product_page.dart';
import 'package:cyclestore/features/profile_screen.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(
  DevicePreview(
    enabled: true,
    builder: (context) => MyApp(),
  ),
);

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      darkTheme: ThemeData.dark(),
      debugShowCheckedModeBanner: false,
      home: DashBoardScreen(),
    );
  }
}
