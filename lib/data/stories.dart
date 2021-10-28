import 'package:flutter/material.dart';
import 'package:story/data/constants.dart';
import 'package:story/model/story.dart';

final stories1 = [
  Story(
    mediaType: MediaType.image,
    url:
        'https://pbs.twimg.com/profile_images/932436780585848832/1O7_i08r_400x400.jpg',
    caption: '',
    date: 'just now',
    duration: StatusDuration.imageStoryDuration,
  ),
  Story(
    mediaType: MediaType.text,
    caption:
        'Ecosystm is a private equity backed Digital Research and Advisory platform, headquartered in Singapore with a global presence. Ecosystm has developed a global first digital research platform that offers the market real-time data and insights on technology trends and analysis. The platform has native social media and content capabilities to drive community engagement in order to drive an active userbase. The platform is currently available as a web portal and Android & iOS applications.',
    date: '1 min ago',
    duration: StatusDuration.textStoryDuration,
    color: Colors.purple,
  ),
];

final stories2 = [
  Story(
      mediaType: MediaType.video,
      caption: 'Happy Diwali',
      url:
          'https://static.videezy.com/system/resources/previews/000/054/208/original/2020-Diwali-Firework-1.mp4',
      date: '5 min ago',
      duration: StatusDuration.videoStoryDuration),
  Story(
      url:
          'https://images.unsplash.com/photo-1605194000384-439c3ced8d15?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTV8fGhhcHB5JTIwZGl3YWxpfGVufDB8fDB8fA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60',
      mediaType: MediaType.image,
      caption: 'Happy Diwali',
      date: '12 min ago',
      duration: StatusDuration.imageStoryDuration),
  Story(
      mediaType: MediaType.text,
      caption:
          'The lights glowing on Diwali inspire us 2 shine in our true spirit! May dis glittering festival make u shine all d way! Wish you a great Diwali! \n \n --- Aniket Raj',
      color: Colors.indigo,
      date: '15 min ago',
      duration: StatusDuration.textStoryDuration),
];

final stories3 = [
  Story(
      mediaType: MediaType.image,
      url:
          'https://images.unsplash.com/photo-1548013146-72479768bada?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=876&q=80',
      caption: 'Mindblowing',
      date: '30 min ago',
      duration: StatusDuration.imageStoryDuration),
  Story(
      mediaType: MediaType.video,
      caption: 'Tiger',
      url:
          'https://static.videezy.com/system/resources/previews/000/050/006/original/DSC_8325.MOV.mp4',
      date: '31 min ago',
      duration: StatusDuration.videoStoryDuration),
  Story(
      mediaType: MediaType.text,
      caption: 'Incredible India',
      color: Colors.indigo,
      date: '31 min ago',
      duration: StatusDuration.textStoryDuration),
];
final stories4 = [
  Story(
    mediaType: MediaType.image,
    url:
        'https://images.unsplash.com/photo-1512206818698-0038a42885fa?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8Ym13fGVufDB8fDB8fA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60',
    caption: 'BMW',
    date: '2 hours ago',
    duration: StatusDuration.imageStoryDuration,
  ),
  Story(
    mediaType: MediaType.image,
    url:
        'https://images.unsplash.com/photo-1549399542-7e3f8b79c341?ixid=MnwxMjA3fDB8MHxzZWFyY2h8N3x8Ym13fGVufDB8fDB8fA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60',
    caption: 'BMW',
    date: '2 hours ago',
    duration: StatusDuration.imageStoryDuration,
  ),
  Story(
    mediaType: MediaType.image,
    url:
        'https://images.unsplash.com/photo-1607853554439-0069ec0f29b6?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTB8fGJtd3xlbnwwfHwwfHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60',
    caption: 'BMW',
    date: '2 hours ago',
    duration: StatusDuration.imageStoryDuration,
  ),
  Story(
    mediaType: MediaType.image,
    url:
        'https://images.unsplash.com/photo-1542231705231-d01306092320?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTZ8fGJtd3xlbnwwfHwwfHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60',
    caption: 'BMW',
    date: '2 hours ago',
    duration: StatusDuration.imageStoryDuration,
  ),
];
final stories5 = [
  Story(
      mediaType: MediaType.video,
      caption: 'Mountain',
      url:
          'https://static.videezy.com/system/resources/previews/000/048/878/original/huangshanTL17.mp4',
      date: '2 hours ago',
      duration: StatusDuration.videoStoryDuration),
  Story(
    mediaType: MediaType.image,
    url:
        'https://media3.giphy.com/media/3ogwFSrE3nVrvr0sXS/giphy.gif?cid=790b7611d65a470ff9ae23e59b086c21d6fca10f9e1912d0&rid=giphy.gif&ct=g',
    caption: 'Love India',
    date: '2 hours ago',
    duration: StatusDuration.imageStoryDuration,
  ),
  Story(
    mediaType: MediaType.text,
    caption:
        'Sometimes when you innovate, you make mistakes. It is best to admit them quickly, and get on with improving your other innovations',
    color: Colors.blue,
    date: '2 hours ago',
    duration: StatusDuration.textStoryDuration,
  ),
];

final stories6 = [
  Story(
    mediaType: MediaType.image,
    url:
        'https://i0.wp.com/www.scribblewhatever.com/wp-content/uploads/2021/04/Steve-Jobs-Quotes-6.jpg?resize=450%2C450&ssl=1',
    caption: 'steve',
    date: '3 hours ago',
    duration: StatusDuration.imageStoryDuration,
  ),
  Story(
    mediaType: MediaType.text,
    caption:
        'You can\'t connect the dots looking forward; you can only connect them looking backwards',
    color: Colors.purple,
    date: '3 hours ago',
    duration: StatusDuration.textStoryDuration,
  ),
  Story(
    mediaType: MediaType.image,
    url:
        'https://images.unsplash.com/photo-1616061098842-e5b18be81f5a?ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8c3RldmUlMjBqb2JzfGVufDB8fDB8fA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60',
    caption: 'steve',
    date: '3 hours ago',
    duration: StatusDuration.imageStoryDuration,
  ),
  Story(
    mediaType: MediaType.image,
    url:
        'https://images.unsplash.com/photo-1529717730488-7a2492983b2c?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTV8fHN0ZXZlJTIwam9ic3xlbnwwfHwwfHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60',
    caption: 'steve',
    date: '3 hours ago',
    duration: StatusDuration.imageStoryDuration,
  ),
];
