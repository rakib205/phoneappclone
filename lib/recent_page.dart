import 'package:flutter/material.dart';

class Recentpage extends StatefulWidget {

  @override
  _RecentpageState createState() => _RecentpageState();
}

class _RecentpageState extends State<Recentpage> {
 

  @override
  Widget build(BuildContext context) {
    return Expanded(child:
      ListView.builder(
        itemCount: 30,
        itemBuilder: (BuildContext context, int index) {
        return Column(
          children: <Widget>[
            ListTile(
              leading: Container(
                height: 55,width:55,
                
                child: CircleAvatar(
                  backgroundColor: Colors.grey[300],
                  child: Text('R ',textAlign: TextAlign.center,style: TextStyle(fontSize: 28,),),),
              ),
              
                title: Text('User Name $index',style: TextStyle(fontSize: 16),),
                subtitle: Padding(
                  padding: const EdgeInsets.only(top: 4),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          Icon(Icons.call_made,size: 13,color: Colors.grey,),
                          Icon(Icons.call_received,size: 13,color: Colors.grey),
                          Text('Mobile, ${index+index} minutes ago',style: TextStyle(fontSize: 13),),
                        ],
                      ),
                      SizedBox(height: 3,),
                      Text('airtel',style: TextStyle(color: Colors.redAccent),)
                    ],
                  ),
                ),
                trailing: IconButton(icon: Icon(Icons.call,size: 25,), onPressed: () {
                  Scaffold.of(context).showSnackBar(SnackBar(
              content: Text('List item $index was clicked'),
              duration: Duration(milliseconds: 1000),
            ));
                },),
                onTap: (){
            Scaffold.of(context).showSnackBar(SnackBar(
              content: Text('List item $index was clicked'),
              duration: Duration(milliseconds: 1000),
            ));
          }
                
            ),
            SizedBox(height: 30,)
          ],
        );
        
       },
      ),
     );
  }
}