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
    );
  }
}
