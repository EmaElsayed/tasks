void main() {
  double radius = 8.0;
  double area = calculateCircleArea(radius);
  print("The area of the circle with radius $radius is $area square units.");
}

double calculateCircleArea(double radius) {
  return 3.14 * radius * radius;
}