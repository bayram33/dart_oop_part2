void main() {
  Square sqr = Square(5);
  print(sqr.calculateCircumference());
  print(sqr.calculateArea());
  print("**********************************");

  Rectangle rctngl = Rectangle(4, 5);
  print(rctngl.calculateArea());
  print(rctngl.calculateCircumference());
  print("**********************************");
}

abstract class GeneralFunction {
  double calculateArea();
  double calculateCircumference();
  void sayHi() {
    print("Welcome to my little dart tutorial");
  }
}

class Square extends GeneralFunction {
  double? border;
  Square(this.border);

  @override
  double calculateArea() {
    return border! * border!;
  }

  @override
  double calculateCircumference() {
    return 4 * border!;
  }
}

class Rectangle extends GeneralFunction {
  double? longborder, shortborder;
  Rectangle(this.shortborder, this.longborder);

  @override
  double calculateArea() {
    return longborder! * shortborder!;
  }

  @override
  double calculateCircumference() {
    return 2 * (longborder! + shortborder!);
  }
}
