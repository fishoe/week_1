import 'dart:convert';
import 'dart:io';

// 함수 선언
// 반환타입 함수명(매개변수) { codes }
// 반환타입은 생략 가능하다.
// 함수는 return 키워드를 만나면 값을 반환하고 종료된다.
// return 명령어 없이 함수가 종료되면 null을 반환한다.

int myFavoriteNumber() {
  return 7;
}

myAnotherFavoriteNumber() {
  return 3;
}

int? myFavoriteNumberOrNull() {
  return null;
}

// 매개변수는 함수를 호출할 때 전달하는 데이터를 받는 변수이다.
// 매개변수는 여러 개를 선언할 수 있다.
// 매개변수의 타입은 생략할 수 있다.

int sum(int a, int b) {
  return a + b;
}

int anotherSum(a, b) {
  return a + b; // 이경우 a와 b의 타입은 무엇인지 알 수 없다. dynamic으로 추론된다.
  // 만약 반환 타입과 실제 반환 값의 타입이 다른 경우 에러가 발생한다.
}

// 매개변수의 기본값을 설정할 수 있다.
// 기본값이 설정된 매개변수는 생략할 수 있다.
// 만약 기본값이 Null이라면 Nullable로 선언해야 한다.
// 매개변수의 기본값을 설정할 때는 반드시 오른쪽부터 설정해야 한다.

int sumWithDefault(int a, [int b = 0]) {
  return a + b;
}
// 호출
// sumWithDefault(1, 2);
// sumWithDefault(1);

int sumWithDefault2(int a, [int? b]) {
  return a + (b ?? 0);
}
// 호출
// sumWithDefault2(1, 2);
// sumWithDefault2(1);

// 이름이 있는 매개변수를 설정할 수 있다.
// 이름이 있는 매개변수 또한 기본값을 설정할 수 있다.
// 이름이 있는 매개변수는 기본값이 설정되어 있지 않으면 반드시 전달해야 한다.

int sumWithNamed({int a = 0, int b = 0}) {
  return a + b;
}
// 호출
// sumWithNamed(a: 1, b: 2);
// sumWithNamed(b: 1, a: 2);
// sumWithNamed(a: 1);

// 함수는 변수로 취급하거나 선언할 수 있다. 이런 형태를 일급객체라고 한다.

int sub(int a, int b) {
  return a - b;
}

void firstClassFunction() {
  var fcf = sub;
}

// 함수는 다른 함수의 매개변수로 전달할 수 있다.

int calc(int a, int b, int Function(int, int) f) {
  return f(a, b);
}

int add(int a, int b) {
  return a + b;
}

void calcTest() {
  print("test value is ${calc(1, 2, add)}");
}

// 함수는 다른 함수의 반환값으로 사용할 수 있다.

int Function(int, int) calc2() {
  return add;
}

// 익명함수 또는 람다함수
// 코드 블럭 내에서 사용되어지는 이름 없는 함수를 의미한다.
// 익명함수에서는 클로저라는 개념이 사용된다.
// 클로저는 함수가 선언된 환경을 기억하는 함수이다.(캡쳐)

void anonymousFunction() {
  var foo = calc(3, 5, (a, b) {
    return a * b;
  }
      // (a, b) => a * b 로 동일하게 사용할 수 있다.
      );
  print(foo);
}

captureClorure(int c) {
  int d = 1;
  // 스코프 개념에 의해서 안쪽 블록은 바깥쪽 블록의 변수를 사용할 수 있다.
  return (a, b) {
    return a * b * c * d;
  };
}

void captureClosureTest() {
  var foo = captureClorure(3);
  print(foo(4, 5));
}

// Generator

// Synchronous generator
// yield 키워드를 사용해서 차례대로 값을 반환한다.
// yield 키워드를 만나면 함수가 일시정지된다.
// yield* 키워드를 사용하면 다른 Iterable을 반환한다.

Iterable<int> myFavoriteNumbers() sync* {
  yield 1;
  yield 2;
  yield 3;
  yield 5;
  yield 7;
  yield 11;
  yield 13;
  yield* [17, 19, 23, 29];
}

void generatorTest() {
  var foo = myFavoriteNumbers();
  print(foo);
  print(foo.toList());
}

// Asynchronous generator
// 비동기 함수는 Future를 반환한다.
// 비동기 제너레이터는 Stream을 반환한다.
// yield 키워드를 사용해서 차례대로 값을 반환한다.
// 비동기 함수는 주로 대기 시간이 긴 작업을 수행할 때 사용한다.

Stream<int> myFavoriteNumbers2() async* {
  yield 1;
  yield 2;
  yield 3;
  yield 5;
  yield 7;
  yield 11;
  yield 13;
}

void asyncGeneratorTest() async {
  var foo = myFavoriteNumbers2();
  print(foo);
  print(await foo.toList());
}

Future<void> httpPractice() async {
  var http = HttpClient();
  var req = await http.post("example.com", 80, "/whatsit/create");
  req.write('{"name": "doodle", "color": "blue"}');
  var res = await req.close();
  print('Response status: ${res.statusCode}');
  print('Response body: ${await res.transform(utf8.decoder).join()}');
}
