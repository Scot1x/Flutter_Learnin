class CatalogModel {
  static final product = [
    Items(
      id: 1,
      name: "Gtx 1050",
      desc: "OC 4gb Edition",
      price: 15000,
      color: "#33505a",
      image:
          "https://images-na.ssl-images-amazon.com/images/I/81VBPk5pnLL._AC_SL1500_.jpg",
    )
  ];
}

class Items {
  final int id;
  final String name;
  final String desc;
  final num price;
  final String color;
  final String image;

  Items(
      {required this.id,
      required this.name,
      required this.desc,
      required this.price,
      required this.color,
      required this.image});
}
