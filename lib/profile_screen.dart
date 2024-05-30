import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
      ),
      body: Container(
        color:
            Colors.grey[200], // Set the background color to a mild gray shade
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              CircleAvatar(
                radius: 50,
                backgroundImage: AssetImage('assets/images/profile-user.png'),
              ),
              SizedBox(height: 20),
              Text(
                'Daksh Jain',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 10),
              Text(
                'daksh.jain@example.com',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.grey,
                ),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  // Implement edit profile functionality
                },
                child: Text('Edit Profile'),
              ),
              SizedBox(height: 20),
              ListTile(
                title: Text('Itineraries'),
                trailing: Icon(Icons.arrow_forward),
                onTap: () {
                  // Navigate to the itinerary screen
                  Navigator.pushNamed(context, '/itinerary');
                },
              ),
              Divider(),
              ListTile(
                title: Text('Settings'),
                trailing: Icon(Icons.arrow_forward),
                onTap: () {
                  // Navigate to the settings screen
                  Navigator.pushNamed(context, '/settings');
                },
              ),
              Divider(),
              ListTile(
                title: Text('About'),
                trailing: Icon(Icons.arrow_forward),
                onTap: () {
                  // Navigate to the about screen
                  Navigator.pushNamed(context, '/about');
                },
              ),
              ListTile(
                title: Text('Help & Support'),
                trailing: Icon(Icons.arrow_forward),
                onTap: () {
                  // Navigate to the help & support screen
                  Navigator.pushNamed(context, '/help');
                },
              ),
              Divider(),
              OutlinedButton(
                onPressed: () {
                  // Implement sign out functionality
                  Navigator.pushNamed(context, '/login');
                },
                child: Text('Sign Out'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
