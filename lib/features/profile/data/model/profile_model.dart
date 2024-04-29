class ProfileModel {
  int? id;
  String? email;
  String? role;
  int? team;
  FunctionsModel? functions;

  ProfileModel({this.id, this.email, this.role, this.team, this.functions});

  ProfileModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    email = json['email'];
    role = json['role'];
    team = json['team'];
    functions = json['functions'] != null ? FunctionsModel.fromJson(json['functions']) : null;
  }
}

class FunctionsModel {
  final bool defect;
  final bool returned;
  final bool createSales;
  final bool createAcceptance;

  FunctionsModel({
    required this.defect,
    required this.returned,
    required this.createSales,
    required this.createAcceptance,
  });

  factory FunctionsModel.fromJson(Map<String, dynamic> json) {
    return FunctionsModel(
      defect: json['Брак'],
      returned: json['Возврат'],
      createSales: json['Создание продаж'],
      createAcceptance: json['Создание приемки'],
    );
  }
}
