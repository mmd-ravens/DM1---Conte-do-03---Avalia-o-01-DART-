import 'dart:math' as Math;

/// Representa uma forma geométrica genérica com uma posição.
///
/// Esta é uma classe abstrata que serve como base para outras figuras
/// mais específicas, como [Circulo], [Retangulo] e [Triangulo].
abstract class Figura {
  int x;
  int y;

  /// Cria uma nova instância de uma figura em uma determinada posição.
  Figura(this.x,this.y);

  /// Calcula a área da figura.
  /// método que será implementado
  double area();
}

/// Representa um círculo, uma forma geométrica derivada de [Figura].
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
    print("Perímetro: $perimetroDisfaca");
  }
}

/// Representa um retângulo, uma forma geométrica derivada de [Figura].
class Retangulo extends Figura {
  double largura;
  double comprimento;

  //repassando para o construtor
  //Retangulo(int x, int y, this.largura, this.comprimento) : super(x, y);
  Retangulo (super.x, super.y, this.largura, this.comprimento);

  /// Calcula a área do retângulo.
  ///
  /// Fórmula: (largura * comprimento).
  @override
  double area() {
    return largura * comprimento;
  }

  /// Verifica se o retângulo também é um quadrado e imprime o resultado.
  void isQuadrado() {
    if (largura == comprimento) {
      print ("É quadrado");
    } else {
      print ("Não é quadrado");
    }
  }
}

/// Representa um triângulo, uma forma geométrica derivada de [Figura].
class Triangulo extends Figura {
  double ladoA;
  double ladoB;
  double ladoC;

  /// Cria uma nova instância de Triângulo a partir de seus três lados.
  Triangulo(super.x, super.y, this.ladoA, this.ladoB, this.ladoC);

  /// Calcula a área do triângulo usando a fórmula de Herão.
  @override
  double area() {
    //aplicar formula de Heron
    double semiperimetro = (ladoA + ladoB + ladoC) / 2;

    //raiz quadrada (sqrt)
    return Math.sqrt(semiperimetro * (semiperimetro - ladoA) * (semiperimetro - ladoB) * (semiperimetro - ladoC));
  }

  /// Classifica o triângulo em Equilátero, Isósceles ou Escaleno e imprime o tipo.
  void getTipo() {
    if (ladoA == ladoB && ladoB == ladoC) {
      print ("Triangulo Equilátero");
    } else if (ladoA == ladoB || ladoB == ladoC || ladoA == ladoC) {
      print ("Triangulo Isósceles");
    } else {
      print ("Triangulo Escaleno");
    }
  }
}
