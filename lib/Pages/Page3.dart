import 'package:flutter/material.dart';

class Page3 extends StatefulWidget {
  const Page3({super.key});

  @override
  State<Page3> createState() => _Page3State();
}

class _Page3State extends State<Page3> {
  List<String> subjects1 = [
    "គណិតវិទ្យា",
    "អក្សរសាស្រ្តខ្មែរ",
    "ប្រវត្តិវិទ្យា",
    "រូបវិទ្យា",
    "គីមីវិទ្យា",
    "ជីវវិទ្យា",
    "ភាសាបរទេស",
  ];
  List<String> gradingCriteria = [
    'មុខវិជ្ជា',
    'អតិបរមា',
    'A 90%',
    'B 80%',
    'C 70%',
    'D 60%',
    'E 50%',
    'F < 50%',
  ];

  List<String> subjects2 = [
    "អក្សរសាស្រ្តខ្មែរ",
    "គណិតគណិតវិទ្យា",
    "ភូមិវិទ្យា",
    "ប្រវត្តិវិទ្យា",
    "ផែនដីវិទ្យា",
    "សីលធម៌ពលរដ្ឋ",
    "ភាសាបរទេស",
  ];
  List<String> khmerGradingScale = [
    'អក្សរសាស្រ្តខ្មែរ',
    '75',
    '75-68',
    '67-60',
    '59-53',
    '52-45',
    '44-38',
    '37-0',
  ];
  List<String> MathGradingScale = [
    'គណិតវិទ្យា',
    '125',
    '113-125',
    '100-112',
    '88-99',
    '75-87',
    '63-74',
    '62-0',
  ];
  List<String> PhysicGradingScale = [
    'រូបវិទ្យា',
    '75',
    '75-68',
    '67-60',
    '59-53',
    '52-45',
    '44-38',
    '37-0',
  ];
  List<String> ChemitryGradingSale = [
    'គីមីវិទ្យា',
    '75',
    '75-68',
    '67-60',
    '59-53',
    '52-45',
    '44-38',
    '37-0',
  ];
  List<String> BiologyGradingScale = [
    'គីមីវិទ្យា',
    '75',
    '75-68',
    '67-60',
    '59-53',
    '52-45',
    '44-38',
    '37-0',
  ];
  List<String> HistoryGradingScale = [
    'ប្រវត្តិវិទ្យា',
    '50',
    '45-50',
    '40-45',
    '35-39',
    '30-34',
    '25-29',
    '25-0',
  ];
  List<String> EnglisthGradingScale = [
    'ភាសាបរទេស',
    '50',
    '45-50',
    '40-45',
    '35-39',
    '30-34',
    '25-29',
    '25-0',
  ];

  // grade scale 2

