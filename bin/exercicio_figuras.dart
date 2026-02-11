import 'dart:math' as Math;

// classe abstrata
abstract class Figura {
  int x;
  int y;

  Figura(this.x,this.y);

  double area();
}

class Circulo extends Figura {
  double raio;

  //construtor
  //Circulo(int x, int y, this.raio) : super(x, y)
  Circulo(super.x, super.y, this.raio);

  @override
  double area() {
    //value PI aproximandamente 3.14159... Então
    //usar o import para ajduar
    return Math.pi * Math.pow(raio, 2);
  }

  void diamentro() {
    double perimetroDisfaca = 2 * Math.pi * raio;
    print("Diamentro: $perimetroDisfaca");
  }
}


}

