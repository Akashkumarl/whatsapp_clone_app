import 'package:flutter/material.dart';
import 'package:flutter_application_1/chat.dart';

class whatsapp_1 extends StatelessWidget {
  const whatsapp_1({Key?  key}): super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(100.0),
         child: AppBar(
        title: const Text('Whatsapp'),backgroundColor: Color.fromARGB(255, 0, 135, 5),
      ),
      ),
      body: SafeArea(
        child: ListView.separated(
          itemBuilder: (ctx,index) {
            return ListTile(
              title : Text('Person $index'),
              subtitle :Text('message $index'),
              leading: CircleAvatar(backgroundColor: Color.fromARGB(255, 4, 202, 80),radius: 30,),
              trailing: Text('1$index:00 pm'),
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(builder: (ctx){
                  return chat1(name:'Person $index');
                }));
              },
            );
          },
          separatorBuilder: (ctx, index){
            return Divider();
          },
          itemCount: 30,
        ),
      ),
    );
  }
}