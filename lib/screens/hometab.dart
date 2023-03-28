import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
// import 'package:home_tab/models/chatsusers.dart';

class MyHomeTab extends StatelessWidget {
  const MyHomeTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // ?added backgroudn color on the navigation bar
        backgroundColor: const Color(0xff0F75BC),
        title: Center(
          child: SizedBox(
            width: MediaQuery.of(context).size.width * .5,
            child: TextField(
              //! ive made a few changes on the input... adhere to the theme and the colors.
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
                fillColor: Colors.white.withOpacity(.5),
                contentPadding: const EdgeInsets.all(8.0),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(16),
                  borderSide: BorderSide(color: Colors.grey.shade400),
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
                  //*!exported svg */
                  //**
                  //@TODO export icons here is a sample */
                  icon: SvgPicture.asset('assets/images/home.svg',
                      semanticsLabel: 'Acme Logo'),
                  label: const Text('Home'),
                ),
              const NavigationRailDestination(
                  padding: EdgeInsets.only(top: 50),
                  icon: Icon(Icons.calendar_month_outlined),
                  label: Text('Calendar'),
                ),
               const NavigationRailDestination(
                  padding: EdgeInsets.only(top: 50),
                  icon: Icon(Icons.chat_rounded),
                  label: Text('Chats'),
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
                  // strokeAlign: BorderSide.strokeAlignOutside,
                ),
              ),
              alignment: Alignment.topLeft,
              padding: const EdgeInsets.only(left: 5),
              child: Column(
                children: [
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
                        // strokeAlign: BorderSide.strokeAlignOutside,
                      ),
                    ),
                    child: ListTile(
                      title: Text("Hon. Babu Owino"),
                      leading: CircleAvatar(),
                      subtitle: Text('Phasellus vitae magna varius'),
                      trailing: Text('1:55 AM',style: Theme.of(context).textTheme.caption,),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.grey.withOpacity(0.2),
                  width: 2,
                  style: BorderStyle.solid,
                  // strokeAlign: BorderSide.strokeAlignOutside,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
