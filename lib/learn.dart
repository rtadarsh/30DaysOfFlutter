// functions inside classes are called methods.

void fn(String name, {bool isMale = true, required int age}) {
  // {} is used for named parameters. Positional parameters must be passed before named parameters. If named argument is required, it must not have default value. Otherwise it must have default value.
  print(name);
  print(isMale);
  print(age);
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
  // classes are basically functions or widgets. they are same as class and object in c++. you don't need to use 'new' keyword  when creating object. just class name followed by brackets is enough. class should be named as 'ThisIsAnExampleOfClass' and function/method should be named as 'thisIsAnExampleOfFunction'.
}
