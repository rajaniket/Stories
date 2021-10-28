import 'package:flutter/material.dart';
import 'package:story/model/user.dart';

class UserProfileWidget extends StatelessWidget {
  final User user;
  final String date;

  const UserProfileWidget({
    required this.user,
    required this.date,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => Material(
        type: MaterialType.transparency,
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 60),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              FittedBox(
                child: CircleAvatar(
                  backgroundColor: Colors.white,
                  child: ClipOval(
                    child: Image.asset(
                      user.imgUrl,
                    ),
                  ),
                ),
              ),
              const SizedBox(width: 16),
              Text(
                user.name,
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              const SizedBox(width: 10),
              Text(
                date,
                style: const TextStyle(color: Colors.white38),
              )
            ],
          ),
        ),
      );
}
