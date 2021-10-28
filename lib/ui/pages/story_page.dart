import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:story/model/user.dart';
import 'package:story/provider/user_provider.dart';
import 'package:story/ui/widgets/vie_story_widget.dart';

class StoryPage extends StatefulWidget {
  final User user;
  // ignore: non_constant_identifier_names
  const StoryPage({Key? key, required this.user}) : super(key: key);

  @override
  State<StoryPage> createState() => _StoryPageState();
}

class _StoryPageState extends State<StoryPage> {
  late PageController controller;
  @override
  void initState() {
    final initialPage = Provider.of<UsersProvider>(context, listen: false)
        .localUsers
        .indexOf(widget.user);
    controller = PageController(
      initialPage: initialPage,
    );
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return PageView(
      controller: controller,
      children: Provider.of<UsersProvider>(context, listen: false)
          .localUsers
          .map((user) => ViewStoryWidget(user: user, controller: controller))
          .toList(),
    );
  }
}
