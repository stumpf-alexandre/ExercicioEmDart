main() {
  print('Primeiro programa em Dart.');

  print("-----------------------------------------------------");

  //dart altamente tipado
  int a = 3; //a não pode receber 3.1 por ser double
  double b = 3.1;
  bool estaChovendo = true;
  bool estaFrio = false;
  var c =
      'Voce é muito legal'; //reconhece que o c é uma string e não aceita numeros c=1234
  print(c is String);
  print(a);
  print(b);
  print(estaChovendo);
  print(estaFrio);
  print(estaChovendo || estaFrio);

  print("-----------------------------------------------------");

  var nomes = ['Ana', 'Lara', 'Lisiane'];
  print(nomes.length);
  nomes.add('Alexandre');
  print(nomes.length);
  nomes.add('Alexandre');
  nomes.add('Alexandre');
  print(nomes.length);
  print(nomes.elementAt(0));
  print(nomes[5]);

  print("-----------------------------------------------------");

  Set<int> conjunto = {0, 1, 2, 3, 4, 5, 6, 7, 4, 4, 4}; //não aceita repetições
  print(conjunto.length);
  print(conjunto is Set);

  print("-----------------------------------------------------");

  dynamic x =
      'Teste'; //variavel do tipo dinamica, baixamente tipada, a variavel aceita qualquer tipo de dado
  x = 123709;
  print(x);
  x = false;
  print(x);

  print("-----------------------------------------------------");

  var d = 3;
  print(d);
  d = 4;
  print(d);

  print("-----------------------------------------------------");

  final e = 7;
  print(e);
  //e = 0; não consegue mudar o valor do final
  print(e);

  print("-----------------------------------------------------");

  const f = 6;
  print(f);
  //f = 9; não consegue mudar o valor da const
  print(f);

  print("-----------------------------------------------------");

  Map<String, double> notasAlunos = {
    'Ana': 9.7,
    'Lara': 7.9,
    'Lisiane': 8.9,
    'Alexandre': 5.9
  };
  for (var chave in notasAlunos.keys) {
    //printa somente o nome do aluno
    print('chave = $chave');
  }

  print("-----------------------------------------------------");

  for (var valor in notasAlunos.values) {
    //printa somente a nota do aluno
    print('valor = $valor');
  }

  print("-----------------------------------------------------");

  for (var registro in notasAlunos.entries) {
    //printa os dois
    print('${registro.key} = ${registro.value}');
  }

  print("-----------------------------------------------------");

  soma(2, 3);

  print("-----------------------------------------------------");

  somas(3, 4);

  print("-----------------------------------------------------");

  print('O valor da soma é: ${somaz(9, 1)}');

  final r = somaz(5, 5);
  print('O valor da soma é: $r');

  print("-----------------------------------------------------");

  somar(7, 7);

  print("-----------------------------------------------------");

  final n = exec(10, 8, (a, b) {
    return a - b;
  });
  print('O resultado é: $n');

  print("-----------------------------------------------------");

  //definindo uma fat areon function
  final m = exec(10, 8, (a, b) => a * b + 100);
  print('O resultado é: $m');

  print("-----------------------------------------------------");

  var p1 = new Produto();
  p1.nome = 'Lapis';
  p1.preco = 4.59;
  print("O Produto ${p1.nome} tem preço de R\$${p1.preco}");

  print("-----------------------------------------------------");

  var p2 = Product('Caneta', 5.99);
  var p3 = Product('Geladeira', 1578.99);
  print("O Produto ${p2.nome} tem preço de R\$${p2.preco}");
  print("O Produto ${p3.nome} tem preço de R\$${p3.preco}");

  print("-----------------------------------------------------");

  var p4 = Prod(nome: 'Caneta');
  var p5 = Prod(preco: 1578.99, nome: 'Geladeira');
  print("O Produto ${p4.nome} tem preço de R\$${p4.preco}");
  print("O Produto ${p5.nome} tem preço de R\$${p5.preco}");

  print("-----------------------------------------------------");

  var p6 = Prod(nome: 'Caneca');
  var p7 = Prod(preco: 2300.59, nome: 'Televisão');
  imprimirProduto(preco: p6.preco, nome: p6.nome);
  imprimirProduto(preco: p7.preco, nome: p7.nome);

  print("-----------------------------------------------------");

  var p8 = Prod(nome: 'Panela');
  var p9 = Prod(preco: 8093.45, nome: 'Moto');
  imprimirProduto2(2, preco: p8.preco, nome: p8.nome);
  imprimirProduto2(7, preco: p9.preco, nome: p9.nome);
}

soma(a, b) {
  print(a + b);
}

somas(int a, int b) {
  print(a + b);
}

int somaz(int a, int b) {
  return a + b;
}

void somar(int a, int b) {
  print(a + b);
}

//passando uma função como parametro
int exec(int a, int b, int Function(int, int) fn) {
  return fn(a, b);
}

//criando classes no dart
class Produto {
  String nome;
  double preco;
}

class Product {
  String nome;
  double preco;
  /*Product(String nome, double preco) {
    this.nome = nome;
    this.preco = preco;*/
  //melhorando o construtor, com parametro posicional, não pode alterar a ordem
  Product(this.nome, this.preco);
}

class Prod {
  String nome;
  double preco;
  //parametro nomeado, não importa a posição dos parametros nomeados
  Prod({this.nome, this.preco = 7.78 /*passando um valor padrão*/});
}

imprimirProduto({String nome, double preco}) {
  print("O Produto ${nome} tem preço de R\$${preco}");
}

//misturando parametros nomeados com parametros posicional
imprimirProduto2(int qtd, {String nome, double preco}) {
  for (var i = 0; i < qtd; i++) {
    print("O Produto ${nome} tem preço de R\$${preco}");
  }
}
