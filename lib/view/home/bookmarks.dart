import 'package:flutter/material.dart';

import '../../data/color/color.dart';

class bookmarks extends StatelessWidget {
  const bookmarks({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: AppColors.textColor),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: const Center(
          child: Text(
            "bookmarks",
            style: TextStyle(color: AppColors.textColor),
          ),
        ),
      ),
      body: const Center(
        child: Text("bookmarks page "),
      ),
    );
  }
}
