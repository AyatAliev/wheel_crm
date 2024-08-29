class OnBoardModel {
  String title;
  String description;
  String image;

  OnBoardModel({required this.title, required this.description, required this.image});
}

List<OnBoardModel> contents = [
  OnBoardModel(
      title: 'Удобство',
      description:
          'Вы можете войти в приложение с любого устройства, надо только скачать',
      image: 'assets/images/tire1.png'),
  OnBoardModel(
      title: 'Учет и анализ',
      description:
          'Можно подсчитывать проданный и поступивший товар прямо в приложение',
      image: 'assets/images/tire2.png'),
  OnBoardModel(
      title: 'Админка',
      description:
          'Вы можете дать доступ сотруднику и смотреть отчет не выходя из дома',
      image: 'assets/images/tire3.png'),
];
