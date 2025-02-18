import 'package:cyclestore/features/home_screen.dart';
import 'package:cyclestore/features/profile_screen.dart';
import 'package:flutter/material.dart';
import 'dart:ui';

class DashBoardScreen extends StatefulWidget {
  const DashBoardScreen({super.key});

  @override
  State<DashBoardScreen> createState() => _DashBoardScreenState();
}

class _DashBoardScreenState extends State<DashBoardScreen> {
  int _selectedIndex = 0;

  final List<IconData> _icons = [
    Icons.home,
    Icons.search,
    Icons.favorite,
    Icons.notifications,
    Icons.person,
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  final List<Widget> screen = [
    HomeScreen(),
    Container(),
    Container(),
    Container(),
    ProfileScreen()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screen[_selectedIndex],
      bottomNavigationBar: InkWell(
        onTap: () {
          _onItemTapped(_selectedIndex);
        },
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            Container(
              height: 80,
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Color.fromRGBO(54, 62, 81, 1),
                    Color.fromRGBO(24, 28, 36, 1),
                  ],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: List.generate(_icons.length, (index) {
                  bool isSelected = _selectedIndex == index;
                  return GestureDetector(
                    onTap: () => _onItemTapped(index),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        if (!isSelected)
                          Icon(
                            _icons[index],
                            color: Colors.grey,
                            size: 25,
                          ),
                      ],
                    ),
                  );
                }),
              ),
            ),
            Positioned(
              bottom: 40,
              left: MediaQuery.of(context).size.width /
                      _icons.length *
                      _selectedIndex +
                  10,
              child: ClipPath(
                clipper: RoundedRhombusClipper(),
                child: Container(
                  width: 80,
                  height: 80,
                  decoration: BoxDecoration(
                    gradient: const LinearGradient(
                      colors: [
                        Color.fromRGBO(24, 28, 36, 1),
                        Color.fromRGBO(78, 74, 242, 1),
                      ],
                    ),
                  ),
                  child: Center(
                    child: Icon(
                      _icons[_selectedIndex],
                      color: Colors.white,
                      size: 30,
                    ),
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

class RoundedRhombusClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();

    double radius = 12.0;

    path.moveTo(size.width / 2, 0);

    path.lineTo(size.width - radius, size.height / 2 - radius);

    path.lineTo(size.width / 2, size.height - radius);

    path.lineTo(radius, size.height / 2 + radius);

    path.lineTo(size.width / 2, 0);

    path.close();

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }
}
