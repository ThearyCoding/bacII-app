import 'package:flutter/material.dart';

import 'package:untitled1/Pages/Page2.dart';
import 'package:untitled1/Pages/Page3.dart';
import 'package:untitled1/Pages/page1.dart';
import 'package:untitled1/Pages/page4.dart';
import 'package:untitled1/information/information.dart';

class CalculateBacII extends StatefulWidget {
  const CalculateBacII({Key? key}) : super(key: key);

  @override
  State<CalculateBacII> createState() => _CalculateBacIIState();
}

class _CalculateBacIIState extends State<CalculateBacII>
    with TickerProviderStateMixin {
  late final TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 4, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  List<String> subjects1 = [
    "គណិតវិទ្យា",
    "អក្សរសាស្រ្តខ្មែរ",
    "ប្រវត្តិវិទ្យា",
    "រូបវិទ្យា",
    "គីមីវិទ្យា",
    "ជីវវិទ្យា",
    "ភាសាបរទេស",
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
  var header = [
    "វិទ្យាសាស្រ្ត",
    "សង្គម",
    'ពុទ្ធិក',
    "តារាងពិន្ទុ",
  ];
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        titleSpacing: -8,
        leading: const Information(),
        bottom: TabBar(
          controller: _tabController,
          labelColor: Colors.white,
          labelStyle: const TextStyle(
            fontSize: 18,
          ),
          isScrollable: true,
          unselectedLabelColor: Colors.white,
          tabs: [
            for (var head in header)
              Tab(
                child: Text(head,style: const TextStyle(
                  fontSize: 15
                ),),
              )
          ],
        ),
        title: const Text(
          "12",
          style: TextStyle(color: Colors.white, fontSize: 30),
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: const <Widget>[
          Page1(),
          Page2(),
          Page4(),
          Page3(),
        ],
      ),
    );
  }
}
