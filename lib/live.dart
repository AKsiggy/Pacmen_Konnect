import 'package:flutter/material.dart';

class live extends StatelessWidget {
  const live({super.key});

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      theme: ThemeData(
        brightness: Brightness.dark,
        primaryColor: Colors.blueGrey,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Live Konnect'),
        ),
        body: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Text(
              'Live on Twitch',
              style: TextStyle(fontSize: 18),
            ),
            Expanded(
              child: ListView.builder(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemCount: 5,
                itemBuilder: (BuildContext context, int index) => Card(
                  child: Center(child: Text('Cap_Streamers')),
                ),
              ),
            ),
            Text(
              'Live on Youtube',
              style: TextStyle(fontSize: 18),
            ),
            Expanded(
              child: ListView.builder(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemCount: 5,
                itemBuilder: (BuildContext context, int index) => Card(
                  child: Center(child: Text('Youtube_Streamer')),
                ),
              ),
            ),
            Text(
              'Popular Streamers live right now',
              style: TextStyle(fontSize: 18),
            ),
            Expanded(
              child: ListView.builder(
                shrinkWrap: true,
                itemCount: 11,
                itemBuilder: (ctx,int){
                  return Card(
                    child: ListTile(
                        title: Text('Live_Streamer $int'),
                        subtitle: Text('Live_Streamer Short Description')),
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