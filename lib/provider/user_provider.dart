import 'package:flutter/material.dart';
import 'package:story/data/users.dart';
import 'package:story/model/user.dart';

class UsersProvider extends ChangeNotifier {
  List<User> localUsers = users;
  int countRemainingPage = users.length;

  void shiftUserToBack(int currentIndex) {
    localUsers.add(localUsers[currentIndex]);
    localUsers.remove(localUsers[currentIndex]);
    notifyListeners();
  }
}
