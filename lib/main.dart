import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:task/provider/market_place_provider.dart';
import 'package:task/provider/quick_info_provider.dart';
import 'package:task/screens/ai_screen.dart';
import 'package:task/screens/home_screen.dart';
import 'package:task/screens/market_place_screen.dart';

void main() {
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(create: (_) => QuickInfoProvider()),
      ChangeNotifierProvider(create: (_) => MarketPlaceProvider()),
    ],
    child: const MainApp(),
  ));
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(
            colorScheme: const ColorScheme.light(
          background: Color(0xFFFFFFFF),
          onBackground: Color(0xFF0C0C0C),
          primary: Color(0xFF7D23E0),
          onPrimary: Colors.white,
          secondary: Color(0xFFF6EFFE),
          onSecondary: Color(0xFFE8D4FF),
          primaryContainer: Color(0xFFF2F7FB),
          onPrimaryContainer: Color(0xFFD2EAFE),
          secondaryContainer: Color(0xFF16763E),
          onSecondaryContainer: Color(0xFFE67A1F),
          error: Colors.red,
          onError: Colors.white,
        )),
        debugShowCheckedModeBanner: false,
        initialRoute: '/',
        routes: {
          //'/': (context) => DashboardNavigation(),
          '/': (context) => const HomeScreen(),
          '/ai': (context) => const AiScreen(),
          '/market_place': (context) => const MarketPlaceScreen(),
        });
  }
}
