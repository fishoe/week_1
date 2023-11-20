import 'dart:math';

void loop() {
  // for (초기화; 조건; 업데이트)
  // 조건이 true인 동안 코드 블록을 반복한다.
  // 초기화는 반복문이 시작하기 전에 한 번만 실행된다.
  // 조건은 반복문이 실행될 때마다 실행된다.
  // 업데이트는 반복문이 실행된 후에 실행된다.
  // 초기화 -> 조건 -> 코드 블록 -> 업데이트 -> 조건 -> 코드 블록 -> 업데이트 -> ...
  for (int i = 0; i < 10; i++) {
    print(i);
  }

  // while (조건)
  // 조건이 true인 동안 코드 블록을 반복한다.
  // 조건 -> 코드 블록 -> 조건 -> 코드 블록 -> ...
  int i = 0;
  while (i < 10) {
    print(i);
    i++;
  }

  // do { codes... } while (조건)
  // 코드 블록을 실행한 후 조건을 확인한다.
  // 코드 블록 -> 조건 -> 코드 블록 -> 조건 -> ...
  // 코드 블록은 최소한 한 번은 실행된다.
  i = 0;
  do {
    print(i);
    i++;
  } while (i < 10);

  // for-in 반복문
  // Iterable 타입의 데이터를 순회한다.
  // Iterable 타입은 List, Set 등이 있다.
  // for (변수 in Iterable) { codes... }
  // 변수는 Iterable의 각 요소를 차례대로 가리킨다.
  List<int> numbers = [1, 2, 3, 4, 5];
  for (int number in numbers) {
    print(number);
  }

  // for-in 반복문은 다음의 경우에 오류가 발생한다.
  // for (int number in numbers) {
  //   numbers.add(number + 1);
  // }
  // 루프의 반복 도중에 Iterable의 크기가(리스트에 요소가 추가 삭제된 경우)
  // 변경되면 오류가 발생한다.
  // 값이 바뀌는 것은 괜찮다.

  int idx = 0;
  for (int number in numbers) {
    numbers[idx] = number * 2;
    idx++;
  }

  // for 문에서는 위의 경우에 오류가 발생하지 않는다.
  for (int i = 0; i < numbers.length; i++) {
    numbers.add(numbers[i] + 1);
    if (i == 10) {
      break;
    }
  }

  // for-each 반복문

  Map<String, int> scores = {
    "Jane": 100,
    "Kevin": 80,
    "Kate": 90,
  };

  for (MapEntry<String, int> entry in scores.entries) {
    print("${entry.key}: ${entry.value}");
  }

  scores.forEach((String name, int score) {
    print("$name: $score");
  });

  scores.forEach((name, score) {
    print("$name: $score");
  });

  scores.forEach((name, score) => print("$name: $score"));

  inlinePrint(name, score) => print("$name: $score"); // 화살표 함수
  scores.forEach(inlinePrint);

  // break and continue

  // break
  // 반복문을 중단한다.
  // 조건 -> 코드 블록 -> 조건 -> 코드 블록 -> ... ->
  // break 문 실행 -> 반복문 종료(조건과 나머지 코드블록을 무시하고 반복문 다음의 명령을 실행)

  for (int i = 0; i < 10; i++) {
    if (i == 5) {
      break;
    }
    print(i);
  }

  // continue
  // 반복문의 나머지 부분을 건너뛴다.
  // 조건 -> 코드 블록 -> 조건 -> 코드 블록 -> ... ->
  // continue 문 실행 -> 조건
  for (int i = 0; i < 10; i++) {
    if (i == 5) {
      continue;
    }
    print(i); // i == 5일 때는 출력되지 않음
  }

  var evenNumbers = [for (int i = 1; i < 30; i++) i * 2];

  var naturalNumbers = [
    1,
    for (int i in evenNumbers) ...[i, i + 1],
    60
  ];

  print(naturalNumbers);
}
