class LoginModel {
  final String email;
  final String password;

  const LoginModel({
    required this.email,
    required this.password,
  });

  factory LoginModel.fromJson(Map<String, dynamic> json) => LoginModel(
        email: json['email'],
        password: json['password'],
      );
}
