class Item {
  final String id;
  final String name;
  final String desc;
  final num price;
  final String color;
  final String image;

  Item(
      {required this.id,
      required this.name,
      required this.desc,
      required this.price,
      required this.color,
      required this.image});
}

final products = [
  Item(
      id: "Mahipalsinh101",
      name: "iphone 12 Pro",
      price: 999,
      color: "#33505a",
      image:
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSqG3tGowZTiforo7Cptg_DLMNz0xCxLGPTTC0QQ5Ah-QvHyqWoZfGJTckuLs8e5J0vfkp0nco&usqp=CAc',
      desc: '')
];
