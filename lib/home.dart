import 'package:flutter/material.dart';
class Home extends StatelessWidget{
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    const Color lightGreen = Color(0xFFD5EBD0);
    const Color green = Color(0xFF1B6B1B);

    return Scaffold(
      appBar: AppBar(
        title: const Text("Welcome to home"),
        toolbarHeight: 75,
        centerTitle: true,
        backgroundColor: green,
        foregroundColor: Colors.white,
      ),
      body: SafeArea(child: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              const SizedBox(height: 100,),
              Column(
                spacing: 40,
                children: [
                  OutlinedButton.icon(onPressed: (){},
                      label: Text("Add"),
                      icon: Icon(Icons.add),
                      style: FilledButton.styleFrom(
                          side: BorderSide(color: green),
                          foregroundColor: Colors.black,
                          fixedSize: const Size(250, 50),
                      ),
                  ),
                  OutlinedButton.icon(onPressed: (){},
                      label: Text("Profile"),
                      icon: Icon(Icons.person),
                      style: FilledButton.styleFrom(
                          side: BorderSide(color: green),
                          foregroundColor: Colors.black,
                          fixedSize: const Size(250, 50),
                    ),
                  ),
                  OutlinedButton.icon(onPressed: (){},
                    label: Text("Settings"),
                    icon: Icon(Icons.settings),
                    style: FilledButton.styleFrom(
                      side: BorderSide(color: green),
                      foregroundColor: Colors.black,
                      fixedSize: const Size(250, 50),
                    ),
                  ),
                  OutlinedButton.icon(onPressed: (){},
                    label: Text("Details"),
                    icon: Icon(Icons.book_online),
                    style: FilledButton.styleFrom(
                      side: BorderSide(color: green),
                      foregroundColor: Colors.black,
                      fixedSize: const Size(250, 50),
                    ),
                  ),
                  OutlinedButton.icon(onPressed: (){},
                    label: Text("Logout"),
                    icon: Icon(Icons.logout),
                    style: FilledButton.styleFrom(
                      side: BorderSide(color: green),
                      foregroundColor: Colors.black,
                      fixedSize: const Size(250, 50),
                    ),
                  ),

                ],
              )
            ],
          ),
        ),
      )),
    );
  }

}