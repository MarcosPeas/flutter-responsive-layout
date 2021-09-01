import 'package:flutter/material.dart';
import 'package:flutter_responsivo/model/post.dart';
import 'package:flutter_responsivo/model/user.dart';
import 'package:flutter_responsivo/widget/custom_card.dart';

class ColTwo extends StatefulWidget {
  @override
  _ColTwoState createState() => _ColTwoState();
}

class _ColTwoState extends State<ColTwo> {
  final posts = [
    Post(
      User('Cristian', 'Desenvolvedor Flutter'),
      'Bom dia, Pessoal!',
      'image01.jpg',
      15,
    ),
    Post(
      User('Raphael', 'Desenvolvedor iOS'),
      'Boa tarde, Devs!',
      'image02.jpg',
      50,
    ),
    Post(
      User('Pedro H.', 'Desenvolvedor Flutter'),
      'Uma bela noite para programar!',
      'image03.jpg',
      12,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
        shrinkWrap: true,
        itemCount: posts.length,
        itemBuilder: (_, index) {
          Post post = posts[index];
          return Padding(
            padding: const EdgeInsets.only(bottom: 8),
            child: CustomCard(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisSize: MainAxisSize.min,
                children: [
                  _postHeader(post.user),
                  _postContent(post),
                  _postFooter(),
                ],
              ),
            ),
          );
        },
      ),
    );
  }

  Widget _postHeader(User user) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          ClipOval(
            child: Container(
              padding: const EdgeInsets.all(6),
              color: Colors.blueGrey,
              child: Icon(
                Icons.person,
                color: Colors.white24,
                size: 32,
              ),
            ),
          ),
          SizedBox(
            width: 16,
          ),
          Expanded(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text(
                  user.name,
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(
                  height: 4,
                ),
                Text(
                  user.description,
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.black54,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _postContent(Post post) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 8, right: 8, bottom: 6),
            child: Text(post.content),
          ),
          AspectRatio(
            aspectRatio: 1 / 1,
            child: Image.asset(
              'assets/images/${post.image}',
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 16, top: 8, right: 16),
            child: Text(
              '${post.comentsCount} comentários',
              style: TextStyle(fontSize: 13, color: Colors.black54),
            ),
          ),
        ],
      ),
    );
  }

  Widget _postFooter() {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 16, top: 0, right: 16),
          child: Divider(),
        ),
        Container(
          padding: const EdgeInsets.all(16),
          child: Row(
            children: [
              TextButton.icon(
                onPressed: () {},
                icon: Icon(
                  Icons.message,
                  size: 20,
                  color: Colors.black54,
                ),
                label: Text(
                  'Comentar',
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.black54,
                  ),
                ),
              ),
              SizedBox(
                width: 16,
              ),
              TextButton.icon(
                onPressed: () {},
                icon: Icon(
                  Icons.share,
                  size: 20,
                  color: Colors.black54,
                ),
                label: Text(
                  'Compartilhar',
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.black54,
                  ),
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 8,
        )
      ],
    );
  }
}
