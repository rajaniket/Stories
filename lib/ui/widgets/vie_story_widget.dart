import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:story/model/story.dart';
import 'package:story/model/user.dart';
import 'package:story/provider/user_provider.dart';
import 'package:story/ui/widgets/user_profile_widget.dart';
import 'package:story_view/story_view.dart';

class ViewStoryWidget extends StatefulWidget {
  final User user;
  final PageController controller;
  const ViewStoryWidget(
      {Key? key, required this.user, required this.controller})
      : super(key: key);

  @override
  _ViewStoryWidgetState createState() => _ViewStoryWidgetState();
}

class _ViewStoryWidgetState extends State<ViewStoryWidget> {
  String date = '';
  late StoryController controller;
  final storyItems = <StoryItem>[];

  void addStoryItems() {
    for (final story in widget.user
        .stories) // for in loop ,accessing all the stories for selected user
    {
      switch (story.mediaType) {
        case MediaType.image:
          storyItems.add(StoryItem.pageImage(
              url: story.url!,
              controller: controller,
              duration: Duration(seconds: story.duration.toInt())));

          break;

        case MediaType.text:
          storyItems.add(StoryItem.text(
              title: story.caption,
              backgroundColor: Colors.grey,
              duration: Duration(seconds: story.duration.toInt())));

          break;
        case MediaType.video:
          storyItems.add(StoryItem.pageVideo(story.url!,
              controller: controller,
              // shown: ,
              duration: Duration(seconds: story.duration.toInt())));

          break;
      }
    }
  }

  onStoryCompleted() {
    widget.controller.nextPage(
        duration: const Duration(microseconds: 300), curve: Curves.easeIn);
    var temp = Provider.of<UsersProvider>(context, listen: false);
    temp.countRemainingPage--;
    final isLastPage = temp.countRemainingPage == 0;
    if (isLastPage) {
      temp.countRemainingPage == temp.localUsers.length;
      Navigator.pop(context);
    }
  }

  @override
  void initState() {
    controller = StoryController();
    date = widget.user.stories[0].date;
    addStoryItems();
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Material(
          type: MaterialType.transparency,
          child: StoryView(
            controller: controller,
            storyItems: storyItems,
            onComplete: onStoryCompleted,
            onStoryShow: (storyItem) {
              final index =
                  storyItems.indexOf(storyItem); // currnt ongoing story index
              if (index > 0) {
                setState(() {
                  date = widget.user.stories[index].date;
                });
              }
              if (index == storyItems.length - 1) {
                var temp = Provider.of<UsersProvider>(context, listen: false);
                final currentIndex = temp.localUsers.indexOf(widget.user);
                temp.shiftUserToBack(
                    currentIndex); // on completion send user to back in the list
              }
            },
            onVerticalSwipeComplete: (direction) {
              Navigator.pop(context);
            },
          ),
        ),
        UserProfileWidget(user: widget.user, date: date),
      ],
    );
  }
}
