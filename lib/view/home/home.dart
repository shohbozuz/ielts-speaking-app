import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ielts_speaking/data/color/color.dart';
import 'package:ielts_speaking/view/drawer/drawer.dart';
import 'package:icons_plus/icons_plus.dart';

// crcr

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Bootstrap.share),
          ),
        ],
        iconTheme: const IconThemeData(color: AppColors.textColor),
        title: Padding(
          padding: const EdgeInsets.only(left: 60.0),
          child: Text("IELTS Speaking",
              style: GoogleFonts.akshar(
                color: AppColors.textColor,
              )),
        ),
      ),
      drawer: const Drawer(
        child: DrawerWidget(),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 80, left: 35.0),
        child: Column(
          children: [
            Row(
              children: [
                Stack(
                  children: [
                    Container(
                      width: 155,
                      height: 200,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.bottomLeft,
                          end: Alignment.bottomRight,
                          colors: [Colors.black12, Colors.lightGreen],
                          stops: [0.65, 0.5],
                        ),
                      ),
                    ),
                    const Positioned(
                      right: 45,
                      bottom: 20,
                      child: Column(
                        children: [
                          Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Icon(
                              Icons.keyboard_voice_rounded,
                              color: Colors.lightGreen,
                              size: 100,
                            ),
                          ),
                          Text(
                            "part",
                            style: TextStyle(
                              color: Colors.black38,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const Positioned(
                      right: 8,
                      bottom: 45,
                      child: Text(
                        "1",
                        style: TextStyle(
                          color: AppColors.iconColor,
                          fontSize: 70.0,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  width: 25.0,
                ),
                Stack(
                  children: [
                    Container(
                      width: 155,
                      height: 200,
                      decoration: const BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.bottomLeft,
                          end: Alignment.bottomRight,
                          colors: [Colors.black12, Colors.lightGreen],
                          stops: [0.65, 0.5],
                        ),
                      ),
                    ),
                    const Positioned(
                      right: 45,
                      bottom: 20,
                      child: Column(
                        children: [
                          Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Icon(
                              Icons.keyboard_voice_rounded,
                              color: Colors.lightGreen,
                              size: 100,
                            ),
                          ),
                          Text(
                            "part",
                            style: TextStyle(
                              color: Colors.black38,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const Positioned(
                      right: 8,
                      bottom: 45,
                      child: Text(
                        "1",
                        style: TextStyle(
                          color: AppColors.iconColor,
                          fontSize: 70.0,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),

            const SizedBox(
              height: 15.0,
            ),
            Row(
              children: [
                Stack(
                  children: [
                    Container(
                      width: 155,
                      height: 200,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.bottomLeft,
                          end: Alignment.bottomRight,
                          colors: [Colors.black12, Colors.lightGreen],
                          stops: [0.65, 0.5],
                        ),
                      ),
                    ),
                    Positioned(
                      right: 45,
                      bottom: 20,
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Icon(
                              Icons.keyboard_voice_rounded,
                              color: Colors.lightGreen,
                              size: 100,
                            ),
                          ),
                          Text(
                            "part",
                            style: TextStyle(
                              color: Colors.black38,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Positioned(
                      right: 8,
                      bottom: 45,
                      child: Text(
                        "1",
                        style: TextStyle(
                          color: AppColors.iconColor,
                          fontSize: 70.0,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  width: 25.0,
                ),
                Stack(
                  children: [
                    Container(
                      width: 155,
                      height: 200,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Colors.black,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.shade500,
                            offset: Offset(4.0, 4.0),
                            blurRadius: 42.0,
                            spreadRadius: 1.0,
                          ),
                        ],
                        gradient: const LinearGradient(
                          begin: Alignment.centerRight,
                          end: Alignment.bottomRight,
                          colors: [Colors.red, Colors.white],
                          stops: [0.35, 0.11],
                        ),
                      ),
                    ),
                    const Positioned(
                      right: 45,
                      bottom: 100.0,
                      child: Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Icon(
                          Icons.star_border_sharp,
                          color: AppColors.textColor,
                          size: 55,
                        ),
                      ),
                    ),
                    Positioned(
                      right: 23,
                      bottom: 20,
                      child: Text(
                        "bookmarks",
                        style: TextStyle(
                          color: Colors.red,
                          fontSize: 22.0,
                        ),
                      ),
                    ),
                  ],
                ),

              ],
            ),
          ],
        ),
      ),
    );
  }
}


