import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';

class Practice extends StatefulWidget {
  const Practice({super.key});

  @override
  State<Practice> createState() => _PracticeState();
}

class _PracticeState extends State<Practice> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Stack(
          children: [
            // Border Layer (Larger to prevent cutting)
            ClipPath(
              clipper: DiagonalPathClipperTwo(),
              child: Container(
                height: 260, // Slightly larger than main container
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.transparent, // Make it transparent so only border is visible
                  border: Border.all(color: Colors.white, width: 4), // White border
                ),
              ),
            ),
            // Main Clipped Container
            ClipPath(
              clipper: DiagonalPathClipperTwo(),
              child: Container(
                height: 250,
                width: double.infinity,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                    colors: [
                      Color.fromRGBO(36, 44, 59, 1),
                      Color.fromRGBO(55, 182, 233, 0.4),
                    ],
                  ),
                ),
                child: Padding(
                  padding: EdgeInsets.all(16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset(
                        "assets/images/cycle.png",
                        width: 120,
                        fit: BoxFit.contain,
                      ),
                      SizedBox(height: 10),
                      Text(
                        '30% Off',
                        style: TextStyle(
                          fontSize: 32,
                          fontWeight: FontWeight.bold,
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
