
class Item{
  final String id;
  final String name;
  final String desc;
  final num price;
  final String color;
  final String image;

  Item({required this.id, required this.name, required this.desc, required this.price, required this.color, required this.image});
}

final products=[Item(
  id: "item1",
  name: "iPhone 12 pro",
  desc: "Apple iPhone 12th generation",
  price: 999,
  color: "#33505a",
  image: "https://static.techspot.com/images/products/2020/smartphones/org/2020-10-20-product.png",


)];