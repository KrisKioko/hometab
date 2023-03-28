import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../components/settingListtile.dart';
import 'chatdetals.dart';

// ignore: use_key_in_widget_constructors
class MyHomeTab extends StatelessWidget {

  //list of messages
  List<ChatMessage> messages = [
    ChatMessage(
        messageContent:
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit',
        messageType: 'receiver'),
    ChatMessage(
        messageContent:
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit',
        messageType: 'sender'),
    ChatMessage(
        messageContent:
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit',
        messageType: 'sender'),
    ChatMessage(
        messageContent:
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit',
        messageType: 'receiver'),
    ChatMessage(
        messageContent:
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit',
        messageType: 'receiver'),
    ChatMessage(
        messageContent:
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit',
        messageType: 'Sender'),
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightBlue,
        title: Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: SizedBox(
              width: 400,
              height: 30,
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Search',
                  hintStyle: const TextStyle(
                    color: Colors.black54,
                    fontSize: 14,
                  ),
                  prefixIcon: const Icon(
                    Icons.search,
                    color: Colors.black54,
                    size: 16,
                  ),
                  filled: true,
                  fillColor: Colors.grey.shade100,
                  contentPadding: const EdgeInsets.all(8),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: BorderSide(color: Colors.grey.shade100),
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
          ),
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
                width: MediaQuery.of(context).size.width * 0.35,
                height: MediaQuery.of(context).size.height,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.grey.withOpacity(0.3),
                    width: 2,
                    style: BorderStyle.solid,
                  ),
                ),
                alignment: Alignment.topLeft,
                padding: const EdgeInsets.only(left: 5),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            'Chats',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          IconButton(
                            icon: SvgPicture.asset('assets/images/filter.svg'),
                            color: Colors.black,
                            onPressed: () {},
                          ),
                        ],
                      ),
                      const Divider(),
                      messagesListTile(
                        context: context,
                        title: 'Hon. Babu Owino',
                        subtitle: 'Phasellus vitae magna varius',
                        leading: const CircleAvatar(
                            backgroundImage:
                                AssetImage('assets/images/avatar.png')),
                        trailing: '1.55 AM',
                      ),
                      messagesListTile(
                        context: context,
                        title: 'Health Committee',
                        subtitle: 'Phasellus vitae magna varius',
                        leading: const CircleAvatar(
                            backgroundImage:
                                AssetImage('assets/images/avatar.png')),
                        trailing: '10.05 PM',
                      ),
                      messagesListTile(
                        context: context,
                        title: 'Hon. Wakili Edward',
                        subtitle: 'Phasellus vitae magna varius',
                        leading: const CircleAvatar(
                            backgroundImage:
                                AssetImage('assets/images/avatar.png')),
                        trailing: 'Yesterday',
                      ),
                      messagesListTile(
                        context: context,
                        title: 'Hon. Alice Wambui',
                        subtitle: 'Phasellus vitae magna varius',
                        leading: const CircleAvatar(
                            backgroundImage:
                                AssetImage('assets/images/avatar.png')),
                        trailing: 'Yesterday',
                      ),
                      messagesListTile(
                        context: context,
                        title: 'Hon. David Pkosing',
                        subtitle: 'Phasellus vitae magna varius',
                        leading: const CircleAvatar(
                            backgroundImage:
                                AssetImage('assets/images/avatar.png')),
                        trailing: 'Yesterday',
                      ),
                      messagesListTile(
                        context: context,
                        title: 'Hon. Nelson Koech',
                        subtitle: 'Phasellus vitae magna varius',
                        leading: const CircleAvatar(
                            backgroundImage:
                                AssetImage('assets/images/avatar.png')),
                        trailing: 'Yesterday',
                      ),
                      messagesListTile(
                        context: context,
                        title: 'Hon. Eve Akinyi Obara',
                        subtitle: 'Phasellus vitae magna varius',
                        leading: const CircleAvatar(
                            backgroundImage:
                                AssetImage('assets/images/avatar.png')),
                        trailing: '12/14/22',
                      ),
                      messagesListTile(
                        context: context,
                        title: 'Hon.Babu Owino',
                        subtitle: 'Phasellus vitae magna varius',
                        leading: const CircleAvatar(
                            backgroundImage:
                                AssetImage('assets/images/avatar.png')),
                        trailing: '12/14/22',
                      ),
                      messagesListTile(
                        context: context,
                        title: 'Hon.Babu Owino',
                        subtitle: 'Phasellus vitae magna varius',
                        leading: const CircleAvatar(
                            backgroundImage:
                                AssetImage('assets/images/avatar.png')),
                        trailing: '12/14/22',
                      ),
                      messagesListTile(
                        context: context,
                        title: 'Hon.Babu Owino',
                        subtitle: 'Phasellus vitae magna varius',
                        leading: const CircleAvatar(
                            backgroundImage:
                                AssetImage('assets/images/avatar.png')),
                        trailing: '12/14/22',
                      ),
                      messagesListTile(
                        context: context,
                        title: 'Hon.Babu Owino',
                        subtitle: 'Phasellus vitae magna varius',
                        leading: const CircleAvatar(
                            backgroundImage:
                                AssetImage('assets/images/avatar.png')),
                        trailing: '12/14/22',
                      ),
                      messagesListTile(
                        context: context,
                        title: 'Hon.Babu Owino',
                        subtitle: 'Phasellus vitae magna varius',
                        leading: const CircleAvatar(
                            backgroundImage:
                                AssetImage('assets/images/avatar.png')),
                        trailing: '12/14/22',
                      ),
                      messagesListTile(
                        context: context,
                        title: 'Hon.Babu Owino',
                        subtitle: 'Phasellus vitae magna varius',
                        leading: const CircleAvatar(
                            backgroundImage:
                                AssetImage('assets/images/avatar.png')),
                        trailing: '12/14/22',
                      ),
                      messagesListTile(
                        context: context,
                        title: 'Hon.Babu Owino',
                        subtitle: 'Phasellus vitae magna varius',
                        leading: const CircleAvatar(
                          backgroundImage: AssetImage('assets/images/avatar.png')
                        ),
                        trailing: '12/14/22',
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width * 0.54,
                height: MediaQuery.of(context).size.height,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.grey.withOpacity(0.3),
                    width: 2,
                    style: BorderStyle.solid,
                  ),
                ),
                alignment: Alignment.topLeft,
                padding: const EdgeInsets.only(left: 5),
                child: SingleChildScrollView(
                  child: Stack(
                    children: [
                      ListView.builder(
                        itemCount: messages.length,
                        shrinkWrap: true,
                        padding: const EdgeInsets.only(top: 10, bottom: 10),
                        physics: const NeverScrollableScrollPhysics(),
                        itemBuilder: (context, index) {
                          return Container(
                            padding: const EdgeInsets.only(
                                left: 16, right: 16, top: 10, bottom: 10),
                            child: Align(
                              alignment: (messages[index].messageType == 'receiver' ? Alignment.topLeft : Alignment.topRight),
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: (messages[index].messageType == 'receiver' ? Colors.grey.shade200 : Colors.blue.shade200),
                                ),
                                padding: const EdgeInsets.all(16),
                                child: Text(
                                  messages[index].messageContent,
                                  style: const TextStyle(
                                    fontSize: 15,
                                  ),
                                ),
                              ),
                            ),
                          );
                        },
                      ),
                      Align(
                        alignment: Alignment.bottomLeft,
                        child: Container(
                          padding: const EdgeInsets.only(left: 10, bottom: 10, top: 10),
                          height: 60,
                          width: double.infinity,
                          color: Colors.white,
                          child: Row(
                            children: [
                              const SizedBox(width: 15),

                              const Expanded(
                                child: TextField(
                                  decoration: InputDecoration(
                                    hintText: 'Type a message',
                                    hintStyle: TextStyle(
                                      color: Colors.black54,
                                    ),
                                    border: InputBorder.none,
                                  ),
                                ),
                              ),

                              const SizedBox(width: 15),

                              FloatingActionButton(
                                onPressed: () {},
                                backgroundColor: Colors.white54,
                                elevation: 0,
                                child: const Icon(
                                  Icons.telegram_rounded,
                                  color: Colors.lightBlue,
                                  size: 30,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ]),
      ),
    );
  }
}
