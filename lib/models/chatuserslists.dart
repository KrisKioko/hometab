import 'package:flutter/material.dart';

import '../widgets/conversationList.dart';



class ChatUsers {
  String name;
  String messageText;
  String image;
  String time;
  ChatUsers({required this.name, required this.messageText, required this.image, required this.time});
}


class ChatPage extends StatefulWidget {
  const ChatPage({super.key});


  @override
  State<ChatPage> createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  List<ChatUsers> chatUsers = [
    ChatUsers(name: 'Babu Owino', messageText: 'Phasellus vitae magna varius', image: 'assets/images/avatar.png', time: '1.55AM'),
    ChatUsers(name: 'Babu Owino', messageText: 'Phasellus vitae magna varius', image: 'assets/images/avatar.png', time: '1.55AM'),
    ChatUsers(name: 'Babu Owino', messageText: 'Phasellus vitae magna varius', image: 'assets/images/avatar.png', time: '1.55AM'),
    ChatUsers(name: 'Babu Owino', messageText: 'Phasellus vitae magna varius', image: 'assets/images/avatar.png', time: '1.55AM'),
    ChatUsers(name: 'Babu Owino', messageText: 'Phasellus vitae magna varius', image: 'assets/images/avatar.png', time: '1.55AM'),
    ChatUsers(name: 'Babu Owino', messageText: 'Phasellus vitae magna varius', image: 'assets/images/avatar.png', time: '1.55AM'),
    ChatUsers(name: 'Babu Owino', messageText: 'Phasellus vitae magna varius', image: 'assets/images/avatar.png', time: '1.55AM'),
    ChatUsers(name: 'Babu Owino', messageText: 'Phasellus vitae magna varius', image: 'assets/images/avatar.png', time: '1.55AM'),
    ChatUsers(name: 'Babu Owino', messageText: 'Phasellus vitae magna varius', image: 'assets/images/avatar.png', time: '1.55AM'),
    ChatUsers(name: 'Babu Owino', messageText: 'Phasellus vitae magna varius', image: 'assets/images/avatar.png', time: '1.55AM'),
    ChatUsers(name: 'Babu Owino', messageText: 'Phasellus vitae magna varius', image: 'assets/images/avatar.png', time: '1.55AM'),
    ChatUsers(name: 'Babu Owino', messageText: 'Phasellus vitae magna varius', image: 'assets/images/avatar.png', time: '1.55AM'),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: chatUsers.length,
      shrinkWrap: true,
      padding: const EdgeInsets.all(5.0),
      physics: const NeverScrollableScrollPhysics(),
      itemBuilder: ((context, index) {
        return ConversationList(
          name: chatUsers[index].name,
          messageText: chatUsers[index].messageText,
          image: chatUsers[index].image,
          time: chatUsers[index].time,
          isMessageRead: (index == 0 || index == 3)?true: false,
        );
      }),
    );
  }
}
/* ListView.builder(
          itemCount: chatUsers.length,
          shrinkWrap: true,
          padding: EdgeInsets.only(top: 16),
          physics: NeverScrollableScrollPhysics(),
          itemBuilder: (context, index) {
            return ConversationList(
              name: chatUsers[index].name,
              messageText: chatUsers[index].messageText,
              image: chatUsers[index].image,
              time: chatUsers[index].image,
              isMessageRead: (index == 0 || index == 3)?true: false,
              );
          },
        ),



 */