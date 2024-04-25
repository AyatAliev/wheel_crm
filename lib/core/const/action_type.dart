enum ActionType {
  sales('Продажа'),
  returned('Возврат'),
  defect('Брак');

  final String title;

  const ActionType(this.title);
}
