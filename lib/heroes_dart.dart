void main() {
 Warrior Heroi = Warrior('Heroi', 100, 20);
 Mage Vilao = Mage('Vilao', 150, 15, 200, 50);

 Vilao.atacar();
 Heroi.defender();
 Heroi.atacar();
 Vilao.defender();
 Vilao.curar();
 Heroi.curar();
}

class Warrior implements skills{
  String nome;
  int pontosDeVida;
  double velocidadeMovimento;

  Warrior(
      this.nome,
      this.pontosDeVida,
      this.velocidadeMovimento,
      );

  @override
  void atacar() {
    print('O $nome usou a espada para atacar');
  }

  @override
  void curar() {
    print('O $nome usou a poção de cura');
  }

  @override
  void defender() {
    print('O $nome usou o escudo para se defender');
  }
}

class Mage extends Warrior implements skills{
  int pontosDeMana;
  double danoMagico;

  Mage (String nome, int pontosDeVida, double velocidadeMovimento, this.pontosDeMana,this.danoMagico)
      :super(nome, pontosDeVida, velocidadeMovimento);

  @override
  void atacar() {
    print('O $nome atacou com a magia de fogo');
  }

  @override
  void curar() {
    print('O $nome usou a magia de cura');
  }

  @override
  void defender() {
    print('O $nome usou o escudo magico para se defender');
  }
}

abstract class skills{
  void atacar();

  void curar();

  void defender();
}
