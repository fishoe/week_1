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

  // now = DateTime.now(); // Error
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
  int minutesForHour = 60; // 인트 선언부 // declare
  // minutesForHour = 59.99; // Error // assignment
  print("three hours is ${minutesForHour * 3} minutes");
  print(''); // empty line

  print("double types and integer operation");
  int radius = 5; // 이진표현식으로 저장되는 부분 0101
  double anotherRadius = 5.5; // 부동소수점 float number 지수와 가수로 표현되는 숫자
  areaOfCircle(radius);
  areaOfCircle(anotherRadius);
  print(''); // empty line

  print("string type");
  String name = "John Doe";
  String fullName = "John D " "Doe";
  // String fullName2 = "John D " + "Doe";
  String doubleName = "kim lee" "park man"; // "kim leepark man"
  String namedouble = name * 3; // "John DoeJohn DoeJohn Doe"
  // same with below code
  print(''); // empty line

  print("boolean and comparing");
  // compare values
  print("John Doe" == "John Doe"); // true
  print(name == "John Doe"); // true
  print(minutesForHour == anotherRadius); // false
  print(minutesForHour == 60.0); // true
  // 60 == 60.0

  // compare references
  print(3 < 5);
  print(3 > 5);
  print(3 <= (5 + 1));
  // print((3 >= 5) + 1); // Error
  print(''); // empty line

  print("Set type");
  // Set
  Set<String> cities = {"New York", "Seoul", "Tokyo"};
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
  // HashMap Map Table Dictionary Key-Value Pair
  // Map
  Map<String, String> capitals = {
    "Korea": "Busan",
    "Japan": "Tokyo",
    "USA": "Washington D.C.",
  };

  capitals["France"] = "Paris";
  capitals["Korea"] = "Seoul";
  capitals.remove("Japan");
  print(capitals.keys);
}

void areaOfCircle(dynamic radius) {
  double pi = 3.14;
  print("Area of circle with radius $radius is ${pi * radius * radius}");
}

typedef Student = (String, int, double, bool);

void tuple() {
  Student student = ("John Doe", 25, 1.75, true);
  parseStudent(student);
}

void parseStudent(Student student) {
  var (name, age, height, isStudent) = student;
  var intValue = 2.5;
  print("Name: $name");
  print("Age: $age");
  print("Height: $height");
  print("Is student: $isStudent");
}
