import 'package:flutter/material.dart';

class FavouritePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
          child: GridView.builder(
            
                    itemCount: 20,
                    
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2),
                    itemBuilder: (BuildContext context, int index) {
                      //if (index < 50)
                      return Padding(
                        padding: const EdgeInsets.all(2.0),
                        child: Container(
                            
                            
                            child: Center(
                              child: GridTile(
                                
                                
                                
                                footer: Container(
                                  alignment: Alignment.center,
                                  height: 50,
                                  color: Colors.grey[100],
                                  padding: EdgeInsets.all(10),
                                  child: Row(
                                    // mainAxisAlignment: MainAxisAlignment.center,
                                    // crossAxisAlignment: CrossAxisAlignment.center,
                                    children: <Widget>[
                                      Text('User Name $index'),
                                      Expanded(child: Text(''),),
                                      IconButton(
                                      icon: Icon(Icons.star), 
                                      onPressed: () {},

                                      ),
                                      

                                  ],),
                                ),
                                header: Row(
                                   mainAxisAlignment: MainAxisAlignment.end,
                                   crossAxisAlignment: CrossAxisAlignment.center,
                                  children: <Widget>[
                                    
                                    IconButton(icon: Icon(Icons.more_vert), onPressed: () {
                                      Scaffold.of(context).showSnackBar(SnackBar(
                                        content: Text('Item $index was clicked'),
                                        duration: Duration(milliseconds: 1000),
                                      ));
                                    },),
                                  ],
                                ),
                                
                                child: Center(child: Text('R',style: TextStyle(fontSize: 40,fontWeight: FontWeight.bold),))
                              ),
                            ),
                            
                            color: Colors.grey[200],
                            margin: EdgeInsets.all(1.0),
                          ),
                      );
                        
                    },
                    
                  ),
    );
  }
}