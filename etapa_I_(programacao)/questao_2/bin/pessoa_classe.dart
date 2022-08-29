class Pessoas {
  String nome, sobrenome;

  Pessoas(this.nome, this.sobrenome) {
    nome = nome;
    sobrenome = sobrenome;

  }
    void apresentar() {
    print('$nome $sobrenome');
  }
}

void main() {
  Pessoas pessoa = Pessoas('Jonas', 'Silva');

  pessoa.apresentar();
}