  List<String> MathGradingScale2 = [
    'គណិតវិទ្យា',
    '75',
    '75-68',
    '67-60',
    '59-53',
    '52-45',
    '44-38',
    '37-0',
  ];
  List<String> khmerGradingScale2 = [
    'អក្សរសាស្រ្តខ្មែរ',
    '125',
    '113-125',
    '100-112',
    '88-99',
    '75-87',
    '63-74',
    '62-0',
  ];
  List<String> geolgyGradingScale2 = [
    'ភូមិវិទ្យា',
    '75',
    '75-68',
    '67-60',
    '59-53',
    '52-45',
    '44-38',
    '37-0',
  ];
  List<String> historyGradingScale2 = [
    'ប្រវត្តិវិទ្យា',
    '75',
    '75-68',
    '67-60',
    '59-53',
    '52-45',
    '44-38',
    '37-0',
  ];
  List<String> ethicGradingScale2 = [
    'សីលធម៌ពលរដ្ឋ',
    '75',
    '75-68',
    '67-60',
    '59-53',
    '52-45',
    '44-38',
    '37-0',
  ];
  List<String> earthGradingScale2 = [
    'ផែនដីវិទ្យា',
    '50',
    '45-50',
    '40-45',
    '35-39',
    '30-34',
    '25-29',
    '25-0',
  ];
  List<String> EnglisthGradingScale2 = [
    'ភាសាបរទេស',
    '50',
    '45-50',
    '40-45',
    '35-39',
    '30-34',
    '25-29',
    '25-0',
  ];
  List<String> scoreRanges = [
    "ពិន្ទុសរុប",
    "475",
    "427-475",
    "380-426",
    "332-379",
    "286-331",
    "237-285",
    "<237",
  ];

  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.only(left: 10, top: 10),
            child: Row(
              children: [
                Icon(Icons.table_view_outlined,
                  color: Colors.blueAccent,
                ),
                Text("តារាងអត្រាពិន្ទុកំណត់និទ្ទេស",
                  style: TextStyle(
                      fontSize: 24
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 10,),
          Row(

            children: [
              SizedBox(width: 20,),
              Container(
                width: 10,
                height: 10,
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

                child: Text("ថ្នាក់វិទ្យាសាស្រ្ត",
                  style: TextStyle(
                      fontSize: 20
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 10,),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: DataTable(
              headingTextStyle: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white
              ),
              headingRowColor: MaterialStateProperty.resolveWith(
                      (states) => Colors.blueAccent
              ),
              columns: List<DataColumn>.generate(
                gradingCriteria.length,
                (int index) => DataColumn(

                  label: Text(gradingCriteria[index]),

                ),
              ),
              rows: <DataRow>[
                DataRow(
                    cells: List.generate(
                        khmerGradingScale.length,
                            (index) => DataCell(
                            Text("${MathGradingScale[index]}")
                        )
                    )
                ),
                DataRow(
                  cells: List.generate(
                    khmerGradingScale.length,
                        (index) => DataCell(
                      Text("${khmerGradingScale[index]}"),
                    ),
                  ),
                ),
                DataRow(
                  cells: List.generate(
                    PhysicGradingScale.length,
                      (index) => DataCell(
                        Text(PhysicGradingScale[index]),
                      )
                  ),
                ),
                DataRow(
                  cells: List.generate(
                      ChemitryGradingSale.length,
                          (index) => DataCell(
                        Text(ChemitryGradingSale[index]),
                      )
                  ),
                ),
                DataRow(
                  cells: List.generate(
                      BiologyGradingScale.length,
                          (index) => DataCell(
                        Text(BiologyGradingScale[index]),
                      )
                  ),
                ),
                DataRow(
                  cells: List.generate(
                      HistoryGradingScale.length,
                          (index) => DataCell(
                        Text(HistoryGradingScale[index]),
                      )
                  ),
                ),
                DataRow(
                  cells: List.generate(
                      EnglisthGradingScale.length,
                          (index) => DataCell(
                        Text(EnglisthGradingScale[index]),
                      )
                  ),
                ),
                DataRow(
                  color: MaterialStateProperty.all(Colors.grey[400]),
                  cells: List.generate(
                      scoreRanges.length,
                          (index) => DataCell(
                        Text(scoreRanges[index]),
                      )
                  ),
                ),
              ]
            ),
          ),
          Row(

            children: [
              SizedBox(width: 20,),
              Container(
                width: 10,
                height: 10,
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

                child: Text("ថ្នាក់សង្គម",
                  style: TextStyle(
                      fontSize: 20
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 10,),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: DataTable(
                headingTextStyle: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white
                ),
                headingRowColor: MaterialStateProperty.resolveWith(
                        (states) => Colors.blueAccent
                ),
                columns: List<DataColumn>.generate(
                  gradingCriteria.length,
                      (int index) => DataColumn(

                    label: Text(gradingCriteria[index]),

                  ),
                ),
                rows: <DataRow>[
                  DataRow(
                      cells: List.generate(
                          khmerGradingScale2.length,
                              (index) => DataCell(
                              Text("${khmerGradingScale2[index]}")
                          )
                      )
                  ),
                  DataRow(
                    cells: List.generate(
                      MathGradingScale2.length,
                          (index) => DataCell(
                        Text("${MathGradingScale2[index]}"),
                      ),
                    ),
                  ),
                  DataRow(
                    cells: List.generate(
                        geolgyGradingScale2.length,
                            (index) => DataCell(
                          Text(geolgyGradingScale2[index]),
                        )
                    ),
                  ),
                  DataRow(
                    cells: List.generate(
                        historyGradingScale2.length,
                            (index) => DataCell(
                          Text(historyGradingScale2[index]),
                        )
                    ),
                  ),
                  DataRow(
                    cells: List.generate(
                        ethicGradingScale2.length,
                            (index) => DataCell(
                          Text(ethicGradingScale2[index]),
                        )
                    ),
                  ),
                  DataRow(
                    cells: List.generate(
                        earthGradingScale2.length,
                            (index) => DataCell(
                          Text(earthGradingScale2[index]),
                        )
                    ),
                  ),
                  DataRow(
                    cells: List.generate(
                        EnglisthGradingScale2.length,
                            (index) => DataCell(
                          Text(EnglisthGradingScale2[index]),
                        )                                                                                   
                    ),
                  ),
                  DataRow(
                    color: MaterialStateProperty.all(Colors.grey[400]),
                    cells: List.generate(
                    scoreRanges.length
                    , (index) => DataCell(
                    Text(scoreRanges[index]),

                    )
    )
                  )
                ]
            ),
          ),
          Row(

            children: [
              SizedBox(width: 20,),
              Container(
                width: 10,
                height: 10,
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

                child: Text("ថ្នាក់ពុទ្ធិក",
                  style: TextStyle(
                      fontSize: 20
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
