import 'package:flutter/material.dart';
import 'package:test1/view/components/profile_card_builder.dart';

class MatchesPage extends StatefulWidget {
  const MatchesPage({super.key});

  @override
  State<MatchesPage> createState() => _MatchesPageState();
}

class _MatchesPageState extends State<MatchesPage> {
  List<String> nameList = [
    'Itachi',
    'Deidara',
    'Kiba',
    'Kakashi',
    'Sasuke',
    'Naruto',
    'Gaara'
  ];
  List<String> images = [
    'assets/itachiprof.jpeg',
    'assets/deidara.jpeg',
    'assets/kiba1.jpeg',
    'assets/kakashi1.png',
    'assets/sasuke1.jpeg',
    'assets/naruto1.jpeg',
    'assets/gaara1.png'
  ];

  List<String> ageList = ['30', '27', '18', '30', '19', '18', '23'];
  //lists are dynamic
  //made lists here as a "database replacement"
  //would actually be each user info in a database
  //these are just a sample set

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(vertical: 50.0),
        child: GridView.builder(
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          // ListView. builder creates a scrollable, linear array of widgets
          //in this case we want to build a bunch of the profile cards
          //don't have to manually go through index because 'builder'
          //useful list handlers: elementat - indexof - add
          //with our list.length we can determine our item count
          //loop will continue for length of nameList here
          itemCount: nameList.length,
          itemBuilder: (context, index) {
            return ProfileCardBuilder(
              name: nameList.elementAt(index),
              photo: images.elementAt(index),
              age: ageList.elementAt(index),
            );
          },
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2, crossAxisSpacing: 10.0, mainAxisSpacing: 2.0),
        ),
      ),
    );
  }
}
