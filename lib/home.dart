import 'package:flutter/material.dart';
import './post.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
        theme: ThemeData(
        brightness: Brightness.dark,
        primaryColor: Colors.blueGrey,
        ),
      home: Scaffold(

        appBar: AppBar(
          title: const Text('New Updates'),
        ),
        body:
        Column(mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Text(
              'New Updates',
              style: TextStyle(fontSize: 18),
            ),
            Expanded(
              child: ListView.builder(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemCount: 15,
                itemBuilder: (BuildContext context, int index) => Card(
                  child: Center(child: Text('Highlights_new')),
                ),
              ),
            ),
            Text(
              'Recent Posts',
              style: TextStyle(fontSize: 18),
            ),
            Expanded(
              child: ListView.builder(
                shrinkWrap: true,
                itemCount: 11,
                itemBuilder: (ctx,int){
                  return Card(
                    child: ListTile(
                        title: Text('Post $int'),
                        subtitle: Text('Post Description')),
                  );
                },
              ),
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {Navigator.of(context).pushAndRemoveUntil(
              MaterialPageRoute(builder: (context) => Post()),
                  (route) => false);},
          backgroundColor: Colors.orange,
          child: const Icon(Icons.add),
        ),
      ),
    );
  }
}