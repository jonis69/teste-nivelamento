class Volume {
  final int quantidade;
  final String unidadeMedida;

  Volume(this.quantidade, this.unidadeMedida);
  @override
  String toString() => "$quantidade $unidadeMedida";
}

abstract class Recipiente {
  late Volume volume;
  late String liquido;
}

class Balde extends Recipiente {
  @override
  final Volume volume;

  Balde(int qtd, String uni) : volume = Volume(qtd, uni);
  @override
  String toString() => "um balde de $volume cheio de $liquido";
}

class Copo extends Recipiente {
  @override
  final Volume volume;

  Copo(int qtd, String uni) : volume = Volume(qtd, uni);
  @override
  String toString() => "um copo de $volume cheio de $liquido";
}

enum Cansaco { descansado, sonolento, quaseFalecendo, temFilhos }

class CafeRecipienteFactory {
  static Recipiente recipientePara(Cansaco qtdCansaco) {
    Recipiente recipiente;
    switch (qtdCansaco) {
      case Cansaco.descansado:
        recipiente = Copo(100, "mililitros");
        break;
      case Cansaco.sonolento:
      case Cansaco.quaseFalecendo:
        recipiente = Copo(500, "mililitros");
        break;
      case Cansaco.temFilhos:
        recipiente = Balde(5, "litros");
        break;
      default:
        recipiente = Copo(200, "mililitros");
        break;
    }
    recipiente.liquido = "café";
    return recipiente;
  }
}

void main() {
  var recipienteParaSonolento =
      CafeRecipienteFactory.recipientePara(Cansaco.sonolento);
  var recipienteParaPais =
      CafeRecipienteFactory.recipientePara(Cansaco.temFilhos);

  print("Uma pessoa sonolenta gostaria de $recipienteParaSonolento.");
  print("Uma pessoa com filhos precisa de $recipienteParaPais .");
}
