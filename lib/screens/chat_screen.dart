import 'package:chatgpt_course/constants/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import '../Widgets/chat screen.dart';
import '../Widgets/text widget.dart';
import '../services/assets_manager.dart';
import '../services/services.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({super.key});
  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  final bool _isTyping=true;// is varible for chking our states
  late TextEditingController _textController;
  //we have dmade the instance of text Controler class
  void initState(){
    _textController=TextEditingController();
    super.initState();
  }
  void Dispose(){
    TextEditingController().dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        actions:[
          IconButton(
            color:Colors.white,
            icon:Icon(Icons.more_vert),
            onPressed: () async{
             await Services.showModalSheet(context: context);
            },
          )
        ],
        leading:Padding(
          padding: const EdgeInsets.all(8.0),
          child: Image.asset(AssetsManager.openaiLogo),
        ),
        centerTitle:true,
        title:Text('ChatBot',style: TextStyle(color:Colors.white))
      ),
      body: SafeArea(
        child:Column(
          children:[
            Flexible(
              child: ListView.builder(
                itemCount:chatMessages.length,
                  itemBuilder: (context,  index){
                return ChatWidget(msg:chatMessages[index]["msg"].toString(),
                  chatIndex:int.parse(chatMessages[index]['chatindex'].toString()));
              }),
            ),
            if(_isTyping)...[
              SpinKitThreeBounce(
                color:Colors.white,
                size:18,
              ),
              SizedBox(height:15),
              Material(
                color:cardColor,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children:[
                      Expanded(
                        child: TextField(
                            style:TextStyle(color:Colors.white),
                            controller:_textController,
                            cursorColor: Color(0x325A96FF),
                            onSubmitted:(value){
                            },
                            decoration:InputDecoration.collapsed(hintText: 'Hello how can i assist you',hintStyle:TextStyle(color:Colors.grey))
                        ),),
                      IconButton(icon:Icon(Icons.send,color:Colors.green),
                          onPressed:(){
                          }
                      ),

                    ],
                  ),
                ),
              )
  ],

          ]
        )
      )
    );
  }
}