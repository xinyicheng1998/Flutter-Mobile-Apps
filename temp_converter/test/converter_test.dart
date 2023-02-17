import 'package:flutter_test/flutter_test.dart';
import 'package:temp_converter/converter.dart';

void main() {
  test('convert fahrenheit temperature to celsius correctly', () {
    final converter = Converter();
    expect(converter.convert(), 0);

    converter.setTemp(212);
    expect(converter.convert(), 100);

    converter.setTemp(-40);
    expect(converter.convert(), -40);

    converter.setTemp(77);
    expect(converter.convert(), 25);

    converter.setTemp(50.9);
    expect(converter.convert(), 10.5);

    converter.setTemp(-500.8);
    expect(converter.convert(), closeTo(-295.554, 0.01));
  });
  test('convert celsius temperature to fahrenheit correctly', () {
    final converter = Converter();
    converter.toggle();
    converter.setTemp(0);
    expect(converter.convert(), 32);

    converter.setTemp(100);
    expect(converter.convert(), 212);

    converter.setTemp(-40);
    expect(converter.convert(), -40);

    converter.setTemp(25);
    expect(converter.convert(), 77);

    converter.setTemp(-501);
    expect(converter.convert(), -868);

    converter.toggle();
    converter.toggle();
    converter.setTemp(-501);
    expect(converter.convert(), -868);
  });

  test('test convertString', () {
    final converter = Converter();
    expect(converter.convertString(), "0.0°C");
  });
}
