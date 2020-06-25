class Tabela {
  dynamic codigo;
  dynamic nome;
  dynamic tipoDeRecurso;
  dynamic quantidade;
  dynamic tipoDePlantacao;
  dynamic tipoDeAnimal;

  Tabela(
      {this.codigo,
      this.nome,
      this.quantidade,
      this.tipoDeAnimal,
      this.tipoDePlantacao,
      this.tipoDeRecurso});

  static List<Tabela> getTabela(){
    Tabela(codigo: 0001, nome: 'Feijão', quantidade: 15, tipoDePlantacao: 'Grão');
    Tabela(codigo: 0002, nome: 'Galinha', quantidade: 500, tipoDeAnimal: 'Ave');
    //Tabela(codigo: 0003, nome: 'Adubo', quantidade: 150, tipoDeRecurso: 'Orgânico');
    //Tabela(codigo: 0004, nome: 'Inseticida', quantidade: 188, tipoDeRecurso: 'Químico');
    //Tabela(codigo: 0005, nome: 'Melancia', quantidade: 123, tipoDeAnimal: 'Fruta');
    //Tabela(codigo: 0006, nome: 'Vaca', quantidade: 9, tipoDeAnimal: 'Gado');
  }
}

class ListaDeTipo{
  String tipo;

  ListaDeTipo(this.tipo);
}