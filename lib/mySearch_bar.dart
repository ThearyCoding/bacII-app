import 'package:flutter/material.dart';
class MySearchBar extends StatefulWidget {
  const MySearchBar({super.key});

  @override
  State<MySearchBar> createState() => _MySearchBarState();
}

class _MySearchBarState extends State<MySearchBar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Search Bar"),
        actions: [
          IconButton(
            onPressed: (){
              showSearch(context: context,
                  delegate: CustomSearchdelegate(),
              );
            },
            icon: Icon(Icons.search),
          )
        ],
      ),
    );
  }
}

class CustomSearchdelegate extends SearchDelegate{
  List<String> seachItem = [
    'Apple',
    'Orange',
    'Banana',
    'WaterMelon',


  ];
  @override
  List<Widget>? buildActions(BuildContext context) {
    return [
      IconButton(
        icon: Icon(Icons.clear),
        onPressed: (){
          query = '';
        },
      )
    ];
  }

  @override
  Widget? buildLeading(BuildContext context) {
      return IconButton(
        icon: Icon(Icons.arrow_back),
        onPressed: (){
          close(context,null);
        },
      );
  }

  @override
  Widget buildResults(BuildContext context) {
    List<String> matchQuary = [];

    for(var fruit in seachItem){
      if(fruit.toLowerCase().contains(query.toLowerCase())){
        matchQuary.add(fruit);
      }
    }
    return ListView.builder(
      itemCount: matchQuary.length,
      itemBuilder: (context,index){
        var result = matchQuary[index];
        return ListTile(
          title: Text(result),
        );
      },
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    List<String> matchQuary = [];

    for(var fruit in seachItem){
      if(fruit.toLowerCase().contains(query.toLowerCase())){
        matchQuary.add(fruit);
      }
    }
    return ListView.builder(
      itemCount: matchQuary.length,
      itemBuilder: (context,index){
        var result = matchQuary[index];
        return ListTile(
          title: Text(result),
        );
      },
    );
  }

}
