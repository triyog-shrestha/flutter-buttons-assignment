import 'package:flutter/material.dart';


enum Button {
  day,week,month,year
}

enum Size{
  xs,s,m,l,xl
}



class Buttons extends StatefulWidget {
  const Buttons({super.key});

  @override
  State<Buttons> createState() => ButtonsState();
}


class ButtonsState extends State<Buttons> {
  static const Color lightGreen = Color(0xFFD5EBD0);
  static const Color green = Color(0xFF1B6B1B);

  Set<Button> selected1 = {Button.day};
  Set<Size> selected2 = {Size.xl};
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Text("Material Buttons"),
        toolbarHeight: 75,
        centerTitle: true,
        backgroundColor: green,
        foregroundColor: Colors.white,
      ),
      body: SafeArea(child: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              SegmentedButton<Button>(
                style: SegmentedButton.styleFrom(
                  selectedBackgroundColor: lightGreen,
                ),
                segments: const[
                ButtonSegment(value: Button.day, label: Text("Day", style: TextStyle(fontSize: 12)), icon: Icon(Icons.calendar_view_day)),
                ButtonSegment(value: Button.week, label: Text("Week", style: TextStyle(fontSize: 12)), icon: Icon(Icons.calendar_view_week)),
                ButtonSegment(value: Button.month, label: Text("Month", style: TextStyle(fontSize: 12)), icon: Icon(Icons.calendar_view_month)),
                ButtonSegment(value: Button.year, label: Text("Year", style: TextStyle(fontSize: 12)), icon: Icon(Icons.calendar_today))
              ],
                  selected: selected1,
                  onSelectionChanged: (newSelection){
                  setState(() => selected1 = newSelection);
                },),

              const SizedBox(height: 20,),

              SegmentedButton<Size>(
                  style: SegmentedButton.styleFrom(
                    selectedBackgroundColor: lightGreen,
                  ),
                  multiSelectionEnabled: true,
                  emptySelectionAllowed: true,
                  segments: const[
                ButtonSegment(value: Size.xs, label: Text("XS")),
                ButtonSegment(value: Size.s, label: Text("S")),
                ButtonSegment(value: Size.m, label: Text("M")),
                ButtonSegment(value: Size.l, label: Text("L")),
                ButtonSegment(value: Size.xl, label: Text("XL")),
              ],
                  selected: selected2,
                onSelectionChanged: (newSelection){
                  setState(() => selected2 = newSelection);
              }),

              const SizedBox(height: 20,),
              const Divider(),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Column(
                    spacing: 20,
                    children: [
                      ElevatedButton(
                        onPressed: (){},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: green,
                          foregroundColor: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(4),
                          ),
                        ),
                        child: const Text("Elevated Button")
                      ),
                      FilledButton(onPressed: (){},
                          style: FilledButton.styleFrom(
                            backgroundColor: green,
                            foregroundColor: Colors.white,
                          ),
                          child: Text("Filled Button")
                      ),
                      FilledButton.tonal(onPressed: (){},
                      style: FilledButton.styleFrom(
                        backgroundColor: lightGreen,
                        foregroundColor: green,
                      ),
                          child: Text("Filled Tonal")
                      ),
                      OutlinedButton(onPressed: (){},
                          style: OutlinedButton.styleFrom(
                            foregroundColor: green,
                            side: BorderSide(color: Colors.black26),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(4)
                            )
                          ),
                          child: Text("Outlined button")
                      ),
                      TextButton(onPressed: (){},
                          style: TextButton.styleFrom(
                            foregroundColor: green,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(4)
                            )
                          ),
                          child: Text("Text Button")
                      ),
                    ],
                  ),
                  Column(
                    spacing: 20,
                    children: [
                      ElevatedButton.icon(onPressed: (){},
                        label: Text("Add"),
                        icon: Icon(Icons.add),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: green,
                          foregroundColor: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(4)
                          )
                        )
                      ),
                      FilledButton.icon(onPressed: (){},
                        label: Text("Attach"),
                        icon: Icon(Icons.pin),
                        style: FilledButton.styleFrom(
                          backgroundColor: green,
                          foregroundColor: Colors.white,
                        )
                      ),
                      FilledButton.icon(onPressed: (){},
                        label: Text("Send"),
                        icon: Icon(Icons.send),
                        style: FilledButton.styleFrom(
                          backgroundColor: lightGreen,
                          foregroundColor: green,
                        )
                      ),
                      OutlinedButton.icon(onPressed: (){},
                        label: Text("Like"),
                        icon: Icon(Icons.thumb_up_outlined),
                        style: OutlinedButton.styleFrom(
                          side: BorderSide(color: Colors.black26),
                          foregroundColor: green,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(4)
                          )
                        )
                      ),
                      TextButton.icon(onPressed: (){},
                          label: Text("Favourite"),
                        icon: Icon(Icons.favorite),
                        style: TextButton.styleFrom(
                          foregroundColor: green,
                        )
                      )
                    ],
                  )
                ],
              ),
              const SizedBox(height: 20,),
              const Divider(),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  IconButton(onPressed: (){},
                    icon: Icon(Icons.cloud_outlined),
                  )
                ],
              ),
            ],

          ),
        ),
      )
      ),
    );
  }

}