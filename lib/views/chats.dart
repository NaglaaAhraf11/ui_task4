import 'package:flutter/material.dart';
import 'package:week4/widget/model.dart';

// ignore: must_be_immutable
class ChatsScreen extends StatelessWidget {
  List<Model> chats = [
    Model(
        image: 'images/Martin_Torff.png',
        title: 'Martin Torff',
        subTitle: 'Let\'s Meet',
        time: '11:48'),
    Model(
        image: 'images/Alfonso.png',
        title: 'Alfonso Rhiel Madsen',
        subTitle: 'Yes, That\'s correct!',
        time: '09:21'),
    Model(
        image: 'images/Carla.png',
        title: 'Carla Korsgaard',
        subTitle: 'Nice',
        time: '11:48'),
    Model(
        image: 'images/Cristofe.png',
        title: 'Cristofe Passaquindici Arcand',
        subTitle: 'Is it going well? What about them?',
        time: '11:48'),
    Model(
        image: 'images/Zaire.png',
        title: 'Zaire Passaquindici Arcand',
        subTitle: 'I am still wondering, when will you grow up.',
        time: '11:48'),
    Model(
        image: 'images/Martin.png',
        title: 'Martin Dorwart',
        subTitle: 'Thanks for the Party',
        time: '11:48'),
    Model(
        image: 'images/Phillip.png',
        title: 'Phillip Westervelt',
        subTitle:
            'We had a fun week last week, let’s plan another party soon!!',
        time: '11:48'),
    Model(
        image: 'images/Terry.png',
        title: 'Terry Dokidis',
        subTitle: 'Sorry, I couldn’t make it to the party last week.',
        time: '11:48'),
    Model(
        image: 'images/Davis.png',
        title: 'Davis Westervelt',
        subTitle: 'When you are free, we will call later.',
        time: '11:48'),
  ];

  ChatsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.separated(
        itemCount: chats.length,
        separatorBuilder: (context, index) => const Divider(height: 0),
        itemBuilder: (context, index) {
          final chat = chats[index];
          return ListTile(
            leading: Image(
              image: AssetImage(chat.image),
              height: 66,
              width: 66,
            ),
            title: Row(
              children: [
                Expanded(
                  child: Text(
                    chat.title,
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
                Text(
                  chat.time,
                  style: const TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
            subtitle: Text(
              chat.subTitle,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: const TextStyle(
                fontSize: 13,
                fontWeight: FontWeight.w400,
              ),
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: const Color(0xff016B5D),
        onPressed: () {},
        child:const Icon(
          Icons.chat,
          color: Colors.white,
        ),
      ),
    );
  }
}
