import 'package:flutter/material.dart';

import '../../data/color/color.dart';

class part3 extends StatelessWidget {
  const part3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: AppColors.textColor),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: const Text(
          "Part 3",
          style: TextStyle(color: AppColors.textColor),
        ),
      ),
      body: const Center(
        child: Text("Part 3 page "),
      ),
    );
  }
}
