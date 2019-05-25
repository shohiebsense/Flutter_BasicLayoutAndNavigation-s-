class City {

  final String name;

  final String image;

  final String population;

  final String country;

  City({this.name, this.country, this.population, this.image});

  static List<City> allCities(){
    var citiesList = new List<City>();

    citiesList.add(City(name: "Jakarta", country: "Indonesia", population: "10 mill", image: "london.png"));
    citiesList.add(City(name: "Jakarta", country: "Indonesia", population: "10 mill", image: "delhi.png"));
    citiesList.add(City(name: "Jakarta", country: "Indonesia", population: "10 mill", image: "vancouver.png"));
    citiesList.add(City(name: "Jakarta", country: "Indonesia", population: "10 mill", image: "newyork.png"));
    citiesList.add(City(name: "Jakarta", country: "Indonesia", population: "10 mill", image: "paris.png"));
    citiesList.add(City(name: "Jakarta", country: "Indonesia", population: "10 mill", image: "berlin.png"));

    return citiesList;
  }




}