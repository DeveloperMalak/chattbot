import 'package:chatgpt_course/Widgets/text%20widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../constants/constants.dart';
import '../services/assets_manager.dart';
class ChatWidget extends StatelessWidget {
  const ChatWidget({Key? key, required this.msg, required this.chatIndex}) : super(key: key);
   final String msg;
   final int chatIndex;
  @override
  Widget build(BuildContext context) {
    return Column(
      children:[
        Material(
          color:chatIndex==0?scaffoldBackgroundColor:cardColor,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              crossAxisAlignment:CrossAxisAlignment.start,
              children: [
                Image.asset(chatIndex==0?AssetsManager.userImage:AssetsManager.botImage,height:30,width:30),
                SizedBox(width:8),
                Expanded(
                    child: TextWidget(label: msg.toString(),color:Colors.white),
                ),
                chatIndex==0? const SizedBox.shrink():
                Row(
                  mainAxisAlignment:MainAxisAlignment.end,
                  mainAxisSize:MainAxisSize.min,
                  children:[
                    Icon(Icons.thumb_up_outlined,color:Colors.white),
                    SizedBox(width:5),
                    Icon(Icons.thumb_down_outlined,color:Colors.white)
                  ]
                )
              ],
            ),
          ),
        )
      ]
    );
  }
}
