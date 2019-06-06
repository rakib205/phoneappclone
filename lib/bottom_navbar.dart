import 'package:flutter/material.dart';
import 'package:phone_app_clone/contacts_page.dart';
import 'package:phone_app_clone/favourite_page.dart';
import 'package:phone_app_clone/recent_page.dart';


class BottomNavBar extends StatefulWidget {
  @override
  _BottomNavBarState createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {

  
  Widget screen = FavouritePage();

  int _selectedIndex = 0;
  void _onItemTapped (int index){
    setState(() {
      _selectedIndex = index;
      if(index==0){
        screen = FavouritePage();
        
        
      }
      else if(index==1){
        screen = Recentpage();
        
      }
      else{ 

        screen = ContactsPage();
        
      
      }
    });
  }

  
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      floatingActionButton: Padding(
        padding: EdgeInsets.only(bottom: 10,right: 10),
        child: FloatingActionButton(
         
         child:  Icon(Icons.dialpad),
         backgroundColor: Colors.deepPurpleAccent,
         onPressed: (){
           Scaffold.of(context).showSnackBar(SnackBar(
              content: Text('Dialpad button was clicked'),
              duration: Duration(milliseconds: 1000),
            ));
         }
              ),
      ),
      
      
      
      bottomNavigationBar: BottomNavigationBar(
         
          type: BottomNavigationBarType.fixed, 
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.star),
              title: Text("Favourites")
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.schedule),
              title: Text("Recent")
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.group),
              title: Text("Contacts")
            )
          ],
          unselectedFontSize: 14,
          selectedFontSize: 16,
          
          currentIndex: _selectedIndex,
          selectedItemColor: Colors.blueAccent,
          onTap: _onItemTapped,
          

          

      ),

      body: Column(
        children: <Widget>[
          SizedBox(height: 30,),
          Container(
            height: 75,
            child: Card(
              elevation: 2,
              margin: EdgeInsets.all(10),
              child: Padding(
                padding: const EdgeInsets.all(5.0),
                child: Row(
                  children: <Widget>[
                    IconButton(onPressed: (){
                      Scaffold.of(context).showSnackBar(SnackBar(
              content: Text('Search button was clicked'),
              duration: Duration(milliseconds: 1000),
            ));
                    }, icon: Icon(Icons.search,color: Colors.grey[800],),),
                    Expanded(child: Text('Search contacts & places',style: TextStyle(fontSize: 16),)),
                    IconButton(onPressed: (){
                      Scaffold.of(context).showSnackBar(SnackBar(
              content: Text('Voice button was clicked'),
              duration: Duration(milliseconds: 1000),
            ));
                    }, icon: Icon(Icons.keyboard_voice,color: Colors.grey[800]),),
                    IconButton(onPressed: (){
                      Scaffold.of(context).showSnackBar(SnackBar(
              content: Text('More button was clicked'),
              duration: Duration(milliseconds: 1000),
            ));
                    }, icon: Icon(Icons.more_vert,color: Colors.grey[800]),),
                  ],
                ),
              ),
            ) ,
          ),

          screen,


          


        ],
      ),
      
      
    );
  }
}




