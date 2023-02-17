import 'package:triangles/triangles.dart' as triangles;
import "dart:io";

void main(List<String> arguments) {
  print('Hello world: ${triangles.calculate()}!');

  print("Enter the first length: ");
  String? input = stdin.readLineSync();
  double a = double.parse(input!);

  print("Enter the second length: ");
  String? input2 = stdin.readLineSync();
  double b = double.parse(input2!);

  print("Enter the third length: ");
  String? input3 = stdin.readLineSync();
  double c = double.parse(input3!);

  if (triangles.isReal(a, b, c)) print("This is a triangle");
  if (triangles.isEquilateral(a, b, c)) print("This is a Equilateral triangle");
  if (triangles.isIsosceles(a, b, c)) print("This is a Isosceles triangle");
  if (triangles.isScalene(a, b, c)) print("This is a Scalene triangle");
  if (triangles.isPythagorean(a, b, c)) print("This is a Pythagorean triangle");
}
