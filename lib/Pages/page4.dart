import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:untitled1/ResultBacII/result_page4.dart';

import '../utils/limited_range_input.dart';


class Page4 extends StatefulWidget {
  const Page4({super.key});

  @override
  State<Page4> createState() => _Page4State();
}

class _Page4State extends State<Page4> {
  late final TextEditingController controller1 = TextEditingController();
  int score1 = 0;

  late final TextEditingController controller2 = TextEditingController();
  int score2 = 0;

  late final TextEditingController controller3 = TextEditingController();
  int score3 = 0;

  late final TextEditingController controller4 = TextEditingController();
  int score4 = 0;

  late final TextEditingController controller5 = TextEditingController();
  int score5 = 0;

  late final TextEditingController controller6 = TextEditingController();
  int score6 = 0;

  late final TextEditingController controller7 = TextEditingController();
  int score7 = 0;

  late final TextEditingController controller8 = TextEditingController();
  int score8 = 0;

  late final TextEditingController controller9 = TextEditingController();
  int score9 = 0;

  late final TextEditingController controller10 = TextEditingController();
  int score10 = 0;

  late final TextEditingController controller11 = TextEditingController();
  int score11 = 0;

  late final TextEditingController controller12 = TextEditingController();
  int score12 = 0;

  late final TextEditingController controller13 = TextEditingController();
  int score13 = 0;

  late final TextEditingController controller14 = TextEditingController();
  int score14 = 0;

  int totalScore = 0;
  String Encourage = "";
  String ispass = "";
  String grade = "";

  void _updateTotalScore() {
    setState(() {
      totalScore = score1 +
          score2 +
          score3 +
          score4 +
          score5 +
          score6 +
          score7 +
          score8 +
          score9 +
          score10 +
          score11 +
          score12 +
          score13 +
          score14;
      grade = calculateGrade(totalScore);
      if (totalScore <= 274) {
        ispass = "ធ្លាក់";
        Encourage = "កុំអស់សង្ឃឹមអី ប្រឹងប្រែងបន្តទៀតណា!";
      } else {
        ispass = "ជាប់";
        Encourage = "សូមចូលរួមអបអរសាទ!";
      }
    });
  }

  @override
  void initState() {
    super.initState();
    controller1.addListener(() => _updateScore(controller1, 1));
    controller2.addListener(() => _updateScore(controller2, 2));
    controller3.addListener(() => _updateScore(controller3, 3));
    controller4.addListener(() => _updateScore(controller4, 4));
    controller5.addListener(() => _updateScore(controller5, 5));
    controller6.addListener(() => _updateScore(controller6, 6));
    controller7.addListener(() => _updateScore(controller7, 7));
    controller8.addListener(() => _updateScore(controller8, 8));
    controller9.addListener(() => _updateScore(controller9, 9));
    controller10.addListener(() => _updateScore(controller10, 10));
    controller11.addListener(() => _updateScore(controller11, 11));
    controller12.addListener(() => _updateScore(controller12, 12));
    controller13.addListener(() => _updateScore(controller13, 13));
    controller14.addListener(() => _updateScore(controller14, 14));
  }

