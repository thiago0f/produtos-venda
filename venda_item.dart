
import 'produto.dart';

class VendaItem {
  Produto produto;
  int quantidade;

  late double _preco;

  VendaItem({
    required this.produto,
    this.quantidade = 1,
  }) {
    _preco = produto.precoComDesconto;
  }

  double get preco {
    return _preco;
  }

 
  set preco(double novoPreco) {
    if (novoPreco > 0) {
      _preco = novoPreco;
    }
  }
}