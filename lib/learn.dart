// functions inside classes are called methods.

void fn(String name, {bool isMale = true, required int age}) {
  // {} is used for named parameters. Positional parameters must be passed before named parameters. If named argument is required, it must not have default value. Otherwise it must have default value.
  print(name);
  print(isMale);
  print(age);
}

class r{
  static String name = "adarsh";
}

void main() {
  int days = 30;
  String name = "Adarsh";
  bool isMale = true;
  double weight = 78.8;
  num temp = 98.6;
  var day = "Tuesday";
  const pi = 3.14;
  print(pi);
  fn("Adarsh", age: 21);

  print(r.name);

  // stateless vs stateful
  // stateful is dynamic. things on a single route can change even after being rendered

  // in flutter every element can change its state independently, which makes performanec better
}
