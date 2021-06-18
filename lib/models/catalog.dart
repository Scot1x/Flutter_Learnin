import 'dart:convert';

class CatalogModel {
  //Singleton class

  static final catModel = CatalogModel.internal();

  CatalogModel.internal();

  factory CatalogModel() => catModel;

  ////

  static List<Items> product = [];

  //get item by id
  Items getbyid(int id) =>
      product.firstWhere((element) => element.id == id, orElse: null);

  //get item by pos
  Items getbypos(int pos) => product[pos];
}

class Items {
  final int id;
  final String name;
  final String desc;
  final num price;
  final String color;
  final String image;

  Items(this.id, this.name, this.desc, this.price, this.color, this.image);

  Items copyWith({
    int? id,
    String? name,
    String? desc,
    num? price,
    String? color,
    String? image,
  }) {
    return Items(
      id ?? this.id,
      name ?? this.name,
      desc ?? this.desc,
      price ?? this.price,
      color ?? this.color,
      image ?? this.image,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'desc': desc,
      'price': price,
      'color': color,
      'image': image,
    };
  }

  factory Items.fromMap(Map<String, dynamic> map) {
    return Items(
      map['id'],
      map['name'],
      map['desc'],
      map['price'],
      map['color'],
      map['image'],
    );
  }

  String toJson() => json.encode(toMap());

  factory Items.fromJson(String source) => Items.fromMap(json.decode(source));

  @override
  String toString() {
    return 'Items(id: $id, name: $name, desc: $desc, price: $price, color: $color, image: $image)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Items &&
        other.id == id &&
        other.name == name &&
        other.desc == desc &&
        other.price == price &&
        other.color == color &&
        other.image == image;
  }

  @override
  int get hashCode {
    return id.hashCode ^
        name.hashCode ^
        desc.hashCode ^
        price.hashCode ^
        color.hashCode ^
        image.hashCode;
  }
}
