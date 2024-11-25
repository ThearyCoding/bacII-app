import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:untitled1/ResultBacII/result_bacii.dart';

import '../utils/limited_range_input.dart';

class Page1 extends StatefulWidget {
  const Page1({Key? key}) : super(key: key);

  @override
  State<Page1> createState() => _Page1State();
}

class _Page1State extends State<Page1> {
  final int numberOfTests = 7;

  late List<TextEditingController> controllers;
  late List<int> scores;
  late List<String> grades;
  int totalScore = 0;
  String isPass = "";
  String overallGrade = "";
  String encourageMessage = "";

  final List<String> subjects = [
    "គណិតវិទ្យា",
    "អក្សរសាស្រ្តខ្មែរ",
    "រូបវិទ្យា",
    "គីមីវិទ្យា",
    "រូបវិទ្យា",
    "ប្រវត្តិវិទ្យា",
    "ភាសាបរទេស"
  ];

  final List<int> maxScores = [125, 75, 75, 75, 75, 50, 50];

  @override
  void initState() {
    super.initState();
    controllers =
        List.generate(numberOfTests, (index) => TextEditingController());
    scores = List.generate(numberOfTests, (index) => 0);
    grades = List.generate(numberOfTests, (index) => "");

    for (int i = 0; i < numberOfTests; i++) {
      controllers[i].addListener(() => _updateScore(i));
    }
  }

  void _updateScore(int index) {
    setState(() {
      scores[index] = int.tryParse(controllers[index].text) ?? 0;
      grades[index] = _calculateGradeForScore(index);
      _updateTotalScore();
    });
  }

  String _calculateGradeForScore(int index) {
    int score = scores[index];
    if (index == 0) {
      if (score >= 112 && score <= 125) return 'A';
      if (score >= 100 && score <= 111) return 'B';
      if (score >= 87 && score <= 99) return 'C';
      if (score >= 75 && score <= 86) return 'D';
      if (score >= 62 && score <= 74) return 'E';
      return 'F';
    } else if (index >= 1 && index <= 4) {
      if (score >= 67 && score <= 75) return 'A';
      if (score >= 60 && score <= 66) return 'B';
      if (score >= 52 && score <= 59) return 'C';
      if (score >= 45 && score <= 51) return 'D';
      if (score >= 37 && score <= 44) return 'E';
      return 'F';
    } else if (index >= 5 && index <= 6) {
      if (score >= 45 && score <= 50) return 'A';
      if (score >= 40 && score <= 44) return 'B';
      if (score >= 35 && score <= 39) return 'C';
      if (score >= 30 && score <= 34) return 'D';
      if (score >= 25 && score <= 29) return 'E';
      return 'F';
    }
    return 'Invalid Range';
  }

  void _updateTotalScore() {
    totalScore = scores.reduce((a, b) => a + b);
    overallGrade = _calculateOverallGrade(totalScore);

    if (totalScore <= 236) {
      isPass = "ធ្លាក់";
      encourageMessage = "កុំអស់សង្ឃឹមអី ប្រឹងប្រែងបន្តទៀតណា!";
    } else {
      isPass = "ជាប់";
      encourageMessage = "សូមចូលរួមអបអរសាទ!";
    }
  }

  String _calculateOverallGrade(int score) {
    if (score >= 427 && score <= 500) return 'A';
    if (score >= 380 && score <= 426) return 'B';
    if (score >= 332 && score <= 379) return 'C';
    if (score >= 286 && score <= 331) return 'D';
    if (score >= 237 && score <= 285) return 'E';
    if (score < 237) return 'F';
    return 'Invalid Range';
  }

  @override
  void dispose() {
    for (var controller in controllers) {
      controller.dispose();
    }
    super.dispose();
  }

  Widget buildSubjectInputField(int index) {
    return Container(
      width: 170,
      height: 130,
      decoration: BoxDecoration(
        color: Colors.grey[100],
        borderRadius: BorderRadius.circular(15),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            spreadRadius: 2,
            blurRadius: 5,
            offset: const Offset(0, 1),
          ),
        ],
      ),
      child: Column(
        children: [
          const SizedBox(height: 12),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "${subjects[index]} (${maxScores[index]})",
                style: const TextStyle(fontSize: 16),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: TextFormField(
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'សូមបញ្ចូលពិន្ទុសម្រាប់​​​ ${subjects[index]}';
                }
                return null;
              },
              controller: controllers[index],
              inputFormatters: [
                FilteringTextInputFormatter.digitsOnly,
                LimitedRangeTextInputFormatter(1, maxScores[index]),
              ],
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.blue),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Form(
        key: _formKey,
        child: Column(
          children: [
            const SizedBox(height: 10),
            Row(
              children: [
                const SizedBox(width: 20),
                Container(
                  width: 17,
                  height: 17,
                  decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(100),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(left: 6),
                  alignment: Alignment.topLeft,
                  child: const Text(
                    "មុខវិជ្ជាគោល",
                    style: TextStyle(fontSize: 30),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 30),
            Column(
              children: [
                for (int i = 0; i < numberOfTests; i += 2)
                  Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          buildSubjectInputField(i),
                          if (i + 1 < numberOfTests) const SizedBox(width: 10),
                          if (i + 1 < numberOfTests)
                            buildSubjectInputField(i + 1),
                          if (i + 1 >= numberOfTests) const SizedBox(width: 50),
                          if (i + 1 >= numberOfTests)
                            SizedBox(
                              width: 120,
                              height: 50,
                              child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  foregroundColor: Colors.white,
                                  backgroundColor: Colors.blue,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                ),
                                onPressed: () {
                                  if (_formKey.currentState!.validate()) {
                                    Navigator.push(context,
                                        MaterialPageRoute(builder: (context) {
                                      return Result(
                                        totalScore: totalScore,
                                        grades: grades,
                                        isPass: isPass,
                                        grade: overallGrade,
                                        encourage: encourageMessage,
                                      );
                                    }));
                                    for (var controller in controllers) {
                                      controller.clear();
                                    }
                                  }
                                },
                                child: const Text('គណនា'),
                              ),
                            ),
                        ],
                      ),
                      const SizedBox(height: 20),
                    ],
                  ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

