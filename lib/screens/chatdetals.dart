import 'package:flutter/material.dart';


class ChatDetails extends StatelessWidget {
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
      body: Container(),
    );
  }
}

class ChatMessage {
  String messageContent;
  String messageType;
  ChatMessage ({
    required this.messageContent,
    required this.messageType,
  });
}
