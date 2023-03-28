// ignore: file_names
// ignore_for_file: file_names, duplicate_ignore, must_be_immutable, use_key_in_widget_constructors, library_private_types_in_public_api

import 'package:flutter/material.dart';


class ConversationList extends StatefulWidget{
  String name;
  String messageText;
  String image;
  String time;
  bool isMessageRead;
  ConversationList({required this.name, required this.messageText, required this.image, required this.time, required this.isMessageRead});


  @override
  State<ConversationList> createState() => _ConversationList();
}

class _ConversationList extends State<ConversationList> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){},
      child: Container(
        padding: const EdgeInsets.only(left: 16,right: 16,top: 10,bottom: 10),
        child: Row(
          children: <Widget>[
            Expanded(
              child: Row(
                children: <Widget>[
                  const CircleAvatar(
                    backgroundImage: AssetImage('asset/images/avatar.png'),
                    maxRadius: 30,
                  ),

                  const SizedBox(width: 16,),

                  Expanded(
                    child: Container(
                      color: Colors.transparent,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            widget.name,
                            style: const TextStyle(fontSize: 16),
                          ),

                          const SizedBox(height: 6,),

                          Text(
                            widget.messageText,
                            style: TextStyle(
                              fontSize: 13,
                              color: Colors.grey.shade600,
                              fontWeight: widget.isMessageRead?FontWeight.bold:FontWeight.normal,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Text(
              widget.time,
              style: TextStyle(
                fontSize: 12,
                fontWeight: widget.isMessageRead?FontWeight.bold:FontWeight.normal,
            ),
          ),
          ],
        ),
      ),
    );
  }
}