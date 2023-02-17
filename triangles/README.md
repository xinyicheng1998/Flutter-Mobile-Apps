# Project Name: triangles

## Project Description:

A sample command-line application with an entrypoint in `bin/`, library code
in `lib/`, and example unit test in `test/`.
In lib, there are 6 functions, and 5 of them has 3 params, one of them has no params
They are testing the validation of the features of a given triangle by its edges

## Table of Contents

- **calculate** return 42
- **isReal** tests that the sum of any two lengths is greater than the last length (i.e. a + b > c in any order) and that each length is also valid, returning true when all conditions are met, false otherwise
- **isEquilateral** returns true whenever all three parameter lengths are the same, false otherwise
- **isIsosceles** returns true whenever two and only two sides are the same length, false otherwise
- **isScalene** returns true whenever all three parameter lengths are different values, false otherwise
- _isPythagorean_ check for the condition that a² + b² = c² for any order of inputted lengths returning true when the condition is met, false otherwise.

## How to Install and Run the Project

In terminal

```
cd <Your path>/triangles
dart bin/triangles.dart
```

## How to Run Tests in the project

In terminal

```
cd <Your path>/triangles
dart test
```

## How to Use the Project

In terminal

```
cd <Your path>/triangles
dart bin/triangles.dart
```

Enter three numbers, after each enter, press return in keyboard to continue
If enter 0,0,0, the result will be nothing since it is not a triangle
