
import 'cliente.dart';
import 'produto.dart';
import 'venda_item.dart';
import 'venda.dart';

void main() {
  var cliente = Cliente(nome: "Wesnei Paiva", cpf: 12345678900);

  var p1 = Produto(
    codigo: 1,
    nome: "Notebook",
    preco: 3000.00,
  );

  var p2 = Produto(
    codigo: 2,
    nome: "Mouse",
    preco: 150.00,
  );

  var p3 = Produto(
    codigo: 3,
    nome: "Teclado",
    preco: 200.00,
    desconto: 0.1, 
  );

  var itensDaVenda = [
    VendaItem(produto: p1), 
    VendaItem(produto: p2, quantidade: 2), 
    VendaItem(produto: p3), 
  ];

  var venda = Venda(
    cliente: cliente,
    itens: itensDaVenda,
  );

  print(venda);

  print("\n--- Teste do Setter ---");
  var itemMouse = itensDaVenda[1]; 
  print("Preço original do Mouse: R\$ ${itemMouse.preco.toStringAsFixed(2)}");
  
  itemMouse.preco = 140.00; 
  print("Novo preço (manual) do Mouse: R\$ ${itemMouse.preco.toStringAsFixed(2)}");
  
  itemMouse.preco = -50.00;
  print("Preço após tentativa inválida: R\$ ${itemMouse.preco.toStringAsFixed(2)}");

  
  print("\n--- Venda com preço do item alterado ---");
  print(venda);
}