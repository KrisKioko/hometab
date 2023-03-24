import 'package:flutter/material.dart';
import 'package:home_tab/models/chatmessage.dart';

class ChatDetails extends StatefulWidget {
  @override
  State<ChatDetails> createState() => _ChatDetails();
}

class _ChatDetails extends State<ChatDetails> {
  List<ChatMessage> messages = [
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
        messageType: 'receiver'),
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
        messageType: 'receiver'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        flexibleSpace: SafeArea(
          child: Container(
            padding: const EdgeInsets.only(right: 16),
            child: Row(
              children: [
                IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: const Icon(
                    Icons.arrow_back_ios_new_rounded,
                    color: Colors.black,
                  ),
                ),
                const SizedBox(width: 2),
                const CircleAvatar(
                  backgroundImage: AssetImage('assets/images.avatar.png'),
                  maxRadius: 20,
                ),
                const SizedBox(width: 15),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        'Babu Owino',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      const SizedBox(height: 6),
                      Text(
                        'Online',
                        style: TextStyle(
                          color: Colors.grey.shade600,
                          fontSize: 13,
                        ),
                      ),
                    ],
                  ),
                ),
                const Icon(
                  Icons.more_vert_rounded,
                  color: Colors.black54,
                ),
              ],
            ),
          ),
        ),
      ),
      body: Stack(
        children: [
          ListView.builder(
            itemCount: messages.length,
            shrinkWrap: true,
            padding: const EdgeInsets.only(top: 10, bottom: 10),
            physics: const NeverScrollableScrollPhysics(),
            itemBuilder: (context, index) {
              return Container(
                padding: const EdgeInsets.only(left: 16,right: 16,top: 10,bottom: 10),
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
                  GestureDetector(
                    onTap: () {},
                    child: Container(
                      height: 30,
                      width: 30,
                      decoration: BoxDecoration(
                        color: Colors.lightBlue,
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                  ),
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
                    backgroundColor: Colors.blue.shade500,
                    elevation: 0,
                    child: const Icon(
                      Icons.telegram_rounded,
                      color: Colors.white,
                      size: 18,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
