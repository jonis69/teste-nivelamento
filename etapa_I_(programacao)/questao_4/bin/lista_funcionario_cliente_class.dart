class Pessoa {
  String nome, sobrenome;

  Pessoa(this.nome, this.sobrenome) {
    nome = nome;
    sobrenome = sobrenome;

  }

  void apresentar() {
  print('$nome $sobrenome');
  }

  @override
  String toString() {
    return '{ $nome $sobrenome }';
  }

}

class Funcionario extends Pessoa {
  int matricula;
  Funcionario(super.nome, super.sobrenome, this.matricula);

  final hora = DateTime.now();

  void marcarPonto(){
    print('$nome $sobrenome\n$matricula\n$hora');
  }
}

class Cliente extends Pessoa {
  Cliente(super.nome, super.sobrenome);
  
  final hora = DateTime.now();

  void comprar(String produto) {
    print('$nome $sobrenome\n$produto\n$hora');
  }
}

void main() {

  List lista = [];
  lista.add(Funcionario('Jonas', 'Silva', 1));
  lista.add(Funcionario('José', 'Antônio', 2));

  lista.add(Cliente('Maria', 'Joaquina'));
  lista.add(Cliente('Fernanda', 'Rodrigues'));

  print(lista);
}