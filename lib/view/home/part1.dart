import 'package:flutter/material.dart';

import '../../data/color/color.dart';

class part1 extends StatelessWidget {
  const part1({super.key});

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
        title: const Padding(
          padding: EdgeInsets.only(left: 100.0),
          child: Text(
            "Part 1",
            style: TextStyle(color: AppColors.textColor),
          ),
        ),
      ),
      body: const Center(
        child: Text("Part 1 page "),
      ),
    );
  }
}
