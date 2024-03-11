import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ielts_speaking/data/color/color.dart';
import 'package:ielts_speaking/view/drawer/drawer.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:share_plus/share_plus.dart';

// crcr

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {
              String textToShare =
                  "Tavsiya etaman: Ielts Speaking and Cefr app : https://play.google.com/store/apps/details?id=ge.space.app.uzbekistan"; // Ulashmoqchi bo'lgan matn
              Share.share(textToShare); // Matnni ulashish
            },
            icon: const Icon(Bootstrap.share),
          ),
        ],
        iconTheme: const IconThemeData(color: AppColors.textColor),
        title: Text("IELTS Speaking",
            style: GoogleFonts.akshar(
              color: AppColors.textColor,
            )),
      ),
      drawer: const Drawer(
        child: DrawerWidget(),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GestureDetector(
                onTap: () {
                  context.go("/part1");
                },
                child: Stack(
                  children: [
                    Container(
                      width: 130,
                      height: 180,
                      decoration: const BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.bottomLeft,
                          end: Alignment.bottomRight,
                          colors: [AppColors.black12, Colors.lightGreen],
                          stops: [0.65, 0.5],
                        ),
                      ),
                    ),
                    const Positioned(
                      right: 45,
                      bottom: 20,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.keyboard_voice_rounded,
                            color: Colors.lightGreen,
                            size: 80,
                          ),
                          Text(
                            "part",
                            style: TextStyle(
                              color: AppColors.black38,
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
                          fontSize: 50.0,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                width: 25.0,
              ),
              GestureDetector(
                onTap: () {
                  context.go("/part2");
                },
                child: Stack(
                  children: [
                    Container(
                      width: 130,
                      height: 180,
                      decoration: const BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.bottomLeft,
                          end: Alignment.bottomRight,
                          colors: [AppColors.black12, AppColors.containerpart2],
                          stops: [0.65, 0.5],
                        ),
                      ),
                    ),
                    const Positioned(
                      right: 45,
                      bottom: 20,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.keyboard_voice_rounded,
                            color: AppColors.containerpart2,
                            size: 80,
                          ),
                          Text(
                            "part",
                            style: TextStyle(
                              color: AppColors.black38,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const Positioned(
                      right: 8,
                      bottom: 45,
                      child: Text(
                        "2",
                        style: TextStyle(
                          color: AppColors.iconColor,
                          fontSize: 50.0,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 15.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GestureDetector(
                onTap: () {
                  context.go("/part3");
                },
                child: Stack(
                  children: [
                    Container(
                      width: 130,
                      height: 180,
                      decoration: const BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.bottomLeft,
                          end: Alignment.bottomRight,
                          colors: [AppColors.black12, AppColors.containerpart3],
                          stops: [0.65, 0.5],
                        ),
                      ),
                    ),
                    const Positioned(
                      right: 45,
                      bottom: 20,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.keyboard_voice_rounded,
                            color: AppColors.containerpart3,
                            size: 80,
                          ),
                          Text(
                            "part",
                            style: TextStyle(
                              color: AppColors.black38,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const Positioned(
                      right: 8,
                      bottom: 45,
                      child: Text(
                        "3",
                        style: TextStyle(
                          color: AppColors.iconColor,
                          fontSize: 50.0,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                width: 25.0,
              ),
              GestureDetector(
                onTap: () {
                  context.go("/bookmarks");
                },
                child: Stack(
                  children: [
                    Container(
                      width: 130,
                      height: 180,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: AppColors.black,
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
                          colors: [
                            AppColors.containerbookmarks,
                            AppColors.textColor
                          ],
                          stops: [0.35, 0.11],
                        ),
                      ),
                    ),
                    const Positioned(
                      right: 45,
                      bottom: 100.0,
                      child: Icon(
                        Icons.star_border_sharp,
                        color: AppColors.textColor,
                        size: 55,
                      ),
                    ),
                    const Positioned(
                      right: 23,
                      bottom: 20,
                      child: Text(
                        "bookmarks",
                        style: TextStyle(
                          color: AppColors.containerbookmarks,
                          fontSize: 15.0,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
