int calculate() {
  return 6 * 7;
}

/**
 * isReal tests that the sum of any two lengths is greater than the last length
 * (i.e. a + b > c in any order) and that each length is also valid,
 * returning true when all conditions are met, false otherwise
 */
bool isReal(double a, double b, double c) {
  return (a > 0 && b > 0 && c > 0 && (a + b > c) && (a + c > b) && (b + c > a));
}

// isEquilateral returns true whenever all three parameter lengths are the same, false otherwise
bool isEquilateral(double a, double b, double c) {
  return (isReal(a, b, c) && (a == b) && (b == c) && (a == c));
}

// isIsosceles returns true whenever two and only two sides are the same length, false otherwise
bool isIsosceles(double a, double b, double c) {
  return isReal(a, b, c) &&
      (((a == b) && (b != c) && (a != c)) ||
          ((a != b) && (b == c) && (a != c)) ||
          ((a != b) && (b != c) && (a == c)));
}

// isScalene returns true whenever all three parameter lengths are different values, false otherwise
bool isScalene(double a, double b, double c) {
  return isReal(a, b, c) && ((a != b) && (b != c) && (c != a));
}

// isPythagorean check for the condition that a² + b² = c²
// for any order of inputted lengths returning true when the condition is met, false otherwise.
bool isPythagorean(double a, double b, double c) {
  return isReal(a, b, c) &&
      ((a * a + b * b == c * c) ||
          (a * a + c * c == b * b) ||
          (c * c + b * b == a * a));
}
