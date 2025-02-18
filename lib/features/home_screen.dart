import 'package:cyclestore/features/product_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(36, 44, 59, 1),
      appBar: AppBar(
        title: const Text(
          "Choose Your Bike",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: Container(
              height: 45,
              width: 45,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Colors.white.withOpacity(0.2),
                boxShadow: [
                  BoxShadow(
                    color: Color.fromRGBO(75, 76, 237, 1),
                    blurRadius: 10,
                    spreadRadius: 2,
                  ),
                ],
              ),
              child: const Icon(
                CupertinoIcons.search,
                color: Colors.white,
                size: 26,
              ),
            ),
          ),
        ],
        backgroundColor: Colors.transparent,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                // Background Image
                Positioned.fill(
                  child: Image.asset(
                    "assets/images/bg.png",
                    fit: BoxFit.cover,
                  ),
                ),

                // Clipped Card with Proper Border Alignment
                Positioned(
                  top: 20,
                  left: 20,
                  right: 20,
                  child: Stack(
                    children: [
                      ClipPath(
                        clipper: DiagonalPathClipperTwo(),
                        child: Container(
                          height: 230,
                          decoration: BoxDecoration(
                            color: Colors.white.withOpacity(0.3),
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ),
                      ClipPath(
                        clipper: DiagonalPathClipperTwo(),
                        child: Container(
                          height: 220,
                          margin: const EdgeInsets.all(4),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withOpacity(0.3),
                                blurRadius: 10,
                                spreadRadius: 2,
                              ),
                            ],
                          ),
                          child: Stack(
                            children: [
                              Align(
                                alignment: Alignment.center,
                                child: Image.asset(
                                  "assets/images/cycle.png",
                                  fit: BoxFit.cover,
                                ),
                              ),
                              Positioned(
                                bottom: 10,
                                left: 16,
                                child: Text(
                                  '30% Off',
                                  style: TextStyle(
                                    fontSize: 24,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white.withOpacity(0.8),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                // Buttons Stack
                Positioned(
                  top: 270,
                  left: 15,
                  child: SizedBox(
                    height: 70,
                    width: 0,
                    child: Stack(
                      clipBehavior: Clip.none,
                      children: [
                        _buildButton("All", 0, 0,
                            gradient: LinearGradient(
                              colors: [
                                const Color.fromRGBO(52, 200, 232, 1),
                                const Color.fromRGBO(78, 74, 242, 1),
                              ],
                            )),
                        _buildButton("", 85, -10,
                            iconPath: "assets/images/cycleicon.png"),
                        _buildButton("", 160, -20,
                            iconPath: "assets/images/Union.png"),
                        _buildButton("", 240, -30,
                            iconPath: "assets/images/mountain.png"),
                        _buildButton("", 320, -40,
                            iconPath: "assets/images/helmet.png"),
                      ],
                    ),
                  ),
                ),

                // GridView for Products
                Padding(
                  padding: const EdgeInsets.only(top: 350),
                  child: GridView.count(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    crossAxisCount: 2,
                    padding: const EdgeInsets.all(16),
                    mainAxisSpacing: 16,
                    crossAxisSpacing: 16,
                    childAspectRatio: 0.65,
                    children: [
                      InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => ProductPage()));
                          },
                          child: _buildProductCard(
                              "Road Bike",
                              "Pigeout - LR01",
                              "200rs",
                              "assets/images/product_cycle.png")),
                      _buildProductCard("Road Helmet", "Smith - Trade", "200rs",
                          "assets/images/helmet_road.png"),
                      _buildProductCard("Road Helmet", "Smith - Trade", "200rs",
                          "assets/images/product_cycle.png"),
                      _buildProductCard("Road Helmet", "Smith - Trade", "200rs",
                          "assets/images/helmet_road.png"),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

// Helper method to build buttons
Widget _buildButton(String text, double left, double top,
    {LinearGradient? gradient, String? iconPath}) {
  return Positioned(
    top: top,
    left: left,
    child: Container(
      height: 60,
      width: 60,
      decoration: BoxDecoration(
        gradient: gradient ??
            LinearGradient(
              colors: [
                const Color.fromRGBO(53, 63, 84, 1),
                const Color.fromRGBO(34, 40, 52, 1),
              ],
            ),
        boxShadow: [
          BoxShadow(
            color: const Color.fromRGBO(0, 0, 0, 0.3),
            blurRadius: 38,
            spreadRadius: 0,
            offset: const Offset(0, 19),
          ),
          BoxShadow(
            color: const Color.fromRGBO(0, 0, 0, 0.22),
            blurRadius: 12,
            spreadRadius: 0,
            offset: const Offset(0, 15),
          ),
        ],
        borderRadius: BorderRadius.circular(15),
      ),
      child: Center(
        child: iconPath != null
            ? Image.asset(iconPath)
            : Text(
                text,
                style: const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w900,
                  fontSize: 18,
                ),
              ),
      ),
    ),
  );
}

// Helper method to build product cards
Widget _buildProductCard(
    String title, String subtitle, String price, String imagePath) {
  return Container(
    decoration: BoxDecoration(
      color: Colors.blue.shade900.withOpacity(0.3),
      borderRadius: BorderRadius.circular(16),
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Stack(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 30.0),
              child: ClipRRect(
                borderRadius:
                    const BorderRadius.vertical(top: Radius.circular(16)),
                child: Image.asset(
                  imagePath,
                  height: 120,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Positioned(
              right: 8,
              top: 8,
              child: Icon(
                Icons.favorite_border,
                color: Colors.blue.shade300,
              ),
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.all(12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: TextStyle(
                  color: Colors.blue.shade300,
                  fontSize: 14,
                ),
              ),
              const SizedBox(height: 4),
              Text(
                subtitle,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
              const SizedBox(height: 8),
              Text(
                price,
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ],
    ),
  );
}