  void _updateScore(TextEditingController controller, int index) {
    setState(() {
      switch (index) {
        case 1:
          score1 = int.tryParse(controller.text) ?? 0;
          break;
        case 2:
          score2 = int.tryParse(controller.text) ?? 0;
          break;
        case 3:
          score3 = int.tryParse(controller.text) ?? 0;
          break;
        case 4:
          score4 = int.tryParse(controller.text) ?? 0;
          break;
        case 5:
          score5 = int.tryParse(controller.text) ?? 0;
          break;
        case 6:
          score6 = int.tryParse(controller.text) ?? 0;
          break;
        case 7:
          score7 = int.tryParse(controller.text) ?? 0;
          break;
        case 8:
          score8 = int.tryParse(controller.text) ?? 0;
          break;
        case 9:
          score9 = int.tryParse(controller.text) ?? 0;
          break;
        case 10:
          score10 = int.tryParse(controller.text) ?? 0;
          break;
        case 11:
          score11 = int.tryParse(controller.text) ?? 0;
          break;
        case 12:
          score12 = int.tryParse(controller.text) ?? 0;
          break;
        case 13:
          score13 = int.tryParse(controller.text) ?? 0;
          break;
        case 14:
          score14 = int.tryParse(controller.text) ?? 0;
          break;
      }
      _updateTotalScore();
    });
  }
  String calculateGrade(int score) {
    if (score >= 495 && score <= 550) {
      return 'A';
    } else if (score >= 440 && score <= 494) {
      return 'B';
    } else if (score >= 385 && score <= 439) {
      return 'C';
    } else if (score >= 330 && score <= 384) {
      return 'D';
    } else if (score >= 275 && score <= 329) {
      return 'E';
    } else if (score <= 274) {
      return 'F';
    } else {
      return 'Invalid Range';
    }
  }
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(

      child: Form(
        key: _formKey,
        child: Column(
          children: [

            SizedBox(height: 10,),
            Row(

              children: [
                SizedBox(width: 20,),
                Container(
                  width: 17,
                  height: 17,
                  decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(100),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 6),
                  alignment: Alignment.topLeft,
                  decoration: const BoxDecoration(

                  ),

                  child: const Text("មុខវិជ្ជាគោល",
                    style: TextStyle(
                        fontSize: 30
                    ),
                  ),
                ),
              ],
            ),

            SizedBox(height: 30,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
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
                        offset: Offset(0, 1),
                      ),
                    ],
                  ),
                  child: Column(
                    children: [
                      SizedBox(height: 12,),
                      Text(
                        "ភាសាបាលី (60)",
                        style: TextStyle(
                          fontSize: 18,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 10,
                            right: 10
                        ),
                        child: TextFormField(
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return "";
                            }
                            return null;
                          },
                          controller: controller1,
                          inputFormatters: [FilteringTextInputFormatter.digitsOnly,
                            LimitedRangeTextInputFormatter(1, 60)
                          ],
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                            focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.blue),

                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(width: 10,),
                Container(
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
                        offset: Offset(0, 1),
                      ),
                    ],
                  ),
                  child: Column(
                    children: [
                      SizedBox(height: 12,),
                      Text(
                        "អក្សសាស្រ្តខ្មែរ (60)",
                        style: TextStyle(
                          fontSize: 18,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 10,
                            right: 10
                        ),
                        child: TextFormField(

                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return "";
                            }
                            return null;
                          },
                          controller: controller2,
                          inputFormatters: [FilteringTextInputFormatter.digitsOnly,
                            LimitedRangeTextInputFormatter(1, 60)
                          ],
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                            focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.blue), // Change the color to your desired focus color

                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
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
                        offset: Offset(0, 1),
                      ),
                    ],
                  ),
                  child: Column(
                    children: [
                      SizedBox(height: 12,),
                      Text(
                        "គណិតវិទ្យា (60)",
                        style: TextStyle(
                          fontSize: 18,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 10,
                            right: 10
                        ),
                        child: TextFormField(
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return "";
                            }
                            return null;
                          },
                          controller: controller3,
                          inputFormatters: [FilteringTextInputFormatter.digitsOnly,
                            LimitedRangeTextInputFormatter(1, 60)
                          ],
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                            focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.blue), // Change the color to your desired focus color

                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(width: 10,),
                Container(
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
                        offset: Offset(0, 1),
                      ),
                    ],
                  ),
                  child: Column(
                    children: [

                      const Text(
                        "សាសនាប្រៀបធៀប (50)",
                        style: TextStyle(
                          fontSize: 18,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 10,
                            right: 10
                        ),
                        child: TextFormField(
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return "";
                            }
                            return null;
                          },
                          controller: controller4,
                          inputFormatters: [FilteringTextInputFormatter.digitsOnly,
                            LimitedRangeTextInputFormatter(1, 50)
                          ],
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                            focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.blue), // Change the color to your desired focus color

                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
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
                        offset: Offset(0, 1),
                      ),
                    ],
                  ),
                  child: Column(
                    children: [
                      SizedBox(height: 12,),
                      Text(
                        "ព្រះអភិធម្ម (40)",
                        style: TextStyle(
                          fontSize: 18,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 10,
                            right: 10
                        ),
                        child: TextFormField(
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return "";
                            }
                            return null;
                          },
                          controller: controller5,
                          inputFormatters: [FilteringTextInputFormatter.digitsOnly,
                            LimitedRangeTextInputFormatter(1, 40)
                          ],
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                            focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.blue), // Change the color to your desired focus color

                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(width: 10,),
                Container(
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
                        offset: Offset(0, 1),
                      ),
                    ],
                  ),
                  child: Column(
                    children: [
                      SizedBox(height: 12,),
                      Text(
                        "ភាសាសំស្រ្កឹត (40)",
                        style: TextStyle(
                          fontSize: 18,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 10,
                            right: 10
                        ),
                        child: TextFormField(
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return "";
                            }
                            return null;
                          },
                          controller: controller6,
                          inputFormatters: [FilteringTextInputFormatter.digitsOnly,
                            LimitedRangeTextInputFormatter(1, 40)
                          ],
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                            focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.blue), // Change the color to your desired focus color

                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
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
                        offset: Offset(0, 1),
                      ),
                    ],
                  ),
                  child: Column(
                    children: [
                      SizedBox(height: 12,),
                      Text(
                        "រូបវិទ្យា (40)",
                        style: TextStyle(
                          fontSize: 18,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 10,
                            right: 10
                        ),
                        child: TextFormField(
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return "";
                            }
                            return null;
                          },
                          controller: controller7,
                          inputFormatters: [FilteringTextInputFormatter.digitsOnly,
                            LimitedRangeTextInputFormatter(1, 40)
                          ],
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                            focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.blue), // Change the color to your desired focus color

                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(width: 10,),
                Container(
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
                        offset: Offset(0, 1),
                      ),
                    ],
                  ),
                  child: Column(
                    children: [
                      SizedBox(height: 12,),
                      Text(
                        "គីមីវិទ្យា (40)",
                        style: TextStyle(
                          fontSize: 18,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 10,
                            right: 10
                        ),
                        child: TextFormField(
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return "";
                            }
                            return null;
                          },
                          controller: controller8,
                          inputFormatters: [FilteringTextInputFormatter.digitsOnly,
                            LimitedRangeTextInputFormatter(1, 40)
                          ],
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                            focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.blue), // Change the color to your desired focus color

                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
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
                        offset: Offset(0, 1),
                      ),
                    ],
                  ),
                  child: Column(
                    children: [
                      SizedBox(height: 12,),
                      Text(
                        "ជីវវិទ្យា (40)",
                        style: TextStyle(
                          fontSize: 18,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 10,
                            right: 10
                        ),
                        child: TextFormField(
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return "";
                            }
                            return null;
                          },
                          controller: controller9,
                          inputFormatters: [FilteringTextInputFormatter.digitsOnly,
                            LimitedRangeTextInputFormatter(1, 40)
                          ],
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                            focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.blue), // Change the color to your desired focus color

                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(width: 10,),
                Container(
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
                        offset: Offset(0, 1),
                      ),
                    ],
                  ),
                  child: Column(
                    children: [
                      SizedBox(height: 12,),
                      Text(
                        "ផែនដីវិទ្យា (20)",
                        style: TextStyle(
                          fontSize: 18,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 10,
                            right: 10
                        ),
                        child: TextFormField(
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return "";
                            }
                            return null;
                          },
                          controller: controller10,
                          inputFormatters: [FilteringTextInputFormatter.digitsOnly,
                            LimitedRangeTextInputFormatter(1, 20)
                          ],
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                            focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.blue), // Change the color to your desired focus color

                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
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
                        offset: Offset(0, 1),
                      ),
                    ],
                  ),
                  child: Column(
                    children: [
                      SizedBox(height: 12,),
                      Text(
                        "ភូមិវិទ្យា (20)",
                        style: TextStyle(
                          fontSize: 18,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 10,
                            right: 10
                        ),
                        child: TextFormField(
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return "";
                            }
                            return null;
                          },
                          controller: controller11,
                          inputFormatters: [FilteringTextInputFormatter.digitsOnly,
                            LimitedRangeTextInputFormatter(1, 20)
                          ],
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                            focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.blue), // Change the color to your desired focus color

                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(width: 10,),
                Container(
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
                        offset: Offset(0, 1),
                      ),
                    ],
                  ),
                  child: Column(
                    children: [
                      SizedBox(height: 12,),
                      Text(
                        "ប្រវត្តិវិទ្យា (20)",
                        style: TextStyle(
                          fontSize: 18,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 10,
                            right: 10
                        ),
                        child: TextFormField(
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return "";
                            }
                            return null;
                          },
                          controller: controller12,
                          inputFormatters: [FilteringTextInputFormatter.digitsOnly,
                            LimitedRangeTextInputFormatter(1, 20)
                          ],
                          keyboardType: TextInputType.number,
                          decoration: const InputDecoration(
                            focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.blue), // Change the color to your desired focus color

                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
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
                        offset: Offset(0, 1),
                      ),
                    ],
                  ),
                  child: Column(
                    children: [
                      SizedBox(height: 12,),
                      Text(
                        "សីលធម៍ (20)",
                        style: TextStyle(
                          fontSize: 18,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 10,
                            right: 10
                        ),
                        child: TextFormField(
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return "";
                            }
                            return null;
                          },
                          controller: controller13,
                          inputFormatters: [FilteringTextInputFormatter.digitsOnly,
                            LimitedRangeTextInputFormatter(1, 20)
                          ],
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                            focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.blue), // Change the color to your desired focus color

                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(width: 10,),
                Container(
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
                        offset: Offset(0, 1),
                      ),
                    ],
                  ),
                  child: Column(
                    children: [
                      SizedBox(height: 12,),
                      Text(
                        "ភាសាអង់គ្លេស (40)",
                        style: TextStyle(
                          fontSize: 18,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 10,
                            right: 10
                        ),
                        child: TextFormField(
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                                return "";
                            }
                            return null;
                          },
                          controller: controller14,
                          inputFormatters: [FilteringTextInputFormatter.digitsOnly,
                            LimitedRangeTextInputFormatter(1, 40)
                          ],
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                            focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.blue),

                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

              ],
            ),
            SizedBox(height: 20,),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(content: Text('Processing Data')),
                      );

                      // Check if controllers are not empty before navigating
                      if (
                      controller1.text.isNotEmpty &&
                          controller2.text.isNotEmpty &&
                          controller3.text.isNotEmpty &&
                          controller4.text.isNotEmpty &&
                          controller5.text.isNotEmpty &&
                          controller6.text.isNotEmpty &&
                          controller7.text.isNotEmpty &&
                          controller8.text.isNotEmpty &&
                          controller8.text.isNotEmpty &&
                          controller9.text.isNotEmpty &&
                          controller10.text.isNotEmpty &&
                          controller11.text.isNotEmpty &&
                          controller12.text.isNotEmpty &&
                          controller13.text.isNotEmpty &&
                          controller14.text.isNotEmpty
                      ) {
                        // Navigate to the Result page
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Result4(
                              totalScore: totalScore,
                              grade: grade,
                              // grade1: grade1,
                              // grade2: grade2,
                              // grade3: grade3,
                              // grade4: grade4,
                              // grade5: grade5,
                              // grade6: grade6,
                              // grade7: grade7,
                              ispass: ispass,
                              Encourage: Encourage,
                            ),
                            settings: RouteSettings(name: 'Result'),
                          ),
                        ).then((value){
                          controller1.clear();
                          controller2.clear();
                          controller3.clear();
                          controller4.clear();
                          controller5.clear();
                          controller6.clear();
                          controller7.clear();
                          controller8.clear();
                          controller9.clear();
                          controller10.clear();
                          controller11.clear();
                          controller12.clear();
                          controller13.clear();
                          controller14.clear();

                        });
                      } else {
                        // Show a message if any of the controllers are empty
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(content: Text('Please fill in all fields')),
                        );
                      }
                    }
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blueAccent,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.zero,
                    ),
                    minimumSize: Size(170, 50),
                  ),
                  child: Text(
                    "គណនា",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                    ),
                  ),
                ),

              ],
            ),
            SizedBox(height: 20,),
          ],
        ),
      ),
    );
  }
}
