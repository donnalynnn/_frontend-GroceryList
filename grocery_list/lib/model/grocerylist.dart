class ToDo {
  String? id;
  String? product;
  bool isDone;

  ToDo({
    required this.id,
    required this.product,
    this.isDone = false,
  });

  static List<ToDo> todoList() {
    return [
      ToDo(id: '01', product: 'Shin Ramen', isDone: true ),
      ToDo(id: '02', product: 'Vegan Hotdogs', isDone: true ),
      ToDo(id: '03', product: 'Onigiri', ),
      ToDo(id: '04', product: 'Milk', ),
      ToDo(id: '05', product: 'Minute Maid', ),
      ToDo(id: '06', product: 'Bananas', ),
    ];
  }
}