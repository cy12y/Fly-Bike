class Items {
  final String avalible;
  final String name, image;
  final String charge;
  final String range;
  final String locMap;
  //final String location;

  Items(
      {required this.locMap,
      required this.name,
      required this.avalible,
      required this.image,
      required this.charge,
      required this.range
      // required this.location,
      });
}

List<Items> product = [
  Items(
      name: "Engeneering college",
      avalible: '5',
      image: "lib/images/engeneering.png",
      charge: "95%",
      range: "30 km",
      locMap: "lib/images/mapeng.png"),
  Items(
      name: "Business college",
      avalible: '4',
      image: "lib/images/business.png",
      charge: "70%",
      range: "22 km",
      locMap: "lib/images/mapbusness.png"),
  Items(
      name: "computer Scince college",
      avalible: '6',
      image: "lib/images/computer.png",
      charge: "90%",
      range: "29 km",
      locMap: "lib/images/mapcomp.png"),
  Items(
      name: "Medicine college",
      avalible: '3',
      image: "lib/images/medicine.png",
      charge: "92%",
      range: "28 km",
      locMap: "lib/images/maphous.png"),
  Items(
      name: "Student housing",
      avalible: '5',
      image: "lib/images/housing.png",
      charge: "100%",
      range: "40 km",
      locMap: "lib/images/maphous.png"),
  Items(
      name: "language college",
      avalible: '5',
      image: "lib/images/lang.png",
      charge: "90%",
      range: "29 km",
      locMap: "lib/images/maplang.png"),
];
