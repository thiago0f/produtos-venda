# Sistema de Vendas em Dart (Exemplo de POO)

Este é um projeto simples em Dart puro criado para demonstrar os conceitos fundamentais de Programação Orientada a Objetos (POO), com foco especial na **composição de classes**.

O projeto simula um pequeno sistema de vendas, onde uma `Venda` é composta por um `Cliente` e uma lista de `VendaItem`, que por sua vez é composto por um `Produto`. Este tipo de modelagem é a base de muitos aplicativos, incluindo os feitos com Flutter.

## 🎯 Conceitos Demonstrados

O código está estruturado para exemplificar:

* **Classes e Objetos:** Criação de classes (`Cliente`, `Produto`, `VendaItem`, `Venda`) para modelar entidades do mundo real.
* **Composição:** A principal técnica usada.
    * A classe `Venda` *possui um* `Cliente`.
    * A classe `Venda` *possui uma* lista de `VendaItem`.
    * A classe `VendaItem` *possui um* `Produto`.
* **Construtores:** Uso de construtores com parâmetros nomeados (obrigatórios e com valores padrão).
* **Getters e Setters:** Implementação de `get precoComDesconto` em `Produto` e um `get/set` personalizado para `preco` em `VendaItem`.
* **Encapsulamento:** Uso de uma variável privada (`_preco`) em `VendaItem` para proteger o preço do item no momento da venda.
* **Sobrescrita de Métodos:** Uso do `@override` para o método `toString()` na classe `Venda`, facilitando a exibição de um resumo formatado.

## 📂 Estrutura do Projeto

O projeto é dividido em arquivos, onde cada arquivo define uma classe:

* `cliente.dart`: Define a classe `Cliente`.
* `produto.dart`: Define a classe `Produto`, com lógica para calcular o preço com desconto.
* `venda_item.dart`: Define a classe `VendaItem`, que associa um `Produto` a uma `quantidade` e "trava" o preço de venda.
* `venda.dart`: Define a classe `Venda`, que associa um `Cliente` a uma lista de `VendaItem` e calcula o `valorTotal`.
* `main.dart`: Arquivo principal de execução, usado para criar objetos, simular uma venda e imprimir o resultado no console.

## 🚀 Como Rodar

Este projeto não requer o Flutter, apenas o **SDK do Dart**.

1.  **Clone o repositório** ou baixe os 5 arquivos (`.dart`) para uma mesma pasta.
2.  **Abra o terminal** e navegue até a pasta onde os arquivos estão.
3.  **Execute o arquivo `main.dart`** com o seguinte comando:

    ```bash
    dart run main.dart
    ```

4.  **(Opcional) No VS Code:** Se você tiver a [extensão do Dart](https://marketplace.visualstudio.com/items?itemName=Dart-Code.dart-code) instalada, basta abrir o arquivo `main.dart` e clicar em **"Run"** (ou "Executar") que aparece acima da função `void main()`.

## 🖥️ Saída Esperada

Ao executar o `main.dart`, você verá o seguinte resumo da venda no seu terminal:

```text
Resumo da Venda
-----------------------------------
Cliente: Thiago Moura (CPF: 12345678900)

Itens:
  - Notebook (1x) - R$ 3000.00 (un.) - Subtotal: R$ 3000.00
  - Mouse (2x) - R$ 150.00 (un.) - Subtotal: R$ 300.00
  - Teclado (1x) - R$ 180.00 (un.) - Subtotal: R$ 180.00

-----------------------------------
Valor Total: R$ 3480.00

--- Teste do Setter ---
Preço original do Mouse: R$ 150.00
Novo preço (manual) do Mouse: R$ 140.00
Preço após tentativa inválida: R$ 140.00

--- Venda com preço do item alterado ---
Resumo da Venda
-----------------------------------
Cliente: Thiago (CPF: 12345678900)

Itens:
  - Notebook (1x) - R$ 3000.00 (un.) - Subtotal: R$ 3000.00
  - Mouse (2x) - R$ 140.00 (un.) - Subtotal: R$ 280.00
  - Teclado (1x) - R$ 180.00 (un.) - Subtotal: R$ 180.00

-----------------------------------
Valor Total: R$ 3460.00
