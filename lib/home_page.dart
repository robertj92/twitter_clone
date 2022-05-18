import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:twitter_clone/tweet.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  var tweets = [
    const Tweet(
        avatar:
            'https://docs.flutter.dev/assets/images/docs/catalog-widget-placeholder.png',
        username: 'Flutter',
        name: 'FlutterDev',
        timeAgo: '5m',
        text:
            'Google\'s UI toolkit to build apps for mobile, & desktop from a single codebase.',
        comments: '243',
        retweets: '23K',
        likes: '112K'),
    const Tweet(
        avatar:
        'https://docs.flutter.dev/assets/images/docs/catalog-widget-placeholder.png',
        username: 'Flutter',
        name: 'FlutterDev',
        timeAgo: '5m',
        text:
        'Google\'s UI toolkit to build apps for mobile, & desktop from a single codebase.',
        comments: '243',
        retweets: '23K',
        likes: '112K'),
    const Tweet(
        avatar:
        'https://docs.flutter.dev/assets/images/docs/catalog-widget-placeholder.png',
        username: 'Flutter',
        name: 'FlutterDev',
        timeAgo: '5m',
        text:
        'Google\'s UI toolkit to build apps for mobile, & desktop from a single codebase.',
        comments: '243',
        retweets: '23K',
        likes: '112K'),
    const Tweet(
        avatar:
        'https://docs.flutter.dev/assets/images/docs/catalog-widget-placeholder.png',
        username: 'Flutter',
        name: 'FlutterDev',
        timeAgo: '5m',
        text:
        'Google\'s UI toolkit to build apps for mobile, & desktop from a single codebase.',
        comments: '243',
        retweets: '23K',
        likes: '112K')
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 1.0,
        backgroundColor: Colors.white,
        leading: Container(
          margin: const EdgeInsets.all(10.0),
          child: const CircleAvatar(
              backgroundImage: AssetImage('avatar.jpeg')),
        ),
        title: const Text(
          'Twitter',
          style:
          TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
      ),
      body: listOfTweets(),
      bottomNavigationBar: BottomNavigationBar(items: [
        buildBottomNavigationBarItem(Icons.home, Colors.blue, 'Home'),
        buildBottomNavigationBarItem(
            Icons.search, Colors.black45, 'Search'),
        buildBottomNavigationBarItem(
            Icons.notifications, Colors.black45, 'Notifications'),
        buildBottomNavigationBarItem(
            Icons.mail_outline, Colors.black45, 'Messages')
      ], showSelectedLabels: false),
      floatingActionButton: FloatingActionButton(child: Icon(FontAwesomeIcons.pen), onPressed: () {},),
    );
  }

  Widget listOfTweets() {
    return ListView.separated(itemBuilder: (context, index) {
      return tweets[index];
    },
        separatorBuilder: (context, index) => const Divider(height: 0,),
        itemCount: tweets.length);
  }

  BottomNavigationBarItem buildBottomNavigationBarItem(
      IconData icon, Color color, String label) {
    return BottomNavigationBarItem(
        icon: Icon(
          icon,
          color: color,
        ),
        label: label);
  }
}
