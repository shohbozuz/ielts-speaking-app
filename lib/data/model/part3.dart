import 'package:meta/meta.dart';
import 'dart:convert';

class Part3Model {
  int id;
  String title;
  int question;
  List<Step> steps;

  Part3Model({
    required this.id,
    required this.title,
    required this.question,
    required this.steps,
  });

  Part3Model copyWith({
    int? id,
    String? title,
    int? question,
    List<Step>? steps,
  }) =>
      Part3Model(
        id: id ?? this.id,
        title: title ?? this.title,
        question: question ?? this.question,
        steps: steps ?? this.steps,
      );

  factory Part3Model.fromRawJson(String str) => Part3Model.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Part3Model.fromJson(Map<String, dynamic> json) => Part3Model(
    id: json["id"],
    title: json["title"],
    question: json["question"],
    steps: List<Step>.from(json["steps"].map((x) => Step.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "title": title,
    "question": question,
    "steps": List<dynamic>.from(steps.map((x) => x.toJson())),
  };
}

class Step {
  int id;
  String name;
  Parts parts;

  Step({
    required this.id,
    required this.name,
    required this.parts,
  });

  Step copyWith({
    int? id,
    String? name,
    Parts? parts,
  }) =>
      Step(
        id: id ?? this.id,
        name: name ?? this.name,
        parts: parts ?? this.parts,
      );

  factory Step.fromRawJson(String str) => Step.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Step.fromJson(Map<String, dynamic> json) => Step(
    id: json["id"],
    name: json["name"],
    parts: Parts.fromJson(json["parts"]),
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "name": name,
    "parts": parts.toJson(),
  };
}

class Parts {
  String vocabulary;
  String ideas;
  String answers;

  Parts({
    required this.vocabulary,
    required this.ideas,
    required this.answers,
  });

  Parts copyWith({
    String? vocabulary,
    String? ideas,
    String? answers,
  }) =>
      Parts(
        vocabulary: vocabulary ?? this.vocabulary,
        ideas: ideas ?? this.ideas,
        answers: answers ?? this.answers,
      );

  factory Parts.fromRawJson(String str) => Parts.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Parts.fromJson(Map<String, dynamic> json) => Parts(
    vocabulary: json["vocabulary"],
    ideas: json["ideas"],
    answers: json["answers"],
  );

  Map<String, dynamic> toJson() => {
    "vocabulary": vocabulary,
    "ideas": ideas,
    "answers": answers,
  };
}
