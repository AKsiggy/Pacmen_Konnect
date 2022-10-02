import 'package:flutter/material.dart';

class Onsale extends StatelessWidget {
  const Onsale({super.key});

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      theme: ThemeData(
        brightness: Brightness.dark,
        primaryColor: Colors.blueGrey,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Games on Sale'),
        ),
        body: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Text(
              'Free Games This week',
              style: TextStyle(fontSize: 18),
            ),
            Expanded(
              child: ListView.builder(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemCount: 10,
                itemBuilder: (BuildContext context, int index) => Card(
                  child: Center(child: Text('Free_Game')),
                ),
              ),
            ),
            Text(
              'Upcoming free Games',
              style: TextStyle(fontSize: 18),
            ),
            Expanded(
              child: ListView.builder(
                shrinkWrap: true,
                itemCount: 11,
                itemBuilder: (ctx,int){
                  return Card(
                    child: ListTile(
                        title: Text('Game $int'),
                        subtitle: Text('this is a description of the Game')),
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