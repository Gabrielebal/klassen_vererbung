//aufgabe_1
class Tool {
  String name;
  double weight;
  String material;

  Tool(this.name, this.weight, this.material);
}

class Hammer extends Tool {
  double headSize;
  Hammer(String name, double weight, String material, this.headSize)
    : super(name, weight, material);

  void hit() {
    print('$name is hitting with head size $headSize cm.');
  }
}

class Saw extends Tool {
  int bladeTeeth;

  Saw(String name, double weight, String material, this.bladeTeeth)
    : super(name, weight, material);

  void cut() {
    print('$name is cutting with $bladeTeeth teeth.');
  }
}

//aufgabe_2
class Grocery {
  String name;
  String manufacturer;
  double weight;
  double price;

  Grocery(this.name, this.manufacturer, this.weight, this.price);

  void describe() {
    print('$name by $manufacturer weighs $weight kg and costs €$price.');
  }
}

class Milk extends Grocery {
  Milk(String name, String manufacturer, double weight, double price)
    : super(name, manufacturer, weight, price);

  @override
  void describe() {
    print('Milk: $name by $manufacturer. Volume: $weight L. Price: €$price.');
  }
}

class Butter extends Grocery {
  Butter(String name, String manufacturer, double weight, double price)
    : super(name, manufacturer, weight);

  @override
  void describe() {
    print('Butter: $name by $manufacturer. Weight: $weight g. Price: €$price.');
  }
}
