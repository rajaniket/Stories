import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:story/model/user.dart';
import 'package:story/provider/user_provider.dart';
import 'package:story/ui/pages/story_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text('Stories'),
        centerTitle: true,
        backgroundColor: Colors.purple,
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 10),
        child: Column(
          children: [
            _buildUserStoryList(context),
            Padding(
              padding: const EdgeInsets.all(25.0),
              child: Center(child: Image.asset('assets/images/ecosystem.jpg')),
            )
          ],
        ),
      ),
    );
  }

  Widget _buildUserStoryList(BuildContext context) {
    return Container(
      height: 100,
      color: Colors.blueGrey,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: Provider.of<UsersProvider>(context, listen: true)
            .localUsers
            .map((user) => _profilePicture(context, user))
            .toList(),
      ),
    );
  }

  Padding _profilePicture(BuildContext context, User user) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: GestureDetector(
        onTap: () {
          Navigator.of(context).push(
              MaterialPageRoute(builder: (context) => StoryPage(user: user)));
        },
        child: Container(
          decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.white,
              border: Border.all(color: Colors.yellow, width: 2)),
          child: FittedBox(
            child: CircleAvatar(
              backgroundColor: Colors.transparent,
              child: ClipOval(
                child: Image.asset(
                  user.imgUrl,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
