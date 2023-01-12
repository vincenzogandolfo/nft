import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: Container(
        width: double.infinity,
        height: 380,
        margin: const EdgeInsets.all(16),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
            boxShadow: [
              BoxShadow(
                color: Colors.black26,
                blurRadius: 5,
                spreadRadius: 2,
              )
            ]),
        child: Stack(
          children: [
            backgroundImage(),
            content(),
          ],
        ),
      ),
    );
  }
}

Widget backgroundImage() => ClipRRect(
      borderRadius: const BorderRadius.only(
        topLeft: Radius.circular(20),
        topRight: Radius.circular(20),
      ),
      child: Image.network(
        'https://images.unsplash.com/photo-1618472609777-b038f1f04b8d?ixlib=rb'
        '-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto'
        '=format&fit=crop&w=1664&q=80',
        width: double.infinity,
        height: 200,
        fit: BoxFit.cover,
      ),
    );

Widget content() => Positioned(
      top: 140,
      bottom: 0,
      right: 0,
      left: 0,
      child: Column(
        children: const [
          CircleAvatar(
            radius: 60,
            backgroundImage: NetworkImage(
              'https://media.licdn.com/dms/image/D4D03AQEkxNAgrjorLA/profile-displayphoto-shrink_800_800/0/1671098207890?e=1677715200&v=beta&t=_CZIpSRZ8y3nl0HGmMTCvRcgcMVl9h-rU8lA39aFopg',
            ),
          ),
          SizedBox(height: 20),
          Text(
            'Vincenzo Gandolfo',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 24,
            ),
          ),
          SizedBox(height: 10),
          Text(
            'Flutter Developer',
            style: TextStyle(
              fontSize: 20,
              color: Colors.black38,
            ),
          ),
        ],
      ),
    );
