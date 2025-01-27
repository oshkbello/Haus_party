import 'package:haus_party/model/user.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'dart:async';

class UserPreferences {
  Future<bool> saveUser(User user) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();

    prefs.setString("id", user.id);
    prefs.setString("firstName", user.firstName);
    prefs.setString("lastName", user.lastName);
    prefs.setString("username", user.username);
    prefs.setString("email", user.email);
    prefs.setString("dateOfBirth", user.dateOfBirth);
    prefs.setString("profilePicture", user.profilePicture);

    return prefs.commit();
  }

  Future<User> getUser() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();

    String id = prefs.getString('id');
    String firstName = prefs.getString('firstName');
    String lastName = prefs.getString('lastName');
    String email = prefs.getString('email');
    String username = prefs.getString('username');
    String dateOfBirth = prefs.getString('dateOfBirth');
    String profilePicture = prefs.getString('profilePicture');

    return User(
        id: id,
        firstName: firstName,
        lastName: lastName,
        email: email,
        username: username,
        dateOfBirth: dateOfBirth,
        profilePicture: profilePicture);
  }

  void removeUser() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();

    prefs.remove("firstName");
    prefs.remove("lastName");
    prefs.remove("username");
    prefs.remove("email");
    prefs.remove("dateOfBirth");
    prefs.remove("profilePicture");
  }
}

class AuthPreferences {
  Future<bool> saveToken(Auth auth) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();

    prefs.setString('token', auth.token);

    return prefs.commit();
  }

  Future<String> getToken(args) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    String token = prefs.getString("token");
    return token;
  }


}
