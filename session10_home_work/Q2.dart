class Shape {
  double area() {
    return 0;
  }
}
class Rectangle extends Shape {
  double? _width;
  double? _height;
  Rectangle(double width, double height) {
    if (width > 0) {
      _width = width;
    } else {
      print('eror');
    }
    if (height > 0) {
      _height = height;
    } else {
      print('error');
    }
  }
  @override
  double area() {
    return _width! * _height!;
  }
}

class Circle extends Shape {
  double? _radius;

  Circle(double radius) {
    if (radius > 0) {
      _radius = radius;
    } else {
      print('error');
    }
  }
  @override
  double area() {
    return 3.14159 * _radius! * _radius!;
  }
}

class Triangle extends Shape {
  double? _base;
  double? _height;

  Triangle(double base, double height) {
    if (base > 0) {
      _base = base;
    } else {
      print('error');
    }
    if (height > 0) {
      _height = height;
    } else {
      print('error');
    }
  }

  @override
  double area() {
    return 0.5 * _base! * _height!;
  }
}

double calculateCost(double totalArea) {
  double cost = 0;
  double remaining = totalArea;
  double first = remaining > 50 ? 50 : remaining;
  cost += first * 1.50;
  remaining -= first;
  if (remaining > 0) {
    double second = remaining > 100 ? 100 : remaining;
    cost += second * 1.25;
    remaining -= second;
  }
  if (remaining > 0) {
    cost += remaining * 1.00;
  }
  return cost;
}

void main() {
  List<Shape> shapes = [
    Rectangle(10, 5),
    Circle(4),
    Triangle(6, 3),
  ];
  double totalArea = 0;
  for (var shape in shapes) {
    totalArea += shape.area();
  }
  double totalCost = calculateCost(totalArea);
  print(' ${totalArea.toStringAsFixed(2)}');
  print(' ${totalCost.toStringAsFixed(2)}');
}
