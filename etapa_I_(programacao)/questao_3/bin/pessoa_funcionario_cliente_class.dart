class Pessoa {
  String nome, sobrenome;

  Pessoa(this.nome, this.sobrenome) {
    nome = nome;
    sobrenome = sobrenome;

  }
    void apresentar() {
    print('$nome $sobrenome');
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
  Pessoa pessoa = Pessoa('Jonas', 'Silva');
  Funcionario funcionario = Funcionario ('João', 'Marcos', 33);
  Cliente cliente = Cliente('Francisco', 'José');

  pessoa.apresentar();
  funcionario.marcarPonto();
  cliente.comprar('banana');
}