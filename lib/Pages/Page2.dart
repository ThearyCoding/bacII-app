import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:untitled1/ResultBacII/Result_bacII_2.dart';

class Page2 extends StatefulWidget {
  const Page2({super.key});

  @override
  State<Page2> createState() => _Page2State();
}

class _Page2State extends State<Page2> {
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

  int totalScore = 0;

  @override
  void initState() {
    super.initState();
    controller1.addListener(_updateScore1);
    controller2.addListener(_updateScore2);
    controller3.addListener(_updateScore3);
    controller4.addListener(_updateScore4);
    controller5.addListener(_updateScore5);
    controller6.addListener(_updateScore6);
    controller7.addListener(_updateScore7);
  }
  String grade1 = "";
  void _updateScore1() {
    setState(() {
      score1 = int.tryParse(controller1.text) ?? 0;
      _updateTotalScore();
      if (score1 >= 112 && score1 <= 125) {
        grade1= 'A';
      } else if (score1 >= 100 && score1 <= 111) {
        grade1='B';
      } else if (score1 >= 87 && score1 <= 99) {
        grade1= 'C';
      } else if (score1 >= 75 && score1 <= 86) {
        grade1= 'D';
      } else if (score1 >= 62 && score1 <= 74) {
        grade1='E';
      } else if (score1 >= 1 && score1 <= 61) {
        grade1='F';
      }

    });
  }
  String grade2 = "";
  void _updateScore2() {
    setState(() {
      score2 = int.tryParse(controller2.text) ?? 0;
      _updateTotalScore();
      if (score2 >= 67 && score2 <= 75) {
        grade2 = 'A';
      } else if (score2 >= 60 && score2 <= 66) {
        grade2 = 'B';
      } else if (score2 >= 52 && score2 <= 59) {
        grade2 = 'C';
      } else if (score2 >= 45 && score2 <= 51) {
        grade2 = 'D';
      } else if (score2 >= 37 && score2 <= 44) {
        grade2 = 'E';
      } else if (score2 >= 1 && score2 <= 36) {
        grade2 = 'F';
      }
    });
  }
  String grade3 = "";
  void _updateScore3() {
    setState(() {
      score3 = int.tryParse(controller3.text) ?? 0;
      _updateTotalScore();
      if (score3 >= 67 && score3 <= 75) {
        grade3 = 'A';
      } else if (score3 >= 60 && score3 <= 66) {
        grade3 = 'B';
      } else if (score3 >= 52 && score3 <= 59) {
        grade3 = 'C';
      } else if (score3 >= 45 && score3 <= 51) {
        grade3 = 'D';
      } else if (score3 >= 37 && score3 <= 44) {
        grade3 = 'E';
      } else if (score3 >= 1 && score3 <= 36) {
        grade3 = 'F';
      }
    });
  }
  String grade4 = "";
  void _updateScore4() {
    setState(() {
      score4 = int.tryParse(controller4.text) ?? 0;
      _updateTotalScore();
      if (score4 >= 67 && score4 <= 75) {
        grade4 = 'A';
      } else if (score4 >= 60 && score4 <= 66) {
        grade4 = 'B';
      } else if (score4 >= 52 && score4 <= 59) {
        grade4 = 'C';
      } else if (score4 >= 45 && score4 <= 51) {
        grade4 = 'D';
      } else if (score4 >= 37 && score4 <= 44) {
        grade4 = 'E';
      } else if (score4 >= 1 && score4 <= 36) {
        grade4 = 'F';
      }
    });
  }
  String grade5 = "";
  void _updateScore5() {
    setState(() {
      score5 = int.tryParse(controller5.text) ?? 0;
      _updateTotalScore();
      if (score5 >= 67 && score5 <= 75) {
        grade5 = 'A';
      } else if (score5 >= 60 && score5 <= 66) {
        grade5 = 'B';
      } else if (score5 >= 52 && score5 <= 59) {
        grade5 = 'C';
      } else if (score5 >= 45 && score5 <= 51) {
        grade5 = 'D';
      } else if (score5 >= 37 && score5 <= 44) {
        grade5 = 'E';
      } else if (score5 >= 1 && score5 <= 36) {
        grade5 = 'F';
      }
    });
  }
  String grade6 = "";
  void _updateScore6() {
    setState(() {
      score6 = int.tryParse(controller6.text) ?? 0;
      _updateTotalScore();
      if (score6 >= 45 && score6 <= 50) {
        grade6 = 'A';
      } else if (score6 >= 40 && score6 <= 44) {
        grade6 = 'B';
      } else if (score6 >= 35 && score6 <= 39) {
        grade6 = 'C';
      } else if (score6 >= 30 && score6 <= 34) {
        grade6 = 'D';
      } else if (score6 >= 25 && score6 <= 29) {
        grade6 = 'E';
      } else if (score6 >= 1 && score6 <= 24) {
        grade6 = 'F';
      }
    });
  }
  String grade7 = "";
  void _updateScore7() {
    score7 = int.tryParse(controller7.text) ?? 0;
    if (score7 >= 45 && score7 <= 50) {
      grade7 = 'A';
    } else if (score7 >= 40 && score7 <= 44) {
      grade7 = 'B';
    } else if (score7 >= 35 && score7 <= 39) {
      grade7 = 'C';
    } else if (score7 >= 30 && score7 <= 34) {
      grade7 = 'D';
    } else if (score7 >= 25 && score7 <= 29) {
      grade7 = 'E';
    } else if (score7 >= 1 && score7 <= 24) {
      grade7 = 'F';
    }
    if (score7 <= 25) {
      setState(() {
        score7 = 0;
        _updateTotalScore();
      });
    } else {
      setState(() {
        score7 -=25;
        _updateTotalScore();
      });
    }
  }


