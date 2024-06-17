class UserModel {
  final String name;
  final String email;
  final String phone;
  final String password;

  const UserModel({
    required this.name,
    required this.email,
    required this.phone,
    required this.password,
  });

  factory UserModel.fromJson(Map<String, dynamic> json) => UserModel(
        name: json['name'],
        email: json['email'],
        phone: json['phone'],
        password: json['password'],
      );
}
