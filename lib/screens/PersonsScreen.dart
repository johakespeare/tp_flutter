import 'dart:collection';
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:universal_io/io.dart';
import '../models/Person.dart';
import '../widgets/TextStyles/Subtitle.dart';
import '../widgets/components/CenteredLogo.dart';
import '../widgets/components/ListElement.dart';
import 'PersonDetails.dart';


class PersonsScreen extends StatelessWidget {
  final LinkedHashMap<String, dynamic> planet;
  const PersonsScreen(this.planet,{Key? key}) : super(key: key);



  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: PersonsList(planet));
  }
}

class PersonsList extends StatefulWidget {
  final LinkedHashMap<String, dynamic> planet;

  const PersonsList(this.planet,{super.key});

  @override
  _PersonsListState createState() => _PersonsListState(planet);
}


class _PersonsListState extends State<PersonsList> {
  final LinkedHashMap<String, dynamic> planet;
  List<dynamic> _persons = [];


  _PersonsListState(this.planet);

  @override
  void initState() {
    super.initState();
    getPersons(planet);
  }

  @override
  Widget build(BuildContext context) {
    if (_persons.isEmpty) {
      return const CircularProgressIndicator(

      );
    }
    if(_persons.length > 1) {
      return  Scaffold(
          backgroundColor: const Color(0xff386FA4),
          body:

          Container (
          decoration: const BoxDecoration(
          gradient: LinearGradient(
          colors: [Color(0xFFC00022),
          Color(0xFF2A0108),
          Colors.black,
          Color(0xFF0A061A),
          Color(0xFF180F41)],
          )),
          child :
          SafeArea(
              child:

              Column(
                crossAxisAlignment: CrossAxisAlignment.start ,
                children: [
                  Padding(
                      padding: const EdgeInsets.all(5.0),
                      child :
                      Column(
                          crossAxisAlignment: CrossAxisAlignment.start ,
                          children:  [
                            CenteredLogo(),
                            const SubtitleStyle("Choose your character")
                          ]
                      )
                  ),

                  Expanded(
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(30.0) ,

                        child: Container(
                            padding: const EdgeInsets.all(15),
                            child:
                            Flexible (
                              child:ListView.builder(

                                itemCount: _persons.length,
                                itemBuilder: (context, index) {
                                  return ListTile(
                                      onTap: () {
                                        Navigator.push(
                                          context,
                                         MaterialPageRoute(
                                            builder: (context) => PersonDetailsScreen(Person.fromJson(_persons[index])),

                                          ),
                                        );
                                      },
                                      title: ListElement(_persons[index]["name"],_persons[index]["gender"])
                                  );
                                },
                              ),
                            )

                        ),
                      )
                  )
                ],
              )

          ))
      );


    }else {

      return PersonDetailsScreen(Person.fromJson(_persons[0]));


    }


  }


  Future<void> getPersons(planet) async {

    for (var resident in planet['residents']) {
      var req = await HttpClient().getUrl(Uri.parse(resident));
      var res = await req.close();
      var responseBody = await res.transform(utf8.decoder).join();
      var json = jsonDecode(responseBody);
      _persons.add(json);
    }

    setState(() {
      _persons = _persons;
    });


  }






}

