import 'package:flutter/material.dart';
import 'player.dart';

class PlayerCard extends StatelessWidget {
  final Player player;
  final Function delete;

  PlayerCard({this.player, this.delete});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 10,
      margin: EdgeInsets.fromLTRB(16, 16, 16, 0),
      color: Colors.grey[200],
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  player.name,
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.amber[800],
                  ),
                ),
                SizedBox(height: 8),
                Text(
                  player.team,
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.red[400],
                  ),
                ),
              ],
            ),
            IconButton(
              icon: Icon(Icons.delete),
              color: Colors.blue[900],
              onPressed: delete,
            ),
          ],
        ),
      ),
    );
  }
}
