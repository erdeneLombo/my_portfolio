import 'package:flutter/material.dart';
import 'package:my_portfolio/firebase_options.dart';
import 'package:my_portfolio/responsive/desktop_screen.dart';
import 'package:my_portfolio/responsive/mobile_screen.dart';
import 'package:my_portfolio/responsive/responsive_layout.dart';
import 'package:my_portfolio/responsive/tablet_screen.dart';
import 'package:firebase_core/firebase_core.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Portfolio',
      theme: ThemeData(),
      home: const ResponsiveLayout(
          mobileScreen: MobileScreen(),
          tabletScreen: TabletScreen(),
          desktopScreen: DesktopScreen()),
    );
  }
}
