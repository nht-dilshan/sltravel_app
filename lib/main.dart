import 'package:flutter/material.dart';
import 'screens/welcome_page.dart';
import 'screens/signup_page.dart';
import 'screens/signin_page.dart';
import 'screens/home_page.dart';
import 'screens/all_places_screen.dart';
import 'screens/all_categories.dart';
import 'screens/all_beach.dart';
import 'screens/all_adventure.dart';
import 'screens/all_cultural.dart';
import 'screens/all_forest.dart';
import 'screens/all_historical.dart';
import 'screens/all_mountain.dart';
import 'screens/all_village.dart';
import 'screens/all_wild_life.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Travel App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.green[900],
        colorScheme: ColorScheme.fromSwatch().copyWith(
          primary: Colors.green[900],
          secondary: Colors.green[600],
        ),
        scaffoldBackgroundColor: Colors.white,
        textTheme: TextTheme(
          headlineLarge: const TextStyle(
            color: Colors.black,
            fontSize: 32,
            fontWeight: FontWeight.bold,
          ),
          headlineMedium: const TextStyle(
            color: Colors.black,
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
          bodyLarge: const TextStyle(
            color: Colors.black87,
            fontSize: 16,
          ),
          bodyMedium: const TextStyle(
            color: Colors.black54,
            fontSize: 14,
          ),
        ),
        inputDecorationTheme: InputDecorationTheme(
          filled: true,
          fillColor: Colors.grey[200],
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: BorderSide.none,
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: BorderSide.none,
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: BorderSide(color: Colors.green[900]!),
          ),
          errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: BorderSide(color: Colors.red),
          ),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.green[900],
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            padding: EdgeInsets.symmetric(vertical: 16),
          ),
        ),
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => WelcomePage(),
        '/signup': (context) => SignUpPage(),
        '/signin': (context) => SignInPage(),
        '/home': (context) => HomePage(),
        '/allplaces': (context) => AllPlacesScreen(),
        '/allcategories': (context) => CategoriesScreen(),
        '/allbeach': (context) => AllBeachScreen(),
        '/alladventure': (context) => AllAdventureScreen(),
        '/allcultural': (context) => AllCulturalScreen(),
        '/allforest': (context) => AllForestScreen(),
        '/allhistorical': (context) => AllHistoricalScreen(),
        '/allmountain': (context) => AllMountainScreen(),
        '/allvillage': (context) => AllVillageScreen(),
        '/allwildlife': (context) => AllWildLifeScreen(),
      },
    );
  }
}
