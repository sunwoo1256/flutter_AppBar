import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'AppBar',
      theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.red),
          appBarTheme: const AppBarTheme(
            backgroundColor: Colors.red,
          )),
      home: const MyPage(),
    );
  }
}

class MyPage extends StatelessWidget {
  const MyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Appbar icon menu'),
        centerTitle: true,
        elevation: 0.0,
        actions: [
          IconButton(
              onPressed: () {
                print('shopping_cart botton is clicked');
              },
              icon: const Icon(Icons.shopping_cart)),
          IconButton(
              onPressed: () {
                print('search botton is clicked');
              },
              icon: const Icon(Icons.search)),
        ],
      ),
      drawer: Drawer(
        //DrawerHeader의 자동 생성되는 bottom border 없애기
        child: Theme(
          data: ThemeData(
            dividerColor: Colors.transparent,
            dividerTheme: const DividerThemeData(
              color: Colors.transparent,
            ),
          ),
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              UserAccountsDrawerHeader(
                currentAccountPicture: const CircleAvatar(
                  backgroundImage: AssetImage('assets/백준 사진.png'),
                ),
                otherAccountsPictures: const [
                  CircleAvatar(
                    backgroundImage: AssetImage('assets/티스토리 사진 1.png'),
                  ),
                  // CircleAvatar(
                  //   backgroundImage: AssetImage('assets/티스토리 사진 1.png'),
                  // ),
                ],
                accountName: const Text('sunwoo'),
                accountEmail: const Text('sunwooooooo'),
                onDetailsPressed: () {
                  print('arrow is clicked');
                },
                decoration: BoxDecoration(
                  color: Colors.red[200],
                  borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(40.0),
                      bottomRight: Radius.circular(40.0)),
                ),
              ),
              ListTile(
                leading: Icon(
                  Icons.home,
                  color: Colors.grey[850],
                ),
                title: const Text('Home'),
                onTap: () {
                  print('home is clicked');
                },
                trailing: const Icon(Icons.add),
              ),
              ListTile(
                leading: Icon(
                  Icons.settings,
                  color: Colors.grey[850],
                ),
                title: const Text('Setting'),
                onTap: () {
                  print('settings is clicked');
                },
                trailing: const Icon(Icons.add),
              ),
              ListTile(
                leading: Icon(
                  Icons.question_answer,
                  color: Colors.grey[850],
                ),
                title: const Text('Q&A'),
                onTap: () {
                  print('Q&A is clicked');
                },
                trailing: const Icon(Icons.add),
              )
            ],
          ),
        ),
      ),
    );
  }
}
