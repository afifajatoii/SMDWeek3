import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ResponsiveLayout(),
    );
  }
}

// RESPONSIVE LAYOUT

class ResponsiveLayout extends StatefulWidget {
  const ResponsiveLayout({super.key});

  @override
  State<ResponsiveLayout> createState() => _ResponsiveLayoutState();
}

class _ResponsiveLayoutState extends State<ResponsiveLayout> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context,constraints){
        if(constraints.maxWidth > 600){
          return const WebUI();
        }else{
          return const MobileUI();
        }
      },
    );
  }
}



class MobileUI extends StatefulWidget {
  const MobileUI({super.key});

  @override
  State<MobileUI> createState() => _MobileUIState();
}

class _MobileUIState extends State<MobileUI> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          children: [
            Text("Tasks",textAlign: TextAlign.center,style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),),
            Divider(color: Colors.black),
            SizedBox(height: 20,),
            Column(
              children: [
                Card(
                  shadowColor: Colors.black,
                  elevation: 3,
                  shape: OutlineInputBorder(),
                  child: ListTile(
                    title: Text("Buy groceries"),
                    trailing: Checkbox(
                      value: true,
                      onChanged: (value) {},
                    ),
                  ),
                ),
                Card(
                  shadowColor: Colors.black,
                  elevation: 3,
                  shape: OutlineInputBorder(),
                  child: ListTile(
                    title: Text("Complete Flutter project"),
                    trailing: Checkbox(
                      value: true,
                      onChanged: (value){},
                    ),
                  ),
                ),
                Card(
                  shadowColor: Colors.black,
                  elevation: 3,
                  shape: OutlineInputBorder(),
                  child: ListTile(
                    title: Text("Read a book"),
                    trailing: Checkbox(
                      value: false,
                      onChanged: (value){},
                    ),
                  ),
                ),
              ],
            ),
      ],
        ),
      ),
      appBar: AppBar(
        backgroundColor: Colors.blue,
        centerTitle: true,
        title: const Text(
          "MAD-Week 3",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20,
            color: Colors.white,
          ),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: CircleAvatar(
              backgroundColor: Colors.blueAccent,
              radius: 60,
              child: Icon(Icons.person_sharp,size: 90,color: Colors.white,),
            ),
          ),
          SizedBox(height: 8,),
          Container(
            color: Colors.blueAccent,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("VentureDrive",style: TextStyle(
                fontSize: 20,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),),
            ),
          ),
        ],
      ),
    );
  }
}




//WEB LAYOUT

class WebUI extends StatefulWidget {
  const WebUI({super.key});

  @override
  State<WebUI> createState() => _WebUIState();
}

class _WebUIState extends State<WebUI> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.blue,
        centerTitle: true,
        title: const Text(
          "MAD-Week 3",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20,
            color: Colors.white,
          ),
        ),
      ),
      body: Row(
        children: [
          Expanded(
            flex: 1,
            child: Drawer(
              backgroundColor: Colors.white,
              child: ListView(
                children: [
                  Text("Tasks",textAlign: TextAlign.center,style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),),
                  Divider(color: Colors.black),
                  SizedBox(height: 20,),
                  Column(
                    children: [
                      Card(
                        shadowColor: Colors.black,
                        elevation: 3,
                        shape: OutlineInputBorder(),
                        child: ListTile(
                          title: Text("Buy groceries"),
                          trailing: Checkbox(
                            value: true,
                            onChanged: (value) {},
                          ),
                        ),
                      ),
                      Card(
                        shadowColor: Colors.black,
                        elevation: 3,
                        shape: OutlineInputBorder(),
                        child: ListTile(
                          title: Text("Complete Flutter project"),
                          trailing: Checkbox(
                            value: true,
                            onChanged: (value){},
                          ),
                        ),
                      ),
                      Card(
                        shadowColor: Colors.black,
                        elevation: 3,
                        shape: OutlineInputBorder(),
                        child: ListTile(
                          title: Text("Read a book"),
                          trailing: Checkbox(
                            value: false,
                            onChanged: (value){},
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 3,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Center(
                  child: CircleAvatar(
                    backgroundColor: Colors.blueAccent,
                    radius: 60,
                    child: Icon(Icons.person_sharp,size: 90,color: Colors.white,),
                  ),
                ),
                SizedBox(height: 8,),
                Container(
                  color: Colors.blueAccent,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("VentureDrive",style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
