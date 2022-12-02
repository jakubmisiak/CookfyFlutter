import 'package:cookfy_flutter/views/favorites_page.dart';
import 'package:cookfy_flutter/views/following_users.dart';
import 'package:cookfy_flutter/views/home_page.dart';
import 'package:cookfy_flutter/views/hot_page.dart';
import 'package:cookfy_flutter/views/search_page.dart';
import 'package:cookfy_flutter/views/user_profile_page.dart';
import 'package:cookfy_flutter/views/your_comments_page.dart';
import 'package:cookfy_flutter/views/your_posts_page.dart';
import 'package:flutter/material.dart';
import 'package:cookfy_flutter/views/create_post.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int currentIndex = 0;
  final screens = [
    const HomePage(),
    const SearchPage(),
    const CreatePost(),
    const HotPage(),
    const UserProfilePage()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //automaticallyImplyLeading: false,
        centerTitle: true,
        title:
            Row(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
          Text("Cook", style: TextStyle(fontSize: 22)),
          Text("Fy", style: TextStyle(fontSize: 22, color: Colors.green)),
          
        ]),
        backgroundColor: Colors.transparent,
        elevation: 0.0,
      ),
      drawer: const NavigationDrawer(),
      body: IndexedStack(
        index: currentIndex,
        children: screens,
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: currentIndex,
        onTap: (index) => setState(() => currentIndex = index),
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: "Search"),
          BottomNavigationBarItem(icon: Icon(Icons.add), label: "Add"),
          BottomNavigationBarItem(
              icon: Icon(Icons.local_fire_department_sharp), label: "Hot"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
        ],
      ),
    );
  }
}

class NavigationDrawer extends StatelessWidget{
  const NavigationDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Drawer(
    child: SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            padding: EdgeInsets.only(
              top: MediaQuery.of(context).padding.top
            ),
          ),
          ListTile(
            leading: const Icon(Icons.visibility),
            title: const Text("Following"),
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (context) => const Following()));
            },
          ),
          ListTile(
            leading: const Icon(Icons.favorite),
            title: const Text("Favorites"),
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (context) => const Favorites()));
            },
          ),
          ListTile(
            leading: const Icon(Icons.person),
            title: const Text("Your Posts"),
            onTap: () {Navigator.of(context).push(MaterialPageRoute(builder: (context) => const YourPostsPage()));
            },
          ),
          ListTile(
            leading: const Icon(Icons.forum),
            title: const Text("Your comments"),
            onTap: () {Navigator.of(context).push(MaterialPageRoute(builder: (context) => const YourCommentsPage()));
            },
          ),
        ],
      ),
    ),
  );
}
