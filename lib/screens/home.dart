// ignore_for_file: avoid_print

import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Weather'),
        backgroundColor: Colors.purple[600],
        elevation: 0,
        actions: [
          IconButton(
            onPressed: () => {print('refresh')},
            icon: const Icon(Icons.refresh),
          ),
          IconButton(
            onPressed: () => {print('search')},
            icon: const Icon(Icons.search),
          ),
          PopupMenuButton(
            itemBuilder: ((context) => <PopupMenuEntry>[
                  const PopupMenuItem(
                    value: 'Settings',
                    child: Text(
                      'Settings',
                    ),
                  ),
                ]),
          )
        ],
      ),
      body: Column(
        children: [
          Container(
            color: Colors.purple[600],
            child: Column(children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [],
                  ),
                  IconButton(
                    onPressed: (() {
                      print('weather');
                    }),
                    icon: const Icon(
                      Icons.cloud_circle,
                    ),
                  )
                ],
              ),
            ]),
          ),
          Column(
            children: [
              DefaultTabController(
                length: 3,
                initialIndex: 0,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: const [
                    TabBar(
                      labelColor: Colors.blue,
                      unselectedLabelColor: Colors.black,
                      tabs: [
                        Tab(
                          text: 'Today',
                        ),
                        Tab(
                          text: 'Tommorrow',
                        ),
                        Tab(
                          text: 'Later',
                        ),
                      ],
                    ),
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
