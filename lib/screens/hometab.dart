import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:home_tab/models/chatsusers.dart';
import 'package:home_tab/screens/chatdetals.dart';

class MyHomeTab extends StatelessWidget {
  const MyHomeTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff0F75BC),
        title: Center(
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: SizedBox(
              width: 400,
              height: 30,
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Search',
                  hintStyle:
                      const TextStyle(
                        color: Colors.black54  ,
                        fontSize: 14,
                      ),
                  prefixIcon: const Icon(
                    Icons.search,
                    color: Colors.black54,
                    size: 16,
                  ),
                  filled: true,
                  fillColor: Colors.white.withOpacity(0.5),
                  contentPadding: const EdgeInsets.all(8.0),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(16),
                    borderSide: BorderSide(color: Colors.grey.shade400),
                  ),
                ),
              ),
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
              destinations: [
                NavigationRailDestination(
                  padding: const EdgeInsets.only(top: 50),
                  icon: SvgPicture.asset(
                    'assets/images/Group 55.svg',
                  ),
                  label: const Text('Home'),
                ),
                NavigationRailDestination(
                  padding: const EdgeInsets.only(top: 50),
                  icon: SvgPicture.asset(
                    'assets/images/Group 56.svg',

                  ),
                  label: const Text('Calendar'),
                ),
                NavigationRailDestination(
                  padding: const EdgeInsets.only(top: 50),
                  icon: SvgPicture.asset(
                    'assets/images/Group 55.svg',
                  ),
                  label: const Text('Chats'),
                ),
              ],
              selectedIndex: 2,
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
                  /* strokeAlign: BorderSide.strokeAlignOutside, */
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
                          /* strokeAlign: BorderSide.strokeAlignOutside, */
                        ),
                      ),
                      child: ListTile(
                        title: Text('Hon. Babu Owino'),
                        leading: CircleAvatar(),
                        subtitle: Text('Phasellus vitae magna varius'),
                        trailing: Text(
                          '1.55 AM',
                          style: Theme.of(context).textTheme.bodySmall,
                          ),
                        /* width: MediaQuery.of(context).size.width,
                        height: MediaQuery.of(context).size.height,
                        child: const ChatPage(), */
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
                  /* strokeAlign: BorderSide.strokeAlignOutside, */
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
