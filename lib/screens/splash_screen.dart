import 'dart:async';
import 'package:flutter/material.dart';
import 'welcome_page.dart';
import 'package:google_fonts/google_fonts.dart'; // Add this package to pubspec.yaml

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    
    // Animation setup
    _animationController = AnimationController(
      duration: Duration(seconds: 2),
      vsync: this,
    );
    
    _animation = CurvedAnimation(
      parent: _animationController,
      curve: Curves.easeInOut,
    );

    _animationController.forward();

    Timer(Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => WelcomePage()),
      );
    });
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Colors.green[50]!,
              Colors.green[100]!,
            ],
          ),
        ),
        child: Center(
          child: FadeTransition(
            opacity: _animation,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Stack(
                  alignment: Alignment.center,
                  children: [
                    Icon(
                      Icons.trip_origin,
                      size: 120,
                      color: Colors.green[200],
                    ),
                    Icon(
                      Icons.flight_takeoff,
                      size: 80,
                      color: Colors.green[900],
                    ),
                  ],
                ),
                SizedBox(height: 30),
                Text(
                  'Plan Your Trip',
                  style: GoogleFonts.poppins(
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                    color: Colors.green[900],
                    letterSpacing: 1.5,
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  'Your Journey Begins Here',
                  style: GoogleFonts.questrial(
                    fontSize: 18,
                    color: Colors.green[800],
                    letterSpacing: 1.2,
                  ),
                ),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.hotel, color: Colors.green[700], size: 24),
                    SizedBox(width: 20),
                    Icon(Icons.restaurant, color: Colors.green[700], size: 24),
                    SizedBox(width: 20),
                    Icon(Icons.local_activity, color: Colors.green[700], size: 24),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}