import 'package:flutter/material.dart';

class Social extends StatelessWidget {
  const Social({super.key});

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      theme: ThemeData(
        brightness: Brightness.dark,
        primaryColor: Colors.blueGrey,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Chat & Konnect'),
        ),
        body: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Text(
              'Friends Online',
              style: TextStyle(fontSize: 18),
            ),
            Expanded(
              child: ListView.builder(
                shrinkWrap: true,
                itemCount: 4,
                itemBuilder: (ctx,int){
                  return Card(
                    child: ListTile(
                        title: Text('Friend $int'),
                        subtitle: Text('Status')),
                  );
                },
              ),
            ),
            Text(
              'Offline',
              style: TextStyle(fontSize: 18),
            ),
            Expanded(
              child: ListView.builder(
                shrinkWrap: true,
                itemCount: 2,
                itemBuilder: (ctx,int){
                  return Card(
                    child: ListTile(
                        title: Text('Friend $int'),
                        subtitle: Text('Last Online')),
                  );
                },
              ),
            ),
            Text(
              'People u Might Know',
              style: TextStyle(fontSize: 18),
            ),
            Expanded(
              child: ListView.builder(
                shrinkWrap: true,
                itemCount: 15,
                itemBuilder: (ctx,int){
                  return Card(
                    child: ListTile(
                        title: Text('Person $int'),
                        subtitle: Text('Status')),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}