abstract class Animal {
  String name;
  Animal(this.name);
  void makeSound();
}

class Dog extends Animal {
  Dog(String name) : super(name);

  @override
  void makeSound() => print('$name says Woof!');
}

class Cat extends Animal {
  Cat(String name) : super(name);

  @override
  void makeSound() => print('$name says Meow!');
}

void main() {
  Animal dog = Dog('Buddy');
  Animal cat = Cat('Whiskers');
  dog.makeSound(); // Buddy says Woof!
  cat.makeSound(); // Whiskers says Meow!
}
