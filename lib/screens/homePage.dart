import 'package:flutter/material.dart';
import 'package:flutter_application_3/screens/secondScreen.dart';







class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
          appBar: AppBar(
            title: Text('JAPAN.com'),
            leading: IconButton(
              icon:Icon(Icons.menu), 
              onPressed: (){},
              ),
      
            
              actions: <Widget>[
                IconButton(
                icon:Icon(Icons.search), 
                onPressed: (){},
              ),
                 
                 IconButton(
                icon:Icon(Icons.more_vert), 
                onPressed: (){},
              ),
      
              ],
              flexibleSpace: Image.asset(
                "assets/mount-fuji-sunrise-5k-zp.jpg",
                fit: BoxFit.cover,
              ),
    
              bottom: const TabBar(
                tabs: [
                  
                  Tab(icon: Icon(Icons.directions_car),
                      text: 'Car'),
                  Tab(icon: Icon(Icons.directions_transit),
                      text: 'Train'),
                  Tab(icon: Icon(Icons.directions_bike),
                      text: 'Bike'),
                  Tab(icon: Icon(Icons.airplane_ticket),
                      text: 'tickets'),
                ],
              ),
              elevation: 100.0,
                
                
    
          ),
          body:  TabBarView(
            children: [
              
              Icon(Icons.directions_car),
              Icon(Icons.directions_transit),
              Icon(Icons.directions_bike),
              tab1(),
              
              
            ]
          ), 

          floatingActionButton: FloatingActionButton(
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (_) {
                return SecondScreen();
                
                }));

            },

              child: Icon(Icons.add),
            ),
          ),
    );
    
  }
}

@override
Widget tab1() {
  return Container(
    child: Center(
      child: Image.asset("assets/me.png")
      ),
  );

}

