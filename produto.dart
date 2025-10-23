
class Produto {
  int codigo;
  String nome;
  double preco;
  double desconto;

  Produto({
    required this.codigo,
    required this.nome,
    required this.preco,
    this.desconto = 0.0,
  });

  double get precoComDesconto {
    return preco * (1 - desconto);
  }
}