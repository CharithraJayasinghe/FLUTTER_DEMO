

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        
        primarySwatch: Colors.blue
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
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
                ],
              ),
              elevation: 50.0,
                
                
    
          ),
          body: const TabBarView(
            children: [
              Icon(Icons.directions_car),
              Icon(Icons.directions_transit),
              Icon(Icons.directions_bike),
              
            ],
          ),
        ),
    );
    
  }
}

