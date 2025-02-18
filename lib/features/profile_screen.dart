import 'package:cyclestore/features/dashboard_screen.dart';
import 'package:cyclestore/features/home_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 70,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Container(
                  height: 40,
                  width: 40,
                  decoration:BoxDecoration(
                      color:  Color.fromRGBO(244, 244, 244, 1),
                      borderRadius: BorderRadius.circular(20)
                  ),
                  child: Center(child: Icon(Icons.arrow_back_ios,color: Color.fromRGBO(142, 108, 239, 1),)),
                ),
              ),
              SizedBox(
                height: 50,
              ),
              Container(
                height: 140,
                width: 400,
                decoration: BoxDecoration(
                  color: Colors.blue.shade900,
                    boxShadow:[
                BoxShadow(
                color: Color.fromRGBO(55, 182, 233, 1),
                blurRadius: 15,
                spreadRadius: 0,
                offset: Offset(
                0,
                5,
              ),
        ),

          ]

      ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20.0, vertical: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Gilbert Jones",
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 25),
                          ),
                          Text(
                            "Glbertjone@gmail.com",
                            style: TextStyle(
                                color: Colors.grey,
                                fontWeight: FontWeight.w500,
                                fontSize: 20),
                          ),
                          Text(
                            "123456789",
                            style: TextStyle(
                                color: Colors.grey,
                                fontWeight: FontWeight.w500,
                                fontSize: 20),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 15.0),
                      child: Text(
                        "Edit",
                        style: TextStyle(
                            color: Colors.blue,
                            fontWeight: FontWeight.bold,
                            fontSize: 20),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              InkWell(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> DashBoardScreen()));
                },
                child: ListTile(
                  contentPadding: EdgeInsets.all(12),
                  tileColor: Color.fromRGBO(244, 244, 244, 1),
                  title: Text(
                    "Wishlist",
                    style: TextStyle(
                        fontSize: 24,
                        color: Colors.black,
                        fontWeight: FontWeight.w500),
                  ),
                  trailing: Icon(
                    CupertinoIcons.right_chevron,
                    size: 30,
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              InkWell(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> ProfileScreen()));
                },
                child: ListTile(
                  contentPadding: EdgeInsets.all(12),
                  tileColor: Color.fromRGBO(244, 244, 244, 1),
                  title: Text(
                    "Payment",
                    style: TextStyle(
                        fontSize: 24,
                        color: Colors.black,
                        fontWeight: FontWeight.w500),
                  ),
                  trailing: Icon(
                    CupertinoIcons.right_chevron,
                    size: 30,
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              ListTile(
                contentPadding: EdgeInsets.all(12),
                tileColor: Color.fromRGBO(244, 244, 244, 1),
                title: Text(
                  "Help",
                  style: TextStyle(
                      fontSize: 24,
                      color: Colors.black,
                      fontWeight: FontWeight.w500),
                ),
                trailing: Icon(
                  CupertinoIcons.right_chevron,
                  size: 30,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              ListTile(
                contentPadding: EdgeInsets.all(12),
                tileColor: Color.fromRGBO(244, 244, 244, 1),
                title: Text(
                  "Support",
                  style: TextStyle(
                      fontSize: 24,
                      color: Colors.black,
                      fontWeight: FontWeight.w500),
                ),
                trailing: Icon(
                  CupertinoIcons.right_chevron,
                  size: 30,
                ),
              ),
              SizedBox(height: 20,),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextButton(
                      onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context)=> HomeScreen()));},
                      child: Text(
                        "Sign Out",
                        style: TextStyle(
                            color: Colors.blueAccent,
                            fontWeight: FontWeight.w800,
                            fontSize: 20),
                      )),
                ],
              ),
              SizedBox(height: 20)
            ],
          ),
        ),
      ),
    );
  }
}

