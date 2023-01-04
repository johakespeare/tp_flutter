class Person {
  final String name;
  final String height;
  final String mass;
  final String hairColor;
  final String skinColor;
  final String eyeColor;
  final String birthYear;
  final String gender;
  final String homeworld;
  final List<String> films;
  final List<String> species;
  final List<String> vehicles;
  final List<String> starships;
  final String created;
  final String edited;
  final String url;

  Person(
      this.name,
      this.height,
      this.mass,
      this.hairColor,
      this.skinColor,
      this.eyeColor,
      this.birthYear,
      this.gender,
      this.homeworld,
      this.films,
      this.species,
      this.vehicles,
      this.starships,
      this.created,
      this.edited,
      this.url,
      );

  Person.fromJson(Map<String, dynamic> json) :
        name  = json['name'],
        height=json['height'],
        mass= json['mass'],
        hairColor= json['hair_color'],
        skinColor= json['skin_color'],
        eyeColor= json['eye_color'],
        birthYear= json['birth_year'],
        gender= json['gender'],
        homeworld= json['homeworld'],
        films= List<String>.from(json['films']),
        species= List<String>.from(json['species']),
        vehicles= List<String>.from(json['vehicles']),
        starships= List<String>.from(json['starships']),
        created= json['created'],
        edited= json['edited'],
        url=json['url']
  ;
}