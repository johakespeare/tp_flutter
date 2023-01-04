import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter_project/widgets/components/CenteredLogo.dart';
import 'package:universal_io/io.dart';
import '../widgets/TextStyles/Subtitle.dart';
import '../widgets/components/ListElement.dart';
import 'PersonsScreen.dart';

class PlanetsScreen extends StatelessWidget {
  const PlanetsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        home: PlanetsList());
  }
}

class PlanetsList extends StatefulWidget {
  const PlanetsList({super.key});

  @override
  PlanetsListState createState() => PlanetsListState();
}


class PlanetsListState extends State<PlanetsList> {

  List<dynamic> _Planets = [];
  @override
  void initState() {
    super.initState();
    getPlanets();
  }




  @override
  Widget build(BuildContext context) {
    return Scaffold(
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

                                    SubtitleStyle("Choose your planet, padawan")
                                  ]
                                )
                           ),
                 
                          Expanded(
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(30.0) ,
                                
                                child: Container(
                                  padding: EdgeInsets.all(15),
                                  child:
                                  Flexible (
                                    child:ListView.builder(

                                      itemCount: _Planets.length,
                                      itemBuilder: (context, index) {
                                        return ListTile(
                                          onTap: () {
                                            Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                builder: (context) => PersonsScreen(_Planets[index]),
                                              ),
                                            );
                                          },
                                          title: ListElement(_Planets[index]["name"],_Planets[index]["climate"])
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
  }

  Future<void> getPlanets() async {

    var url = 'https://swapi.dev/api/planets/';
    var req = await HttpClient().getUrl(Uri.parse(url));
    var res = await req.close();
    var responseBody = await res.transform(utf8.decoder).join();
    var json = jsonDecode(responseBody);

    var Planets = json["results"].toList();

    setState(() {
      _Planets = Planets;
    });
  }


}
