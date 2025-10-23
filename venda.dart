
import 'cliente.dart';
import 'venda_item.dart';

class Venda {
  Cliente cliente;
  List<VendaItem> itens;

  Venda({
    required this.cliente,
    this.itens = const [], 
  });

  double get valorTotal {
    return itens.fold(0.0, (total, item) => total + (item.preco * item.quantidade));
  }

  @override
  String toString() {
    String itensFormatados = itens.map((item) {
      String subtotal = (item.preco * item.quantidade).toStringAsFixed(2);
      return "  - ${item.produto.nome} (${item.quantidade}x) - R\$ ${item.preco.toStringAsFixed(2)} (un.) - Subtotal: R\$ $subtotal";
    }).join("\n"); 

    return """
Resumo da Venda
-----------------------------------
Cliente: ${cliente.nome} (CPF: ${cliente.cpf})

Itens:
$itensFormatados

-----------------------------------
Valor Total: R\$ ${valorTotal.toStringAsFixed(2)}
""";
  }
}