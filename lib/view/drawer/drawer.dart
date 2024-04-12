import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:ielts_speaking/data/color/color.dart';
import 'package:ielts_speaking/main.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:url_launcher/url_launcher.dart';

class DrawerWidget extends StatelessWidget {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final GoogleSignIn _googleSignIn = GoogleSignIn();
  final Future<SharedPreferences> _prefs = SharedPreferences.getInstance();
  Future<void> _handleSignOut(BuildContext context) async {
    try {
      await _auth.signOut();
      await _googleSignIn.disconnect();

      // Clear tokens from SharedPreferences
      final SharedPreferences prefs = await _prefs;
      prefs.remove('accessToken');
      prefs.remove('idToken');

      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => LoginPage()),
      );
    } catch (e) {
      print("Error signing out: $e");
    }
  }

  @override
  Widget build(BuildContext context) {
    final User? user = _auth.currentUser;

    return Drawer(
      backgroundColor: AppColors.appbarTheme,
      child: ListView(
        children: [
          const SizedBox(
            height: 20.0,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              user != null
                  ? Column(
                      children: [
                        CircleAvatar(
                          backgroundImage: NetworkImage(
                            user.photoURL ?? '',
                          ),
                          radius: 30,
                        ),
                        const SizedBox(height: 20),
                        Text(
                          '${user.displayName ?? "N/A"}',
                          style: GoogleFonts.akshar(color: AppColors.textColor),
                        ),
                        SizedBox(height: 10),
                        Text(
                          '${user.email ?? "N/A"}',
                          style: GoogleFonts.akshar(color: AppColors.textColor),
                        ),
                      ],
                    )
                  : Text('User Hisobga kirmagan'),
            ],
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
            onTap: () {
              _handleSignOut(context);
              Future.delayed(const Duration(seconds: 1), () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => LoginPage()),
                );
              });
            },
          ),
          const SizedBox(
            height: 380.0,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
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
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
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
            ],
          ),
        ],
      ),
    );
  }
}
