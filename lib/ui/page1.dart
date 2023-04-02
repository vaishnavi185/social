import 'package:flutter/material.dart';

import 'package:cupertino_icons/cupertino_icons.dart';
import 'package:social/fun/upload_img.dart';
import 'package:social/ui/search%20page.dart';
import 'home_page.dart';
class HOME extends StatefulWidget {
  const HOME({Key? key}) : super(key: key);

  @override
  State<HOME> createState() => _HOMEState();
}

class _HOMEState extends State<HOME> {
  int currentIndex=0;
  final screens =[
    
    home_pg(),
    search(),
    // Center(child: Text("add", style: TextStyle(color: Colors.white),),),
    Center(child: Text("notification",style: TextStyle(color: Colors.white),),),

    Center(child: Text("profile",style: TextStyle(color: Colors.white),),)
  ];
  @override
  Widget build(BuildContext context) {



    return Scaffold(

      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text("Instagram",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w600,
            color: Colors.white
          ),
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.menu),
            onPressed: () {
              // Handle menu button press
            },
          ),
        ],

      ),
      body:
      screens[currentIndex],
       bottomNavigationBar: BottomNavigationBar(
         currentIndex: currentIndex,
         onTap: (index)=>setState(() {currentIndex= (index);

         }),
         unselectedItemColor: Colors.grey,
         selectedItemColor: Colors.white,
         showSelectedLabels: false,
         showUnselectedLabels: false,
         items: [BottomNavigationBarItem
           (icon: Icon(Icons.home,

         ),
           label: "home",
           backgroundColor: Colors.black ,

         ),
           BottomNavigationBarItem
             (icon: Icon(Icons.search,

           ),
               label: "search",
             backgroundColor: Colors.black ,
           ),
           // BottomNavigationBarItem
           //   (icon: Icon(Icons.add,
           //
           // ),
           //     label: "add",
           //   backgroundColor: Colors.black ,
           // ),
           BottomNavigationBarItem
             (icon: Icon(Icons.favorite_border,

           ),
               label: "notification",
             backgroundColor: Colors.black ,
           ),
           BottomNavigationBarItem
             (icon: Icon(Icons.person,

           ),
               label: "profile",
             backgroundColor: Colors.black ,
           ),


         ],
       ),
      floatingActionButton: FloatingActionButton(
                 onPressed: (){
                   // uploadImage();
                 },
        backgroundColor: Colors.white,
        mini: true,
        tooltip: 'add',
        child: Icon(Icons.add,
          color: Colors.black,
        ),

      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,

    );
  }
}
