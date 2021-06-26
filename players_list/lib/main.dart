import 'package:flutter/material.dart';
import 'package:players_list/player.dart';
import 'player_card.dart';

void main() {
  runApp(MaterialApp(
    home: PlayersList(),
  ));
}

class PlayersList extends StatefulWidget {
  @override
  _PlayersListState createState() => _PlayersListState();
}

class _PlayersListState extends State<PlayersList> {
  List<Player> players = [
    Player(name: 'Rohit Sharma', team: 'Mumbai Indians'),
    Player(name: 'MS Dhoni', team: 'Chennai Super Kings'),
    Player(name: 'Virat Kohli', team: 'Royal Challengers Bangalore'),
    Player(name: 'Rishabh Pant', team: 'Delhi Capitals'),
    Player(name: 'Eoin Morgan', team: 'Kolkata Knight Riders'),
    Player(name: 'Sanju Samson', team: 'Rajasthan Royals'),
    Player(name: 'KL Rahul', team: 'Punjab Kings'),
    Player(name: 'David Warner', team: 'SunRisers Hyderabad'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[100],
      appBar: AppBar(
        title: Text('My Players'),
        backgroundColor: Colors.lightBlue[900],
      ),
      body: Column(
        children: players
            .map((player) => PlayerCard(
                  player: player,
                  delete: () {
                    setState(() {
                      players.remove(player);
                    });
                  },
                ))
            .toList(),
      ),
    );
  }
}
