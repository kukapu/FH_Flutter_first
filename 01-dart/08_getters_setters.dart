void main() {
  final mySquare = Square(side: 10);

  // mySquare.side = -5;

  print('Area: ${mySquare.calculateArea()}');
  print('Area: ${mySquare.area}');
}

class Square {
  double _side;

  Square({required double side})
      : assert(side > 0, 'Side can\'t be negative'),
        _side = side;

  double get area => _side * _side;

  set side(double value) {
    print('setting new valeu: $value');
    if (value < 0) throw ('Side can\'t be negative');
    _side = value;
  }

  double calculateArea() => _side * _side;
}
