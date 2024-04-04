import 'package:flutter/material.dart';
import 'package:ielts_speaking/data/model/part1.dart' as CustomModel;

class SecondPage extends StatelessWidget {
  final List<CustomModel.Step> steps;

  const SecondPage(this.steps, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Data"),
      ),
      body: ListView.builder(
        itemCount: steps.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(steps[index].name),
          );
        },
      ),
    );
  }
}
