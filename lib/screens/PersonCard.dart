
import 'package:flutter/material.dart';
import 'package:flutter_project/widgets/components/DetailElement.dart';
import '../models/Person.dart';
import '../widgets/TextStyles/Title.dart';

class PersonCard extends StatelessWidget {
  final Person person;

  const PersonCard(this.person);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child:Container (
          color: Colors.black,
        child:
        SingleChildScrollView(
          child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              alignment: Alignment.center,
              child :TitleStyle(
                  person.name
              ),
            ),

            const SizedBox(height: 8),
            DetailsElement('Height: ${person.height}cm'),
            DetailsElement('Mass: ${person.mass}kg'),
            DetailsElement('Hair color: ${person.hairColor}'),
            DetailsElement( 'Skin color: ${person.skinColor}'),
            DetailsElement( 'Eye color: ${person.eyeColor}'),
            DetailsElement('Birth year: ${person.birthYear}'),
            DetailsElement('Gender: ${person.gender}'),
            DetailsElement('Homeworld:\n ${person.homeworld}'),
            DetailsElement('Films:\n ${person.films.join(', ')}'),
            DetailsElement('Species: ${person.species.join(', ')}'),
            DetailsElement('Vehicles:\n ${person.vehicles.join(', ')}'),
            DetailsElement('Starships:\n ${person.starships.join(', ')}'),

          ],
        ),))
      ),
    );
  }
}



