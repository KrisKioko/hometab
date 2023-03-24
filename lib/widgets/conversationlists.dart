import 'package:flutter/material.dart';
import 'package:home_tab/screens/chatdetals.dart';



// ignore: must_be_immutable
class ConversationList extends StatefulWidget{


  String name;
  String message;
  String image;
  String time;
  bool isMessageRead;

  // ignore: use_key_in_widget_constructors
  ConversationList({ 
    required this.name,
    required this.message,
    required this.image,
    required this.time,
    required this.isMessageRead,
  });

  @override
  State<ConversationList> createState() => _ConversationList();
}


class _ConversationList extends State<ConversationList> {

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(
          builder: (context) {
            return ChatDetailPage();
          }
          ),
        );
      },
      child: Container(
        padding: const EdgeInsets.only(left: 16,right: 16,top: 10,bottom: 10),
        child: Row(
          children: [
            Row(
              children: [
                const CircleAvatar(
                  backgroundImage: AssetImage('assets/images/avatar.png'),
                  maxRadius: 30,
                ),

                const SizedBox(width: 16),

                Container(
                  color: Colors.transparent,
                  child: Column(
                    children: [
                      Text(
                        widget.name,
                        style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),

                      const SizedBox(height: 5),

                      Text(
                        widget.message,
                        style: TextStyle(
                          fontSize: 13,
                          color: widget.isMessageRead ? Colors.grey.shade600 : Colors.blue,
                          fontWeight: widget.isMessageRead ? FontWeight.bold: FontWeight.w300,
                        ),
                      )
                    ]),
                )
              ],
            ),
            Text(
              widget.time,
              style: TextStyle(
                fontSize: 12,
                fontWeight: widget.isMessageRead?FontWeight.bold: FontWeight.w300,
              ),
            )
          ],
        ),
      ),
    );
  }
}