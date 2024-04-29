enum FunctionsProfile {
  createSales('Создание продаж'),
  createAcceptance('Создание приемки'),
  returned('Возврат'),
  defect('Брак');

  final String title;

  const FunctionsProfile(this.title);
}
