import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';

import '../../data/color/color.dart';

class part1 extends StatelessWidget {
  const part1({Key? key}) : super(key: key);

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
          "Part 1",
          style: TextStyle(color: AppColors.textColor),
        ),
      ),
      body: Column(
        children: [
          SizedBox(
            width: double.infinity,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _buildColoredContainer(AppColors.rang1),
                _buildColoredContainer(AppColors.rang2),
                _buildColoredContainer(AppColors.rang3),
                _buildColoredContainer(AppColors.rang4),
                _buildColoredContainer(AppColors.rang5),
              ],
            ),
          ),
          const SizedBox(
            height: 15.0,
          ),
          Container(
            width: 250,
            height: 40,
            color: Colors.blue,
            child: const Center(
              child: Text(
                'READ ME',
                style:
                TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              ),
            ),
          ),
          const SizedBox(
            height: 5.0,
          ),
          Expanded(
            child: ListView.builder(
              itemCount: 1,
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    GestureDetector(
                      onTap: () {},
                      child: Container(
                        width: 310,
                        height: 80,
                        color: AppColors.bgcontainer,
                        child: Row(

                          children: [
                            Container(
                              width: 70,
                              height: 50,
                              decoration: const BoxDecoration(
                                color: AppColors.circlecontainer, // Doira rangu
                                shape: BoxShape.circle, // Doira shakli
                              ),
                              child: const Center(
                                child: Text(
                                  '1',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 10,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              width: 140,
                              height: 100,
                              // color: Colors.cyanAccent,
                              child: const Center(
                                child: Text(
                                  'INSTRUCTIONS: how to prepare cue cards',
                                  style: TextStyle(
                                      color: AppColors.conatinertext,
                                      fontWeight: FontWeight.bold,fontSize: 10),
                                ),
                              ),
                            ),
                            Container(
                              width: 100,
                              height: 100,
                              // color: Colors.red,
                              child: const Center(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Column(
                                      children: [
                                        Text(
                                          'Free',
                                          style: TextStyle(
                                            color: AppColors.free_asnwers_text,
                                            fontSize: 10.0,
                                          ),
                                        ),
                                        Text(
                                          'answers',
                                          style: TextStyle(
                                            color: AppColors.free_asnwers_text,
                                            fontSize: 10.0,
                                          ),
                                        ),
                                      ],
                                    ),
                                    Padding(
                                      padding:
                                      EdgeInsets.only(right: 10.0, top: 7.0),
                                      child: Text(
                                        'Answers Here ',
                                        style: TextStyle(
                                          color: AppColors.circlecontainer,
                                          fontSize: 11.0,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(height: 10.0,),
                  ],
                );
              },
            ),
          ),

        ],
      ),
      backgroundColor: AppColors.bgpart,
    );
  }

  Widget _buildColoredContainer(Color color) {
    return Expanded(
      child: Container(
        height: 5, // Qatning bo'yi
        width: 100, // Qatning eni
        color: color,
      ),
    );
  }
}
