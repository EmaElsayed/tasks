void main() {
  double fahrenheit = 50;
  double celsius = (fahrenheit - 32) * 5 / 9;
  print('$fahrenheit°F is equivalent to ${celsius.toStringAsFixed(2)}°C');
}