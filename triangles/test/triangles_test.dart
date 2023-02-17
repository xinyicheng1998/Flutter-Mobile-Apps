import 'package:triangles/triangles.dart';
import 'package:test/test.dart';

void main() {
  test('isReal tesing', () {
    expect(isReal(1.0, 1.0, 1.0), true);
    expect(isReal(1.0, 2.0, 3.0), false);
    expect(isReal(3.0, 2.0, 1.0), false);
    expect(isReal(0, 0, 0), false);
    expect(isReal(3, 4, 5), true);
    expect(isReal(-3, -4, -5), false);
  });

  test('isEquilateral tesing', () {
    expect(isEquilateral(1, 1, 1), true);
    expect(isEquilateral(2, 2, 3), false);
    expect(isEquilateral(3, 4, 5), false);
    expect(isEquilateral(0, 0, 0), false);
    expect(isEquilateral(-1, -1, -1), false);
  });

  test('isIsosceles tesing', () {
    expect(isIsosceles(3, 2, 2), true);
    expect(isIsosceles(3, 3, 3), false);
    expect(isIsosceles(3, 4, 5), false);
    expect(isIsosceles(1, 1, 0), false);
    expect(isIsosceles(0, -1, -1), false);
  });

  test('isScalene tesing', () {
    expect(isScalene(3, 4, 5), true);
    expect(isScalene(3, 3, 3), false);
    expect(isScalene(3, 2, 3), false);
    expect(isScalene(-3, -4, -5), false);
  });

  test('isPythagorean tesing', () {
    expect(isPythagorean(3, 4, 5), true);
    expect(isPythagorean(13, 12, 5), true);
    expect(isPythagorean(2, 3, 10), false);
    expect(isPythagorean(-3, -4, -5), false);
  });
}
