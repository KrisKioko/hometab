import 'package:flutter/material.dart';
import 'package:home_tab/models/chatsusers.dart';
import 'package:home_tab/screens/chatdetals.dart';

class MyHomeTab extends StatelessWidget {
  const MyHomeTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: TextField(
          decoration: InputDecoration(
            hintText: 'Search',
            hintStyle:
                TextStyle(color: Colors.greenAccent.shade200, fontSize: 14),
            prefixIcon: Icon(
              Icons.search,
              color: Colors.grey.shade500,
              size: 16,
            ),
            filled: true,
            fillColor: Colors.greenAccent.shade100,
            contentPadding: const EdgeInsets.all(8.0),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(16),
              borderSide: BorderSide(color: Colors.grey.shade400),
            ),
          ),
        ),
        actions: [
          const Icon(Icons.more_horiz_rounded),
          IconButton(
            onPressed: () {},
            icon: const CircleAvatar(
              backgroundImage: AssetImage('assets/images/avatar.png'),
              maxRadius: 30,
            ),
          )
        ],
      ),
      body: SafeArea(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            NavigationRail(
              extended: false,
              destinations: const [
                NavigationRailDestination(
                  padding: EdgeInsets.only(top: 50),
                  icon: Icon(Icons.home_filled),
                  label: Text('Home'),
                ),
                NavigationRailDestination(
                  padding: EdgeInsets.only(top: 50),
                  icon: Icon(Icons.calendar_month_outlined),
                  label: Text('Calendar'),
                ),
                NavigationRailDestination(
                  padding: EdgeInsets.only(top: 50),
                  icon: Icon(Icons.chat_rounded),
                  label: Text('Chats'),
                ),
              ],
              selectedIndex: 0,
              onDestinationSelected: (value) {},
            ),
            Container(
              width: MediaQuery.of(context).size.width * 0.40,
              height: MediaQuery.of(context).size.height,
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.grey.withOpacity(0.3),
                  width: 2,
                  style: BorderStyle.solid,
                  strokeAlign: BorderSide.strokeAlignOutside,
                ),
              ),
              alignment: Alignment.topLeft,
              padding: const EdgeInsets.only(left: 5),
              child: SingleChildScrollView(
                child: Column(
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text(
                          'Chats',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Icon(
                          Icons.filter_alt_rounded,
                          size: 20,
                          color: Colors.black,
                        ),
                      ],
                    ),
                    Container(
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.grey.withOpacity(0.2),
                          width: 2,
                          style: BorderStyle.solid,
                          strokeAlign: BorderSide.strokeAlignOutside,
                        ),
                      ),
                      child: SizedBox(
                        width: MediaQuery.of(context).size.width,
                        height: MediaQuery.of(context).size.height,
                        child: ChatPage(),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.grey.withOpacity(0.2),
                  width: 2,
                  style: BorderStyle.solid,
                  strokeAlign: BorderSide.strokeAlignOutside,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
