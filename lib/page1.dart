import 'package:flutter/material.dart';


class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3, child:

    Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          color: Colors.black,
          onPressed: () {
            // Define the action for the back button
          },
        ),
        title: Column(
          children: [
            Row(
              children: [
                Expanded(
                  child: Container(
                    height: 40.0,
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: "Type and tap search icon to see the results",
                        prefixIcon: Icon(Icons.search),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20.0),
                          borderSide: BorderSide.none,
                        ),
                        fillColor: Colors.grey[200],
                        filled: true,
                        contentPadding: EdgeInsets.symmetric(vertical: 0.0),
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 8), // Spacing between the text field and the button
                Container(
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                    color: Colors.yellow, // Background color
                    shape: BoxShape.circle, // Circular shape
                  ),
                  child: IconButton(
                    icon: Icon(Icons.search),
                    color: Colors.black, // Icon color
                    onPressed: () {
                      // Define the action for the search button
                    },
                  ),
                ),
              ],
            ),
            SizedBox(height: 8), // Spacing between the search bar and the text
            Text(
              "Type and tap search icon to see the results",
              style: TextStyle(
                color: Colors.black,
                fontSize: 12.0,
              ),
            ),
          ],
        ),

        bottom: TabBar(
          indicatorColor: Colors.black,
          labelColor: Colors.black,
          unselectedLabelColor: Colors.black54,
          tabs: [
            Tab(text: "PLAYERS"),
            Tab(text: "TEAMS"),
            Tab(text: "TOURNAMENTS"),
          ],
        ),
      ),
      body: TabBarView(
        children: [
          PlayersTab(),
          TeamsTab(),
          TournamentsTab(),
        ],
      ),
    ),
    );

  }
}


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
    // Add more players here
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
              foregroundColor: Colors.white, backgroundColor: Colors.black,
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
              foregroundColor: Colors.white, backgroundColor: index == 1 ? Colors.black : Colors.black,
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
              foregroundColor: Colors.white, backgroundColor: index == 1 ? Colors.black : Colors.black,
            ),
            child: Text(index == 1 ? "Unfollow" : "Follow Back"),
          ),
        );
      },
    );
  }
}





