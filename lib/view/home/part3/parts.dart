import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:ielts_speaking/data/color/color.dart';
import 'package:ielts_speaking/data/model/part3.dart' as CustomModel;

class Parts extends StatelessWidget {
  final List<CustomModel.Parts> parts;

  const Parts(this.parts, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
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
          bottom: PreferredSize(
            preferredSize: const Size.fromHeight(40),
            child: ClipRRect(
              borderRadius: const BorderRadius.all(Radius.circular(10)),
              child: Container(
                height: 40,
                margin: const EdgeInsets.symmetric(horizontal: 20),
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  color: AppColors.appbarTheme,
                ),
                child: const TabBar(
                  indicatorSize: TabBarIndicatorSize.tab,
                  dividerColor: Colors.transparent,
                  indicator: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),
                  labelColor: Colors.white,
                  unselectedLabelColor: Colors.black54,
                  tabs: [
                    Tab(
                      icon: Row(
                        children: [
                          Icon(
                            Icons.book,
                            color: Colors.white,
                            size: 20.0,
                          ),
                          Text(
                            'Vocabulary',
                            style:
                                TextStyle(color: Colors.white, fontSize: 14.0),
                          ),
                        ],
                      ),
                    ),
                    Tab(
                      icon: Row(
                        children: [
                          Icon(
                            Icons.lightbulb,
                            color: Colors.white,
                            size: 20.0,
                          ),
                          Text(
                            'Ideas',
                            style:
                                TextStyle(color: Colors.white, fontSize: 14.0),
                          ),
                        ],
                      ),
                    ),
                    Tab(
                      icon: Row(
                        children: [
                          Icon(
                            Icons.question_answer_outlined,
                            color: Colors.white,
                            size: 20.0,
                          ),
                          SizedBox(
                            width: 3.0,
                          ),
                          Text(
                            'Answers',
                            style:
                                TextStyle(color: Colors.white, fontSize: 14.0),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
        backgroundColor: AppColors.appbarTheme,
        body: TabBarView(
          children: [
            Center(
              child: Container(
                height: 700,
                width: 380,
                color: Colors.white,
                child: Padding(
                    padding: EdgeInsets.all(20.0),
                    child: ListView.builder(
                      itemCount: parts.length,
                      shrinkWrap: true,
                      itemBuilder: (context, index) {
                        return Text(
                          parts[index].vocabulary,
                        );
                      },
                    )),
              ),
            ),
            Center(
              child: Container(
                height: 700,
                width: 380,
                color: Colors.white,
                child: Padding(
                    padding: EdgeInsets.all(20.0),
                    child: ListView.builder(
                      itemCount: parts.length,
                      shrinkWrap: true,
                      itemBuilder: (context, index) {
                        return Text(
                          parts[index].ideas,
                        );
                      },
                    )),
              ),
            ),
            Center(
              child: Container(
                height: 700,
                width: 380,
                color: Colors.white,
                child: Padding(
                    padding: EdgeInsets.all(20.0),
                    child: ListView.builder(
                      itemCount: parts.length,
                      shrinkWrap: true,
                      itemBuilder: (context, index) {
                        return Text(
                          parts[index].answers,
                        );
                      },
                    )),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
