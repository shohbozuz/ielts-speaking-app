import 'package:flutter/material.dart';
import 'package:ielts_speaking/data/color/color.dart';
import 'package:ielts_speaking/data/model/part3.dart' as CustomModel;
import 'package:ielts_speaking/view/home/part3/parts.dart';

class Steps extends StatelessWidget {
  final List<CustomModel.Step> steps;

  const Steps(this.steps, {Key? key}) : super(key: key);

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
        backgroundColor: AppColors.bodyColor,
        body: Column(
          children: [
            const SizedBox(
              height: 15.0,
            ),
            Expanded(
              child: ListView.builder(
                itemCount: steps.length,
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) =>
                              Parts([steps[index].parts]),
                            ),
                          );
                        },
                        child: Container(
                          width: 310,
                          height: 80,
                          color: AppColors.bgcontainer,
                          child: Row(
                            children: [
                              SizedBox(
                                width: 15.0,
                              ),
                              Text(
                                steps[index].name,
                                style: TextStyle(
                                    color: AppColors.conatinertext,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18),
                              ),
                              Spacer(),
                              Container(
                                width: 70,
                                height: 50,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: AppColors.circlecontainer,
                                  // Doira rangu
                                ),
                                child: Center(
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        "Answers",
                                        style: const TextStyle(
                                          color: Colors.white,
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      Text(
                                        "here",
                                        style: const TextStyle(
                                          color: Colors.white,
                                          fontSize: 10,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 10.0,
                              ),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 10.0,
                      ),
                    ],
                  );
                },
              ),
            ),
          ],
        ));
  }
}
