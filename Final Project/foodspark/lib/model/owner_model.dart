class UserModel {
  String? uid;
  String? username;
  String? email;
  String? address;

  UserModel({this.uid, this.username, this.email, this.address});
  //receiving data from server
  factory UserModel.fromMap(map) {
    return UserModel(
      uid: map['uid'],
      username: map['username'],
      email: map['email'],
      address: map['address'],
    );
  }
  //sending data to our server
  Map<String, dynamic> toMap() {
    return {
      'uid': uid,
      'username': username,
      'email': email,
      'address': address,
    };
  }
}
