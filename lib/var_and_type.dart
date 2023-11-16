// 변수는 데이터를 저장하는 공간이다.
// 변수는 데이터 타입과 변수명으로 선언한다.

void variables() {
  // Declaring and initializing variables
  int age = 25;
  double height = 1.75;
  String name = "John Doe";
  var isStudent = true;

  const pi = 3.14;
  final double gravity = 9.8;

  // Printing out the variables
  print("Name: $name");
  print("Age: $age");
  print("Height: $height");
  print("Is student: $isStudent");

  // an year later...
  age = 26;
  // and she married with Kevin Lee and changed her last name
  name = "Jane Lee";
  // and she is not a student anymore because she graduated
  isStudent = false;
  // but her height is still the same

  print("an year later...");
  print("Name: $name");
  print("Age: $age");
  print("Height: $height");
  print("Is student: $isStudent");

  print("PI: $pi");
  print("Gravity: $gravity");
}

// 상수는 변하지 않는 데이터를 저장하는 공간이다.
// 상수는 const와 final 키워드로 선언한다.
// const는 컴파일 시점에 결정되는 상수이고, final은 런타임 시점에 결정되는 상수이다.
void constAndFinal() {
  const pi = 3.14;
  // pi = 3.141592; // Error

  // const now = DateTime.now();
  final now = DateTime.now();

  // now2 = DateTime.now(); // Error
}

// 타입은 변수에 저장되는 데이터의 종류를 의미한다.
// 타입은 변수를 선언할 때 명시하거나, Dart가 추론할 수 있다.
// Dart는 정적 타입 언어이다.
// 정적 타입 언어는 변수의 타입을 컴파일 시점에 결정한다.
// 동적 타입 언어는 변수의 타입을 런타임 시점에 결정한다.

void types() {
  // Dart는 다음과 같은 데이터 타입을 지원한다.
  // int: 정수
  // double: 실수
  // String: 문자열
  // bool: 논리
  // Set: 집합
  // List: 배열
  // Map: 객체
  // dynamic: 동적 타입

  print("integer types");
  int minutesForHour = 60;
  print("three hours is ${minutesForHour * 3} minutes");
  //minutesForHour = 59.99; // Error
  print(''); // empty line

  print("double types and integer operation");
  int radius = 5;
  double anotherRadius = 5.5;
  areaOfCircle(radius);
  areaOfCircle(anotherRadius);
  print(''); // empty line

  print("string type");
  String name = "John Doe";
  String fullName = "John D " "Doe";
  // same with below code
  // String fullName2 = "John D " + "Doe";
  print(''); // empty line

  print("boolean and comparing");
  // compare values
  print("John Doe" == "John Doe"); // true
  print(name == "John Doe"); // true
  print(minutesForHour == anotherRadius); // false
  print(minutesForHour == 60.0); // true

  // compare references
  print(3 < 5);
  print(3 > 5);
  print(3 <= (5 + 1));
  // print((3 >= 5) + 1); // Error
  print(''); // empty line

  print("Set type");
  // Set
  var cities = {"New York", "Seoul", "Tokyo"};
  cities.add("Paris");
  cities.add("Seoul");
  print(cities.length); // 4
  print(cities);

  print("List type");
  // List
  List<String> fruits = ["Apple", "Banana", "Orange"];
  fruits.add("Kiwi");
  fruits.add("Banana");
  print(fruits.length); // 5
  print(fruits);

  print("Map type");
  // Map
  Map<String, String> capitals = {
    "Korea": "Busan",
    "Japan": "Tokyo",
    "USA": "Washington D.C.",
  };

  capitals["France"] = "Paris";
  capitals["Korea"] = "Seoul";
  print(capitals.keys);
}

void areaOfCircle(dynamic radius) {
  double pi = 3.14;
  print("Area of circle with radius $radius is ${pi * radius * radius}");
}
