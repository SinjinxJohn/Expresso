class Login{
  late String email;
  late String password;


  Login({
    required this.email,
    required this.password,

  });

  Map<String,dynamic> toJson(){
    final Map<String,dynamic> data = <String,dynamic>{};


    data['email']=email;
    data['password']=password;

    return data;
  }
}