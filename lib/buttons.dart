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
  Set<Button> selected1 = {Button.day};
  Set<Size> selected2 = {Size.xl};
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Text("Material Buttons"),
        toolbarHeight: 75,
        centerTitle: true,
        backgroundColor: Colors.green,
        foregroundColor: Colors.white,
      ),
      body: SafeArea(child: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              SegmentedButton<Button>(
                style: SegmentedButton.styleFrom(
                  selectedBackgroundColor: Colors.lightGreenAccent,
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
                    selectedBackgroundColor: Colors.lightGreenAccent,
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
            ],
          ),
        ),
      )
      ),
    );
  }

}