class Login{
  final String name;
  final String password;

  const Login({required this.name,required this.password});
  factory Login.fromJson(Map<String,dynamic> json){
    return Login(name: json['name'], password: json['password']);

  }
}