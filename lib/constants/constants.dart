import 'package:flutter/material.dart';

import '../Widgets/text widget.dart';
Color scaffoldBackgroundColor = const Color(0xFF343541);
Color cardColor = const Color(0xFF444654);
List<String> models=[
  'model1',
  'model2',
'models3'
  ,'model4'
];
List<DropdownMenuItem<String>>? get getModelsItem{
  List<DropdownMenuItem<String>>? modelsItems=
    List<DropdownMenuItem<String>>.generate(
    models.length, (index)=>DropdownMenuItem(
       value:models[index],
      child: TextWidget(
        label:models[index],
        fontSize:15,

      ),
    ));
  return modelsItems;
}

final chatMessages=[
{"msg":"hello how are you",
"chatindex":0
},
  {"msg":"hello i am chatGpt how can i assist you",
  "chatindex":1},
  {"msg":"what is flutter",
  "chatindex":0},
  {"msg":"flutter is opern source mobile application developmnt you can develop hybrdi app in fultter whu ist beautiful ui  and so on",
  "chatindex":1},
  {"msg":"what is dart",
    "chatindex":0},
  {"msg":"flutter is opern source mobile application developmnt you can develop hybrdi app in fultter whu ist beautiful ui  and so on",
    "chatindex":1},
  {"msg":"what is python",
    "chatindex":0},
  {"msg":"every programing langauge is it scope so we dont need to  take it ease",
    "chatindex":1},
  {"msg":"what is flutter",
    "chatindex":0},
  {"msg":"flutter is opern source mobile application developmnt you can develop hybrdi app in fultter whu ist beautiful ui  and so on",
    "chatindex":1},
  {"msg":"what is flutter",
    "chatindex":0},
  {"msg":"flutter is opern source mobile application developmnt you can develop hybrdi app in fultter whu ist beautiful ui  and so on",
    "chatindex":1},
  {"msg":"what is flutter",
    "chatindex":0},
  {"msg":"flutter now a days we dont you can develop hybrdi app in fultter whu ist beautiful ui  and so on",
    "chatindex":1},
  {"msg":"what is flutter",
    "chatindex":0},
  {"msg":"flutter is opern source mobile application developmnt you can develop hybrdi app in fultter whu ist beautiful ui  and so on",
    "chatindex":1},
  {"msg":"what is flutter",
    "chatindex":0},
  {"msg":"flutter is opern source mobile application developmnt you can develop hybrdi app in fultter whu ist beautiful ui  and so on",
    "chatindex":1}

];