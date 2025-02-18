import 'package:carousel_slider/carousel_slider.dart';
import 'package:cyclestore/features/cart_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProductPage extends StatefulWidget {
  const ProductPage({super.key});

  @override
  State<ProductPage> createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage> {
  final List<String> image = [
    "assetS/images/cycle.png",
    "assetS/images/product_cycle.png",
    "assetS/images/product_img.png",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomSheet: Container(
        height: 500,
        width: double.infinity,
        decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                const Color.fromRGBO(53, 63, 84, 1),
                const Color.fromRGBO(34, 40, 52, 1),
              ],
            ),
            borderRadius: BorderRadius.circular(20)),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 30),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      GestureDetector(
                        onTap: () {},
                        child: Container(
                          height: 45,
                          width: 150,
                          decoration: BoxDecoration(
                            color: Color.fromRGBO(56, 68, 90, 1),
                            borderRadius: BorderRadius.circular(8),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withOpacity(0.8),
                                offset: Offset(4, 4),
                                blurRadius: 5,
                              ),
                              BoxShadow(
                                color: Colors.white.withOpacity(0.1),
                                offset: Offset(-2, -4),
                                blurRadius: 1,
                              ),
                            ],
                          ),
                          child: Center(
                            child: Text(
                              "Descreption",
                              style: TextStyle(
                                  color: Colors.blue.shade600, fontSize: 20),
                            ),
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {},
                        child: Container(
                          height: 45,
                          width: 150,
                          decoration: BoxDecoration(
                            color: Color.fromRGBO(40, 48, 63, 1),
                            borderRadius: BorderRadius.circular(8),
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.black.withOpacity(0.8),
                                  blurRadius: 5,
                                  spreadRadius: -5,
                                  blurStyle: BlurStyle.inner),
                              BoxShadow(
                                  color: Colors.white.withOpacity(1),
                                  blurRadius: 5,
                                  blurStyle: BlurStyle.inner,
                                  spreadRadius: -5),
                            ],
                          ),
                          child: Center(
                            child: Text(
                              "Specification",
                              style: TextStyle(
                                  color: Colors.grey.shade400, fontSize: 20),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Text(
                    "PEUGEOT - LR01",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    "The LR01 uses the same design as the most iconic bikes from PEUGEOT Cycles' 130-year history and combines it with agile, dynamic performance that's perfectly suited to navigating today's cities. As well as a lugged steel frame and iconic PEUGEOT black-and-white chequer design, this city bike also features a 16-speed Shimano Claris drivetrain.",
                    style: TextStyle(color: Colors.grey, fontSize: 18),
                  ),
                ],
              ),
            ),
            SizedBox(height: 12),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                height: 110,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Color.fromRGBO(38, 46, 61, 1),
                    borderRadius: BorderRadius.circular(40),
                    border: Border.all(color: Colors.grey.shade700, width: 1)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      "Rs 1,999.99",
                      style: TextStyle(color: Colors.blue, fontSize: 25),
                    ),
                    Material(
                      elevation: 10,
                      shadowColor: Colors.black,
                      color: Colors.transparent,
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              minimumSize: Size(50, 50),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                              backgroundColor: Colors.blue),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => CartScreen()));
                          },
                          child: Text(
                            "Add to Cart",
                            style: TextStyle(color: Colors.white, fontSize: 20),
                          )),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: const Text(
          "PEUGEOT - LR01",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: GestureDetector(
            onTap: (){
              Navigator.pop(context);
            },
            child: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    const Color.fromRGBO(52, 200, 232, 1),
                    const Color.fromRGBO(78, 74, 242, 1),
                  ],
                ),
                boxShadow: [
                  BoxShadow(
                    color: Color.fromRGBO(0, 0, 0, 0.2),
                    blurRadius: 50,
                    spreadRadius: -10,
                    offset: Offset(0, 18),
                  ),
                ],
                borderRadius: BorderRadius.circular(10),
              ),
              child: Icon(
                CupertinoIcons.left_chevron,
                color: Colors.white,
                size: 30,
              ),
            ),
          ),
        ),
      ),
      body: Stack(
        alignment: Alignment.topCenter,
        children: [
          Positioned.fill(
            child: Image.asset(
              "assets/images/Rectangle 475.png",
              fit: BoxFit.cover,
            ),
          ),
          SafeArea(
            child: Center(
              child: Column(
                children: [
                  SizedBox(height: 35),
                  CarouselSlider(
                    items: image.map((imgPath) {
                      return Image.asset(
                        imgPath,
                        fit: BoxFit.cover,
                      );
                    }).toList(),
                    options: CarouselOptions(
                      height: 200,
                      aspectRatio: 16 / 10,
                      viewportFraction: 0.8,
                      initialPage: 0,
                      enableInfiniteScroll: true,
                      reverse: false,
                      autoPlay: true,
                      autoPlayInterval: const Duration(seconds: 3),
                      autoPlayAnimationDuration:
                          const Duration(milliseconds: 800),
                      autoPlayCurve: Curves.fastOutSlowIn,
                      enlargeCenterPage: true,
                      enlargeFactor: 0.3,
                      scrollDirection: Axis.horizontal,
                      animateToClosest: true,
                    ),
                  ),
                  SizedBox(height: 20),
                  Text(
                    "PEUGEOT - LR01",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w900,
                        fontSize: 25),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      backgroundColor: const Color.fromRGBO(36, 44, 59, 1),
    );
  }
}
