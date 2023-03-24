import 'package:flutter/material.dart';
import 'package:home_tab/widgets/conversationlists.dart';



class ChatUsers {
  String name;
  String message;
  String image;
  String time;

  ChatUsers({
    required this.name,
    required this.message,
    required this.image,
    required this.time,
  });
}

class ChatPage extends StatefulWidget {
  const ChatPage({super.key});

  @override
  State<ChatPage> createState() => _ChatPage();
}


class _ChatPage extends State<ChatPage> {
  final List<ChatUsers> chatUsers = [
    ChatUsers(name: 'Babu Owino', message: 'Phasellus vitae magna varius', image: 'assets/images/avatar.png', time: '1.55AM'),
    ChatUsers(name: 'Babu Owino', message: 'Phasellus vitae magna varius', image: 'assets/images/avatar.png', time: '1.55AM'),
    ChatUsers(name: 'Babu Owino', message: 'Phasellus vitae magna varius', image: 'assets/images/avatar.png', time: '1.55AM'),
    ChatUsers(name: 'Babu Owino', message: 'Phasellus vitae magna varius', image: 'assets/images/avatar.png', time: '1.55AM'),
    ChatUsers(name: 'Babu Owino', message: 'Phasellus vitae magna varius', image: 'assets/images/avatar.png', time: '1.55AM'),
    ChatUsers(name: 'Babu Owino', message: 'Phasellus vitae magna varius', image: 'assets/images/avatar.png', time: '1.55AM'),
    ChatUsers(name: 'Babu Owino', message: 'Phasellus vitae magna varius', image: 'assets/images/avatar.png', time: '1.55AM'),
    ChatUsers(name: 'Babu Owino', message: 'Phasellus vitae magna varius', image: 'assets/images/avatar.png', time: '1.55AM'),
    ChatUsers(name: 'Babu Owino', message: 'Phasellus vitae magna varius', image: 'assets/images/avatar.png', time: '1.55AM'),
    ChatUsers(name: 'Babu Owino', message: 'Phasellus vitae magna varius', image: 'assets/images/avatar.png', time: '1.55AM'),
    ChatUsers(name: 'Babu Owino', message: 'Phasellus vitae magna varius', image: 'assets/images/avatar.png', time: '1.55AM'),
    ChatUsers(name: 'Babu Owino', message: 'Phasellus vitae magna varius', image: 'assets/images/avatar.png', time: '1.55AM'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          ListView.builder(
            itemCount: chatUsers.length,
            shrinkWrap: true,
            padding: const EdgeInsets.only(top: 10),
            physics: const NeverScrollableScrollPhysics(),
            itemBuilder: (context, index) {
              return ConversationList(
                name: chatUsers[index].name,
                message: chatUsers[index].message,
                image: chatUsers[index].image,
                time: chatUsers[index].time,
                isMessageRead: (index == 0 || index == 3)?true: false,  
              );
            },
          ),
        ],
      ),
    );
  }
}