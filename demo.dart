// Factory constructor
class Animals {
  String name;
  int weight;

  // Constructor
  Animals(this.name, this.weight);

  //Factory constructor
  factory Animals.createAnimals(
      String name, int weight, String color, bool flag,
      {double height = 1.2}) {
    if (flag) {
      return Dog(name, weight, height, color);
    } else {
      return Cat(name, weight, height, color);
    }
  }
}

//Inheritiance
class Dog extends Animals {
  String color;
  double height;
  Dog(String name, int weight, double height, String color)
      : this.color = color,
        this.height = height,
        super(name, weight);
}

//Inheritiance
class Cat extends Animals {
  String color;
  double height;
  Cat(String name, int weight, double height, String color)
      : this.color = color,
        this.height = height,
        super(name, weight);
}

void main() {
  bool flag = true;
  var tom = Animals.createAnimals('Mikey', 2, 'Yellow', flag, height: 1.2);
  print(tom.name);
}
