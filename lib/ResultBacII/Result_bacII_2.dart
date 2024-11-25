import 'package:flutter/material.dart';

class Result2 extends StatefulWidget {
  final int totalScore;
  final String grade;
  final String grade1;
  final String grade2;
  final String grade3;
  final String grade4;
  final String grade5;
  final String grade6;
  final String grade7;
  final String ispass;
  final String Encourage;

  const Result2({
    Key? key,
    required this.totalScore,
    required this.grade,
    required this.grade1,
    required this.grade2,
    required this.grade3,
    required this.grade4,
    required this.grade5,
    required this.grade6,
    required this.grade7,
    required this.ispass,
    required this.Encourage,
  }) : super(key: key);

  @override
  State<Result2> createState() => _Result2State();
}

class _Result2State extends State<Result2> with TickerProviderStateMixin{
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
    _tabController = TabController(length: 3, vsync: this);
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
          isScrollable: true,
          controller: _tabController,
          labelColor: Colors.white,

          labelStyle: TextStyle(
            fontSize: 20,
          ),
          unselectedLabelColor: Colors.white,

          tabs: [

            for(var head in header)
              Tab(
                child: Text(head),
              )

          ],
        ),
        title: Text(
          'លទ្ធផល',
          style: TextStyle(
              color: Colors.white,
              fontSize: 30,
              fontFamily: 'Khmer'
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.only(left: 15,right: 5),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 20),
              Row(
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
                    "ថ្នាក់សង្គម",
                    style: TextStyle(fontSize: 25,),
                  )
                ],
              ),
              SizedBox(height: 10),
              Text(
                "និទ្ទេសតាមមុខវិជ្ចា:",
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 20,),
              // Use Expanded for each row to ensure it fits within the available space
              Padding(
                padding: const EdgeInsets.only(left: 27, right: 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Expanded(
                      child: Row(
                        children: [
                          Text(
                            "អក្សរសាស្រ្តខ្មែរ : ",
                            style: TextStyle(
                              fontSize: 20,
                            ),
                          ),
                          Text(
                            " ${widget.grade1}",
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.red,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Row(
                        children: [
                          Text(
                            "គណិតវិទ្យា: ",
                            style: TextStyle(
                              fontSize: 20,
                            ),
                          ),
                          Text(
                            " ${widget.grade2}",
                            style: TextStyle(
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
              // Add Expanded for other rows similarly
              // ...
              Padding(
                padding: const EdgeInsets.only(left: 27, right: 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Expanded(
                      child: Row(
                        children: [
                          Text(
                            "ភូមិវិទ្យា : ",
                            style: TextStyle(
                              fontSize: 20,
                            ),
                          ),
                          Text(
                            " ${widget.grade3}",
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.red,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Row(
                        children: [
                          Text(
                            "ប្រវត្តិវិទ្យា : ",
                            style: TextStyle(
                              fontSize: 20,
                            ),
                          ),
                          Text(
                            " ${widget.grade4}",
                            style: TextStyle(
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
              Padding(
                padding: const EdgeInsets.only(left: 27, right: 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Expanded(
                      child: Row(
                        children: [
                          Text(
                            "សីលធម៌ពលរដ្ឋ : ",
                            style: TextStyle(
                              fontSize: 20,
                            ),
                          ),
                          Text(
                            " ${widget.grade5}",
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.red,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Row(
                        children: [
                          Text(
                            "មុខវិជ្ចាជម្រើស : ",
                            style: TextStyle(
                              fontSize: 20,
                            ),
                          ),
                          Text(
                            " ${widget.grade6}",
                            style: TextStyle(
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
              Padding(
                padding: const EdgeInsets.only(left: 120, right: 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Expanded(
                      child: Row(
                        children: [
                          Text(
                            "ភាសាបរទេស : ",
                            style: TextStyle(
                              fontSize: 20,
                            ),
                          ),
                          Text(
                            " ${widget.grade7}",
                            style: TextStyle(
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

              SizedBox(height: 20),
              Divider(
                thickness: 2,
              ),
              SizedBox(height: 20),
              // Use Expanded for each row to ensure it fits within the available space
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'ពិន្ទុសរុប  : ',
                        style: TextStyle(
                          fontSize: 20,
                        ),
                      ),
                      Text(
                        " ${widget.totalScore}",
                        style: TextStyle(
                          fontSize: 25,
                          color: Colors.red,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "លទ្ធផល  : ",
                        style: TextStyle(
                          fontSize: 20,
                        ),
                      ),
                      Text(
                        " ${widget.ispass}",
                        style: TextStyle(
                          fontSize: 23,
                          color: Colors.red,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "និទ្ទេស : ",
                        style: TextStyle(
                          fontSize: 23,
                        ),
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
                  const SizedBox(height: 10,),
                  Text(
                    "${widget.Encourage}",
                    style: const TextStyle(
                      fontSize: 20,
                      color: Colors.green,
                    ),
                  ),
                  SizedBox(height: 15),
                  const Divider(
                    thickness: 2,
                  ),
                  SizedBox(height: 15),

                  ElevatedButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blueAccent,
                      fixedSize: Size(250, 50),
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.zero,
                      ),
                    ),
                    child: const Text(
                      "គណនាម្តងទៀត",
                      style: TextStyle(fontSize: 20, color: Colors.white,),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
