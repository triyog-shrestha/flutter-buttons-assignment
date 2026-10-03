import 'package:flutter/material.dart';
import 'buttons.dart';
class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    const Color green = Color(0xFF1B6B1B);
    const Color lightGreen = Color(0xFFD5EBD0);

    return Scaffold(
      appBar: AppBar(
        title: const Text("Profile"),
        toolbarHeight: 75,
        centerTitle: true,
        backgroundColor: green,
        foregroundColor: Colors.white,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 20),
              const CircleAvatar(
                radius: 60,
                backgroundColor: lightGreen,
                child: Icon(
                  Icons.person,
                  size: 70,
                  color: green,
                ),
              ),
              const SizedBox(height: 20),
              // Name
              const Text(
                "Triyog Shrestha",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 8),
              // Email / Handle
              const Text(
                "triyogshrestha86@gmail.com",
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.grey,
                ),
              ),
              const SizedBox(height: 30),
              const Divider(),
              const SizedBox(height: 20),
              // Bio / Info Section
              const Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "About",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(height: 12),
              const Text(
                "Music enthusiast and collector of jazz-influenced hip hop and soul records. Huge fan of Mac Miller's work, especially The Divine Feminine, Swimming, and Circles.",
                style: TextStyle(fontSize: 15),
                textAlign: TextAlign.justify,
              ),
              const SizedBox(height: 30),
              const Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Details",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(height: 16),
              _buildInfoRow(Icons.location_on, "Location", "Lubhu, NP"),
              const SizedBox(height: 12),
              _buildInfoRow(Icons.calendar_today, "Member Since", "September 2020"),
              const SizedBox(height: 12),
              _buildInfoRow(Icons.favorite, "Favorite Album", "The Fall-Off"),

              const SizedBox(height: 20),

              FilledButton.icon(onPressed: (){
                Navigator.pop(context, MaterialPageRoute(builder: (context) => Buttons()));
              },
                label: Text("Logout"),
                style: FilledButton.styleFrom(
                    fixedSize: Size(350, 50),
                    backgroundColor: green
                ),
                icon: Icon(Icons.logout),
              )
            ],

          ),
        ),
      ),
    );
  }

  Widget _buildInfoRow(IconData icon, String label, String value) {
    return Row(
      children: [
        Icon(icon, color: const Color(0xFF1B6B1B), size: 22),
        const SizedBox(width: 12),
        Text(
          "$label: ",
          style: const TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          value,
          style: const TextStyle(fontSize: 15),
        ),
      ],
    );
  }
}
