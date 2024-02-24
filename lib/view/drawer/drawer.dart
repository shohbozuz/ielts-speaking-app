import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:ielts_speaking/data/color/color.dart';
import 'package:url_launcher/url_launcher.dart';

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({Key? key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: AppColors.appbarTheme,
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 50),
            child: Column(
              children: [
                Text(
                  "Shohbozbek Turgunov",
                  style: GoogleFonts.akshar(color: AppColors.textColor),
                ),
                Text(
                  "Id 24384u375",
                  style: GoogleFonts.akshar(
                    color: AppColors.textColor,
                  ),
                ),
              ],
            ),
          ),
          ListTile(
            title: const Text(
              'Privacy Policy',
              style: TextStyle(color: AppColors.textColor, fontSize: 15.0),
            ),
            onTap: () {},
          ),
          ListTile(
            title: const Text(
              'Exit',
              style: TextStyle(color: AppColors.textColor, fontSize: 15.0),
            ),
            onTap: () {},
          ),
          ListTile(
            title: const Text(
              'Delete Account',
              style: TextStyle(color: AppColors.textColor, fontSize: 15.0),
            ),
            onTap: () {},
          ),
          const SizedBox(
            height: 450,
          ),
          Column(
            children: [
              SizedBox(
                height: 50,
                child: Image.asset('assets/images/logo/logo.png'),
              ),
              const SizedBox(
                height: 10.0,
              ),
              Text(
                "ASSISTANT IELTS Speaking",
                style: GoogleFonts.akshar(
                  color: Colors.white54,
                ),
              ),
              Text(
                "Version2.18.74",
                style: GoogleFonts.akshar(
                  color: Colors.white54,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 45),
                child: Row(
                  children: [
                    IconButton(
                      onPressed: () async {
                        await launch(
                          "https://t.me/shohbozbekuz",
                          forceSafariVC: false,
                          forceWebView: false,
                          headers: <String, String>{
                            'my_header_key': 'my_header_value'
                          },
                        );
                      },
                      icon: const Icon(Bootstrap.telegram,
                          color: AppColors.iconColor),
                    ),
                    const SizedBox(
                      width: 30.0,
                    ),
                    IconButton(
                      onPressed: () async {
                        await launch(
                          "https://www.instagram.com/johnson_pub/",
                          forceSafariVC: false,
                          forceWebView: false,
                          headers: <String, String>{
                            'my_header_key': 'my_header_value'
                          },
                        );
                      },
                      icon: const Icon(Bootstrap.instagram,
                          color: AppColors.iconColor),
                    ),
                    const SizedBox(
                      width: 30.0,
                    ),
                    IconButton(
                      onPressed: () async {
                        await launch(
                          "https://play.google.com/store/apps/details?id=uz.bepul_dasturlash_kursi.bepul_dasturlash_kursi&pcampaignid=web_share",
                          forceSafariVC: false,
                          forceWebView: false,
                          headers: <String, String>{
                            'my_header_key': 'my_header_value'
                          },
                        );
                      },
                      icon: const Icon(Bootstrap.google_play,
                          color: AppColors.iconColor),
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
