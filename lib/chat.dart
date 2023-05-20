import 'package:flutter/material.dart';
import 'package:flutter_application_1/main.dart';
import 'package:flutter_application_1/whatsapp.dart';

class chat1 extends StatelessWidget{
  final String name;
 const chat1({Key?  key,required this.name}): super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:PreferredSize(
        preferredSize: Size.fromHeight(100.0),
         child: AppBar(
        title:Text(name),backgroundColor: Color.fromARGB(255, 0, 135, 5),
      ),
      
      ),
      body: SafeArea(
        child:Container(
           
           
        child: Column(
            children:[ 
              
            
            const TextField(

              decoration : InputDecoration(
              border :OutlineInputBorder(),
              hintText : 'Type something',
              ),
            ),IconButton(onPressed:() {
              Navigator.of(context).pop();
            }, icon:Icon(Icons.mic),)
            
            ],
         ),
       ),
      ),
    );
  
  }
}