import 'package:flutter/material.dart';

class ContactsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
        flex: 10,
        child: ListView.builder(
        
        itemCount: 20,
        padding: EdgeInsets.only(left: 50),
        itemBuilder: (BuildContext context, int index) {
        return ListTile(
          leading: CircleAvatar(
            child: Text('A'),
          ),
          title: Text('User Name $index'),
          onTap: (){
            Scaffold.of(context).showSnackBar(SnackBar(
              content: Text('List item $index was clicked'),
              duration: Duration(milliseconds: 1000),
            ));
          },
        );
       },
      ),
    );
  }
}