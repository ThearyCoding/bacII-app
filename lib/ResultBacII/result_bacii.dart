import 'package:flutter/material.dart';

class Result extends StatefulWidget {
  final int totalScore;
  final String grade;
  final List<String> grades;
  final String isPass;
  final String encourage;

  const Result({
    Key? key,
    required this.totalScore,
    required this.grade,
    required this.grades,
    required this.isPass,
    required this.encourage,
  }) : super(key: key);

  @override
  State<Result> createState() => _ResultState();
}

class _ResultState extends State<Result> with TickerProviderStateMixin {
  var header = [
    "វិទ្យាសាស្រ្ត",
    "សង្គម",
    'ពុទ្ធិក',
    "តារាងពិន្ទុ",
  ];

  late final TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: header.length, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        centerTitle: true,
        automaticallyImplyLeading: false,
        bottom: TabBar(
          controller: _tabController,
          labelColor: Colors.white,
          labelStyle: const TextStyle(fontSize: 20),
          unselectedLabelColor: Colors.white,
          tabs: [
            for (var head in header) Tab(child: Text(head)),
          ],
        ),
        title: const Text(
          'លទ្ធផល',
          style: TextStyle(
            color: Colors.white,
            fontSize: 30,
            fontFamily: 'Khmer',
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(height: 20),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "តាងរាងលទ្ធផល: ",
                  style: TextStyle(
                    color: Colors.blue,
                    fontSize: 25,
                  ),
                ),
                Text(
                  "ថ្នាក់វិទ្យាសាស្រ្ត",
                  style: TextStyle(
                    fontSize: 25,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10),
            const Text(
              "និទ្ទេសតាមមុខវិជ្ចា:",
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.only(left: 27, right: 5),
              child: Column(
                children: [
                  for (int i = 0; i < widget.grades.length; i += 2)
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 5),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            child: Row(
                              children: [
                                Text(
                                  "Subject ${i + 1} : ",
                                  style: const TextStyle(fontSize: 20),
                                ),
                                Text(
                                  widget.grades[i],
                                  style: const TextStyle(
                                    fontSize: 20,
                                    color: Colors.red,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          if (i + 1 < widget.grades.length)
                            Expanded(
                              child: Row(
                                children: [
                                  Text(
                                    "Subject ${i + 2} : ",
                                    style: const TextStyle(fontSize: 20),
                                  ),
                                  Text(
                                    widget.grades[i + 1],
                                    style: const TextStyle(
                                      fontSize: 20,
                                      color: Colors.red,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                        ],
                      ),
                    ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            const Divider(thickness: 2),
            const SizedBox(height: 20),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'ពិន្ទុសរុប  : ',
                      style: TextStyle(fontSize: 20),
                    ),
                    Text(
                      " ${widget.totalScore}",
                      style: const TextStyle(
                        fontSize: 25,
                        color: Colors.red,
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      "លទ្ធផល  : ",
                      style: TextStyle(fontSize: 20),
                    ),
                    Text(
                      " ${widget.isPass}",
                      style: const TextStyle(
                        fontSize: 23,
                        color: Colors.red,
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      "និទ្ទេស : ",
                      style: TextStyle(fontSize: 23),
                    ),
                    Text(
                      " ${widget.grade}",
                      style: const TextStyle(
                        fontSize: 25,
                        color: Colors.red,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                Text(
                  widget.encourage,
                  style: const TextStyle(
                    fontSize: 20,
                    color: Colors.green,
                  ),
                ),
                const SizedBox(height: 15),
                const Divider(thickness: 2),
                const SizedBox(height: 15),
                ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blueAccent,
                    fixedSize: const Size(250, 50),
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.zero,
                    ),
                  ),
                  child: const Text(
                    "គណនាម្តងទៀត",
                    style: TextStyle(fontSize: 20, color: Colors.white),
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
