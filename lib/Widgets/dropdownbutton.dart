import 'package:flutter/material.dart';

import '../constants/constants.dart';
class ModelDropDownWidget extends StatefulWidget {
  const ModelDropDownWidget({Key? key}) : super(key: key);
  @override
  State<ModelDropDownWidget> createState() => _ModelDropDownWidgetState();
}
class _ModelDropDownWidgetState extends State<ModelDropDownWidget> {
  String currentModal="Modal1";
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: DropdownButton(
          iconEnabledColor:Colors.white,
        dropdownColor:scaffoldBackgroundColor,
        items:getModelsItem,
          onChanged: (value){
        setState((){
         currentModal=value.toString();
        });
          }),
    );
  }
}
