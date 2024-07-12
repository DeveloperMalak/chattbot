import 'package:flutter/material.dart';
import '../Widgets/dropdownbutton.dart';
import '../Widgets/text widget.dart';
import '../constants/constants.dart';
class Services{
  static Future<void> showModalSheet({required BuildContext context})async{//here this is a function which we will use for ou   program

    await showModalBottomSheet(
        shape: RoundedRectangleBorder(
            borderRadius:BorderRadius.vertical(
                top:Radius.circular(20)
            )
        ),

        backgroundColor:scaffoldBackgroundColor,
        context: context,
        builder: (BuildContext context) {
      return const Padding(
        padding: EdgeInsets.all(18.0),
        child: Row(
          mainAxisAlignment:MainAxisAlignment.center,
            children:[
              Flexible(
                  child:TextWidget(label:"chosenModal",color:Colors.white,fontSize:16)
              ),
              Flexible(
                flex:2,
                child:ModelDropDownWidget()
              )
            ]
        ),
      );
    });
  }
}