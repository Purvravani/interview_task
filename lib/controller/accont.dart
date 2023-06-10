class Account {
  int? id;
  String? name;
  String? email;
  String? dob;
  String? pass;
  String? cpass;

  Account(
      {required id,
      required name,
      required email,
      required dob,
      required pass,
      required cpass});

  static Account frommap(Map m) {
    return Account(
        id: m['id'],
        name: m['acid'],
        email: m['amount'],
        dob: m['name'],
        pass: m['type'],
        cpass: m['reason']);
  }
}
