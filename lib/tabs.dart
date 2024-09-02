import 'package:flutter/material.dart';


class PlayersTab extends StatelessWidget {
  final List<Map<String, String>> players = [
    {"name": "@bakaar", "team": "Bakar"},
    {"name": "@bellfruit", "team": "B8 Fruiters"},
    {"name": "@bhuvanish", "team": "BB Bhuvanish"},
    {"name": "@bhujankana", "team": "BB bhujakanan"},
    {"name": "@jentek", "team": "BB Futbolka"},
    {"name": "@jentek", "team": "BB Futbolka"},
    {"name": "@jentek", "team": "BB Futbolka"},
    {"name": "@jentek", "team": "BB Futbolka"},
    {"name": "@bhujankana", "team": "BB bhujakanan"},
    {"name": "@jentek", "team": "BB Futbolka"},
    {"name": "@jentek", "team": "BB Futbolka"},
    {"name": "@jentek", "team": "BB Futbolka"},
    {"name": "@jentek", "team": "BB Futbolka"},

  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: players.length,
      itemBuilder: (context, index) {
        return ListTile(
          leading: CircleAvatar(
            backgroundColor: Colors.grey,
            child: Icon(Icons.person, color: Colors.white),
          ),
          title: Text(players[index]["name"]!),
          subtitle: Text(players[index]["team"]!),
          trailing: ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              foregroundColor: Colors.black, backgroundColor: Colors.grey[200],
            ),
            child: Text("Follow Back"),
          ),
        );
      },
    );
  }
}

class TeamsTab extends StatelessWidget {
  final List<Map<String, String>> teams = [
    {"name": "@baskart11", "team": "Basket Event"},
    {"name": "@stemaflorida", "team": "Craftmans Cricket Club"},
    {"name": "@mindence", "team": "Madden Cricket Club"},
    // Add more teams here
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: teams.length,
      itemBuilder: (context, index) {
        return ListTile(
          leading: CircleAvatar(
            backgroundColor: Colors.grey,
            child: Icon(Icons.sports_cricket, color: Colors.white),
          ),
          title: Text(teams[index]["name"]!),
          subtitle: Text(teams[index]["team"]!),
          trailing: ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              foregroundColor: Colors.black, backgroundColor: index == 1 ? Colors.grey[200] : Colors.yellow[600],
            ),
            child: Text(index == 1 ? "Unfollow" : "Follow"),
          ),
        );
      },
    );
  }
}

class TournamentsTab extends StatelessWidget {
  final List<Map<String, String>> tournaments = [
    {"name": "@boxcricketleague", "team": "Box Cricket League 2024"},
    {"name": "@delhippl24", "team": "Delhi Cup 2024"},
    {"name": "@streetcriclg", "team": "Street League Delhi"},
    // Add more tournaments here
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: tournaments.length,
      itemBuilder: (context, index) {
        return ListTile(
          leading: CircleAvatar(
            backgroundColor: Colors.grey,
            child: Icon(Icons.emoji_events, color: Colors.white),
          ),
          title: Text(tournaments[index]["name"]!),
          subtitle: Text(tournaments[index]["team"]!),
          trailing: ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              foregroundColor: Colors.black, backgroundColor: index == 1 ? Colors.grey[200] : Colors.yellow[600],
            ),
            child: Text(index == 1 ? "Unfollow" : "Follow Back"),
          ),
        );
      },
    );
  }
}