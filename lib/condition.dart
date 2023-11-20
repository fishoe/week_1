void condition() {
  // if (조건) { codes... }
  // 조건이 true이면 코드 블록을 실행한다.
  // 조건이 false이면 코드 블록을 실행하지 않는다.
  int age = 20;
  if (age >= 20) {
    print("성인입니다.");
  }

  // if (조건) { codes... } else { codes... }
  // 조건이 true이면 if 코드 블록을 실행한다.
  // 조건이 false이면 else 코드 블록을 실행한다.
  age = 10;
  if (age >= 20) {
    print("성인입니다.");
  } else {
    print("미성년자입니다.");
  }

  // if (조건) { codes... } else if (조건) { codes... } else { codes... }
  // 조건이 true인 코드 블록을 실행한다.
  // 조건이 false인 코드 블록을 실행한다.
  age = 20;
  if (age >= 20) {
    print("성인입니다.");
  } else if (age >= 10) {
    print("청소년입니다.");
  } else {
    print("미성년자입니다.");
  }

  // switch (변수) {
  //   case 값:
  //     codes...
  //     break;
  //   case 값:
  //     codes...
  //     break;
  //   default:
  //     codes...
  //     break;
  // }
  // 변수의 값이 일치하는 case 코드 블록을 실행한다.
  // break 키워드를 만나면 switch 문을 빠져나간다.
  // default 코드 블록은 변수의 값이 일치하는 case가 없을 때 실행된다.
  String fruit = "apple";
  switch (fruit) {
    case "apple":
      print("사과입니다.");
      break;
    case "banana":
      print("바나나입니다.");
      break;
    default:
      print("과일이 아닙니다.");
      break;
  }

  var isFruit = false;
  switch (fruit) {
    case "apple":
    case "banana":
    case "orange":
      isFruit = true;
      break;
    case "tomato":
      print("토마토는 과일이 아닙니다.");
      print("하지만 계통분류학 상 토마토는 과일입니다.");
      isFruit = true;
      break;
    default:
      isFruit = false;
      break;
  }

  var fruitPrice = switch (fruit) {
    "apple" => 1000,
    "banana" => 700,
    "orange" => 1500,
    _ => 0,
  };
  print("과일: $fruit 의 가격은 $fruitPrice원입니다.");

  // 삼항 연산자
  // 조건 ? true일 때의 값 : false일 때의 값

  var isAdult = age >= 20 ? true : false;

  // null-aware 연산자
  // 변수?.속성
  // 변수가 null이 아닐 때만 속성에 접근한다.
  // 변수가 null이면 null을 반환한다.

  String? name;
  print("length of name : ${name?.length}");
  name = "John Doe";
  print("length of name : ${name?.length}");

  // 변수 ?? 값

  String? name2;
  print("name : ${name2 ?? 0}");
  // name2가 null이면 0을 반환한다.
  // 삼항 연산자와 달리 ?? 연산자는 변수가 null인지 아닌지만 확인한다.
  // 삼항 연산자로 다음과 같이 작성할 수 있다.
  // print("name : ${name2 != null ? name2 : 0}");

  bool rgb = true;
  bool isTransparentColors = false;
  List<String> colors = [
    "black",
    "white",
    "gray",
    if (isTransparentColors) "transparent",
  ];

  List<String> rgbColors = [
    "black",
    "white",
    "gray",
    if (rgb) ...["red", "green", "blue"] else ...["yellow", "magenta", "cyan"]
  ];

  List<String> anotherColors = [
    "black",
    "white",
    "gray",
    if (!rgb) ...["red", "green", "blue"] else ...["yellow", "magenta", "cyan"]
  ];
}