  String ispass = "";
  String grade = "";
  String calculateGrade(int score) {
    if (score >= 427 && score <= 500) {
      return 'A';
    } else if (score >= 380 && score <= 426) {
      return 'B';
    } else if (score >= 332 && score <= 379) {
      return 'C';
    } else if (score >= 286 && score <= 331) {
      return 'D';
    } else if (score >= 237 && score <= 285) {
      return 'E';
    } else if (score < 237) {
      return 'F';
    } else {
      return 'Invalid Range';
    }
  }
  String Encourage = "";
  void _updateTotalScore() {
    setState(() {
      totalScore = score1 + score2 + score3 + score4 + score5 + score6 + score7;
      grade = calculateGrade(totalScore);
      if(totalScore <= 236){
        ispass = "ធ្លាក់";
        Encourage = "កុំអស់សង្ឃឹមអី ប្រឹងប្រែងបន្តទៀតណា!";

      }

      else{
        ispass = "ជាប់";
        Encourage = "សូមចូលរួមអបអរសាទ!";
      }


    });
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
                  decoration: BoxDecoration(

                  ),

                  child: Text("មុខវិជ្ជាគោល",
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
                        "អក្សរសាស្រ្តខ្មែរ (១២៥)",
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
                              return 'Please enter a number';
                            }
                            return null;
                          },
                          controller: controller1,
                          inputFormatters: [FilteringTextInputFormatter.digitsOnly,
                            _LimitedRangeTextInputFormatter(1, 125)
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
                        "គណិតវិទ្យា (៧៥)",
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
                              return 'Please enter a number';
                            }
                            return null;
                          },
                          controller: controller2,
                          inputFormatters: [FilteringTextInputFormatter.digitsOnly,
                            _LimitedRangeTextInputFormatter(1, 75)
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
                        "ភូមិវិទ្យា (៧៥)",
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
                              return 'Please enter a number';
                            }
                            return null;
                          },
                          controller: controller3,
                          inputFormatters: [FilteringTextInputFormatter.digitsOnly,
                            _LimitedRangeTextInputFormatter(1, 75)
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
                        "ប្រវត្តិវិទ្យា (៧៥)",
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
                              return 'Please enter a number';
                            }
                            return null;
                          },
                          controller: controller4,
                          inputFormatters: [FilteringTextInputFormatter.digitsOnly,
                            _LimitedRangeTextInputFormatter(1, 75)
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
                        "សីលធម៌ពលរដ្ឋ (៧៥)",
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
                              return 'Please enter a number';
                            }
                            return null;
                          },
                          controller: controller5,
                          inputFormatters: [FilteringTextInputFormatter.digitsOnly,
                            _LimitedRangeTextInputFormatter(1, 75)
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
                        "មុខវិជ្ចាជម្រើស (៥០)",
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
                              return 'Please enter a number';
                            }
                            return null;
                          },
                          controller: controller6,
                          inputFormatters: [FilteringTextInputFormatter.digitsOnly,
                            _LimitedRangeTextInputFormatter(1, 50)
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
                        "ភាសាបរទេស (៥០)",
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
                              return 'Please enter a number';
                            }
                            return null;
                          },
                          controller: controller7,
                          inputFormatters: [FilteringTextInputFormatter.digitsOnly,
                            _LimitedRangeTextInputFormatter(0, 50)
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
                const SizedBox(width: 10,),
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
                          controller7.text.isNotEmpty
                      ) {
                        // Navigate to the Result page
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Result2(
                              totalScore: totalScore,
                              grade: grade,
                              grade1: grade1,
                              grade2: grade2,
                              grade3: grade3,
                              grade4: grade4,
                              grade5: grade5,
                              grade6: grade6,
                              grade7: grade7,
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
          ],
        ),
      ),
    );
  }
}
String? _validateInput(String? value) {
  if (value == null || value.isEmpty) {
    return "Invalid input";
  }

  int inputValue = int.tryParse(value) ?? 0;

  if (inputValue < 1 || inputValue > 125) {
    return "Input must be between 1 and 125";
  }

  return null;
}
class _LimitedRangeTextInputFormatter extends TextInputFormatter {
  final int min;
  final int max;

  _LimitedRangeTextInputFormatter(this.min, this.max);

  @override
  TextEditingValue formatEditUpdate(TextEditingValue oldValue, TextEditingValue newValue) {
    int? value = int.tryParse(newValue.text);

    if (value != null) {
      if (value < min) {
        value = min;
      } else if (value > max) {
        value = max;
      }
    }

    return TextEditingValue(
      text: value?.toString() ?? '',
      selection: TextSelection.fromPosition(TextPosition(offset: (value?.toString() ?? '').length)),
    );
  }
}