import 'package:flutter/material.dart';
import 'package:week4/widget/model.dart';

class StatusScreen extends StatelessWidget {
  const StatusScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List<Model> status = [
      Model(
          image: 'images/Martin_Torff.png',
          title: 'Martin Torff',
          subTitle: 'Let\'s Meet',
          time: '5 minutes ago'),
      Model(
          image: 'images/Alfonso.png',
          title: 'Alfonso Rhiel Madsen',
          subTitle: 'Yes, That\'s correct!',
          time: '7 minutes ago'),
      Model(
          image: 'images/Carla.png',
          title: 'Carla Korsgaard',
          subTitle: 'Nice',
          time: '10 minutes ago'),
      Model(
          image: 'images/Cristofe.png',
          title: 'Cristofe Passaquindici Arcand',
          subTitle: 'Is it going well? What about them?',
          time: '12 minutes ago'),
      Model(
          image: 'images/Zaire.png',
          title: 'Zaire Passaquindici Arcand',
          subTitle: 'I am still wondering, when will you grow up.',
          time: '15 minutes ago'),
      Model(
          image: 'images/Martin.png',
          title: 'Martin Dorwart',
          subTitle: 'Thanks for the Party',
          time: '16 minutes ago'),
      Model(
          image: 'images/Phillip.png',
          title: 'Phillip Westervelt',
          subTitle:
              'We had a fun week last week, let’s plan another party soon!!',
          time: '18 minutes ago'),
      Model(
          image: 'images/Terry.png',
          title: 'Terry Dokidis',
          subTitle: 'Sorry, I couldn’t make it to the party last week.',
          time: '20 minutes ago'),
      Model(
          image: 'images/Davis.png',
          title: 'Davis Westervelt',
          subTitle: 'When you are free, we will call later.',
          time: '11:48'),
    ];
    return Stack(
      children: [
        ListView(
          children: [
            const ListTile(
              leading: Stack(
                children: [
                  Image(
                    image: AssetImage('images/status.png'),
                    height: 66,
                    width: 66,
                  ),
                  Positioned(
                    bottom: 0,
                    right: 0,
                    child: CircleAvatar(
                      backgroundImage: AssetImage('images/image.png'),
                      radius: 12,
                      child: Icon(Icons.add, size: 16, color: Colors.white),
                    ),
                  )
                ],
              ),
              title: Text(
                'My Status',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                ),
              ),
              subtitle: Text(
                'Tap to add status update',
                style: TextStyle(
                  fontSize: 13,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text('Recent Updates',
                  style: TextStyle(fontWeight: FontWeight.bold)),
            ),
            ...status.map((chat) => ListTile(
                  leading: CircleAvatar(
                    radius: 26,
                    backgroundColor: Colors.green,
                    child: CircleAvatar(
                      radius: 24,
                      backgroundImage: AssetImage(chat.image),
                    ),
                  ),
                  title: Text(
                    chat.title,
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  subtitle: Text(
                    chat.time,
                    style: const TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                )),
          ],
        ),
        Positioned(
          bottom: 16,
          right: 16,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              FloatingActionButton(
                backgroundColor: const Color(0xff016B5D),
                onPressed: () {},
                child: const Icon(Icons.edit, color: Color(0xff02B099)),
                mini: true,
              ),
              const SizedBox(height: 10),
              FloatingActionButton(
                backgroundColor: const Color(0xff016B5D),
                onPressed: () {},
                child: const Icon(Icons.camera_alt, color: Colors.white),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
