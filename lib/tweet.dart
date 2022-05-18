import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Tweet extends StatelessWidget {
  const Tweet(
      {Key? key,
      required this.avatar,
      required this.username,
      required this.name,
      required this.timeAgo,
      required this.text,
      required this.comments,
      required this.retweets,
      required this.likes})
      : super(key: key);

  final String avatar;
  final String username;
  final String name;
  final String timeAgo;
  final String text;
  final String comments;
  final String retweets;
  final String likes;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [tweetAvatar(), tweetBody()],
      ),
    );
  }

  Container tweetAvatar() {
    return Container(
      margin: const EdgeInsets.all(10.0),
      child: CircleAvatar(
        backgroundImage: NetworkImage(
            avatar),
      ),
    );
  }

  Widget tweetBody() {
    return Expanded(
      child: Column(
        children: [tweetHeader(), tweetText(), tweetButtons()],
      ),
    );
  }

  Widget tweetHeader() {
    return Row(
      children: [
        Container(
            margin: const EdgeInsets.only(right: 5.0),
            child: Text(
              username,
              style: const TextStyle(fontWeight: FontWeight.bold),
            )),
        Text(
          '@$name - $timeAgo',
          style: const TextStyle(color: Colors.grey),
        ),
        const Spacer(),
        IconButton(
          icon: const Icon(
            Icons.keyboard_arrow_down,
            color: Colors.grey,
          ),
          onPressed: () {},
        )
      ],
    );
  }

  Widget tweetText() {
    return Text(
      text,
      overflow: TextOverflow.clip,
    );
  }

  Widget tweetButtons() {
    return Container(
      margin: const EdgeInsets.only(top: 10.0, right: 20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          tweetIconButton(FontAwesomeIcons.comment, comments),
          tweetIconButton(FontAwesomeIcons.retweet, retweets),
          tweetIconButton(FontAwesomeIcons.heart, likes),
          tweetIconButton(FontAwesomeIcons.share, ''),
        ],
      ),
    );
  }

  Row tweetIconButton(IconData icon, String text) {
    return Row(
      children: [
        Icon(
          icon,
          size: 18.0,
          color: Colors.black45,
        ),
        Container(
          margin: const EdgeInsets.all(6.0),
          child: Text(
            text,
            style: const TextStyle(color: Colors.black45, fontSize: 14.0),
          ),
        )
      ],
    );
  }
}