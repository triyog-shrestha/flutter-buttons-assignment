import 'package:flutter/material.dart';


enum Button {
  day,week,month,year
}

enum WidgetSize{
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
  Set<WidgetSize> selected2 = {WidgetSize.xl};
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

              SegmentedButton<WidgetSize>(
                  style: SegmentedButton.styleFrom(
                    selectedBackgroundColor: lightGreen,
                  ),
                  multiSelectionEnabled: true,
                  emptySelectionAllowed: true,
                  segments: const[
                ButtonSegment(value: WidgetSize.xs, label: Text("XS")),
                ButtonSegment(value: WidgetSize.s, label: Text("S")),
                ButtonSegment(value: WidgetSize.m, label: Text("M")),
                ButtonSegment(value: WidgetSize.l, label: Text("L")),
                ButtonSegment(value: WidgetSize.xl, label: Text("XL")),
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
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  IconButton(onPressed: (){},
                    icon: Icon(Icons.cloud_outlined),
                  ),
                  IconButton.filled(onPressed: (){},
                    icon: Icon(Icons.cloud_outlined),
                    style: IconButton.styleFrom(
                      backgroundColor: green,
                      foregroundColor: Colors.white
                    )
                  ),
                  IconButton.outlined(onPressed: (){},
                    icon: Icon(Icons.cloud_outlined),
                    style: IconButton.styleFrom(
                      side: BorderSide(color: green),
                      foregroundColor: green,
                    )
                  ),

                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  IconButton(onPressed: (){},
                    icon: Icon(Icons.close),
                    style: IconButton.styleFrom(
                      foregroundColor: green,
                    ),
                  ),
                  IconButton(onPressed: (){}, 
                    icon: Icon(Icons.chevron_left),
                    style: IconButton.styleFrom(
                      foregroundColor: green,
                    ),
                  ),
                ],
              ),

              const Divider(),
              const SizedBox(height: 20,),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  FilledButton.icon(onPressed: (){},
                      label: Text("Approve"),
                      icon: Icon(Icons.thumb_up),
                      style: FilledButton.styleFrom(
                        backgroundColor: green,
                    )
                  ),

                  IconButton.filled(onPressed: (){},
                      icon: Icon(Icons.add),
                      style: IconButton.styleFrom(
                        backgroundColor: green,
                      ),
                  )
                ],
              ),
              const SizedBox(height: 20,),
              const Divider(),
              const SizedBox(height: 20,),

              FilledButton(onPressed: (){},
                  style: FilledButton.styleFrom(
                    backgroundColor: green,
                    fixedSize: const Size(350, 50),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(4),
                    )
                  ),
                  child: Text("Create Account"),
              ),

              const SizedBox(height: 20,),
            ],

          ),
        ),
      )
      ),
    );
  }

}