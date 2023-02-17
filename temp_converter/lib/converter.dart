/// Model of a temperature converter that will allow the user to move seamlessly
/// between degrees Fahrenheit and degrees Celsius
class Converter {
  /// default temperature
  double temp = 32;

  /// default values for mode
  /// (which can only be either "°F" or "°C")
  String mode = "°F";

  /// set the the temperature to the default value
  void setTemp(double t) {
    temp = t;
  }

  /// set the value of the model
  void toggle() {
    if (mode == "°F") {
      mode = "°C";
    } else {
      mode = "°F";
    }
  }

  /// convert the temperature to another mode
  /// if temp less than -500 (absolute zero), set to -500
  /// if mode is °F, then convert by subtracting 32
  /// and then multiplying by 5 / 9
  /// otherwise multiply by 9 / 5 and
  /// then add 32 to the result
  double convert() {
    if (temp < -500) temp = -500;
    if (mode == "°F") {
      return (temp - 32) * 5 / 9;
    } else {
      return temp * 9 / 5 + 32;
    }
  }

  /// convert the temperature to another mode and output string
  String convertString() {
    return convert().toStringAsFixed(1) + (mode == "°F" ? "°C" : "°F");
  }
}
