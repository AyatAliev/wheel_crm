class ProfileEntity {
  final int? id;
  final String? email;
  final String? role;
  final int? team;
  final FunctionsEntity? functions;
  final String? firstName;
  final String? lastName;

  const ProfileEntity({
    this.id,
    this.email,
    this.role,
    this.team,
    this.functions,
    this.firstName,
    this.lastName,
  });

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['email'] = email;
    data['role'] = role;
    data['team'] = team;
    data['first_name'] = firstName;
    data['last_name'] = lastName;
    if (functions != null) {
      data['functions'] = functions!.toJson();
    }
    return data;
  }
}

class FunctionsEntity {
  final bool defect;
  final bool returned;
  final bool createSales;
  final bool createAcceptance;

  const FunctionsEntity({
    required this.defect,
    required this.returned,
    required this.createSales,
    required this.createAcceptance,
  });

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['Брак'] = defect;
    data['Возврат'] = returned;
    data['Создание продаж'] = createSales;
    data['Создание приемки'] = createAcceptance;
    return data;
  }
}
