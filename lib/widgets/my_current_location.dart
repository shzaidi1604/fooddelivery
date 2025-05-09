import 'package:flutter/material.dart';

class MyCurrentLocation extends StatelessWidget {
  const MyCurrentLocation({super.key});

  void openLocationSearchBox(BuildContext context){
    showDialog(context: context, builder: (context)=> AlertDialog(
      title: Text("Your Location"),
      content: TextField(decoration: InputDecoration(hintText: "Search address..."),),
      actions: [
        //cancel button
        ElevatedButton(onPressed: ()=> Navigator.pop(context), child: Text("Cancel")),

        // save button
        ElevatedButton(onPressed: ()=> Navigator.pop(context), child: Text("Save")),


      ],
    ));
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Deliver Now",
            style: TextStyle(color: Theme.of(context).colorScheme.primary),
          ),
          Row(
            children: [
              GestureDetector(
                onTap: () => openLocationSearchBox(context),
                child: Text(
                  "6901 Hollywood Blv",
                  style: TextStyle(
                    color: Theme.of(context).colorScheme.inversePrimary,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Icon(Icons.keyboard_arrow_down_rounded),
            ],
          ),
        ],
      ),
    );
  }
}
