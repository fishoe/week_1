import 'package:week_1/function.dart';
import 'package:week_1/loop.dart';

void main(List<String> arguments) async {
  var evenNumbers = [for (int i = 1; i < 30; i++) i * 2];
  print(evenNumbers);

  var naturalNumbers = [
    1,
    for (int i in evenNumbers) ...[i, i + 1],
    60
  ];

  print(naturalNumbers);
}

