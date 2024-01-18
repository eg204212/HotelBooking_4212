class UserModel {
  // schema of the data list
  final String uid;
  final String email;
  final String userName;
  final String password;

//constructor
  UserModel({
    required this.uid,
    required this.email,
    required this.userName,
    required this.password,
  });

//convert data into json format
  Map<String, dynamic> toJSON() {
    return {
      'userID': uid,
      'email': email,
      'userName': userName,
      'password': password
    };
  }

  // conver to user data

  factory UserModel.fromJSON(Map<String, dynamic> json) {
    return UserModel(
        uid: json['userID'],
        email: json['email'],
        userName: json['userName'],
        password: json['password']);
  }
}
