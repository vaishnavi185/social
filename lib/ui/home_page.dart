import 'package:flutter/material.dart';
import 'package:cupertino_icons/cupertino_icons.dart';
class home_pg extends StatefulWidget {
  const home_pg({Key? key}) : super(key: key);

  @override
  State<home_pg> createState() => _home_pgState();
}

class _home_pgState extends State<home_pg> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body:SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Center(
            child: Column(
              children: [Row(

                  children: [Container(
                    width: 80,
                    height: 90,

                    child:
                    TextButton(
                      child: Text("My Story",
                        style:TextStyle(
                          fontSize: 10,
                          color:  Colors.black
                        ) ,
                      ),
                      onPressed: (){},
                    ),
                    decoration: BoxDecoration(
                        border: Border.all(),
                        borderRadius: BorderRadius.all(Radius.circular(16)),
                      color: Colors.grey

                    ),

                  ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      width: 80,
                      height: 90,

                      decoration: BoxDecoration(
                          border: Border.all(),
                          borderRadius: BorderRadius.all(Radius.circular(16)),
                        image:DecorationImage(
                          image: AssetImage("assets/480584e3-d1da-420a-ad37-e0de81a09993.jpg"),
                          fit: BoxFit.fill
                        )
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      width: 80,
                      height: 90,


                      decoration: BoxDecoration(
                        border: Border.all(),
                          borderRadius: BorderRadius.all(Radius.circular(16)),
                          image:DecorationImage(
                              image: AssetImage("assets/adebfbf2-4b4e-4f79-9457-3634e23b5bc4.jpg"),
                              fit: BoxFit.fill
                          )
                      ),
                    ),

                  ],
                ),
                SizedBox(
                 height: 20,
                ),
                Divider(
                  color: Colors.grey,
                ),
                ListTile(
                  leading: Icon(Icons.account_circle,
                    color: Colors.white,
                  ),
                  trailing: IconButton(
                    onPressed: (){},
                    icon: Icon(Icons.menu,
                      color: Colors.white,
                    ),
                  ),
                  title: Text("Kanika123",
                    style: TextStyle(
                      color: Colors.white
                    ),
                  ),
                ),
                Container(
                  width: double.infinity,
                  height: 300,

                  decoration: BoxDecoration(
                      // border: Border.all(),
                      // borderRadius: BorderRadius.all(Radius.circular(16)),
                      image:DecorationImage(
                          image: AssetImage("assets/adebfbf2-4b4e-4f79-9457-3634e23b5bc4.jpg"),
                          fit: BoxFit.fill
                      )
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Container(
                      width: 10,
                      height: 10,
                      child: Icon(
                        Icons.favorite,
                        color: Colors.red,
                      ),
                    ),
                    SizedBox(width: 150,
                    height: 20,),
                    Container(
                      width: 10,
                      height: 10,
                      child: Icon(
                        Icons.add_comment_outlined,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(
                      width: 20,
                      height: 20,
                    ),
                    Container(
                      width: 160,
                      height: 30,
                      color: Colors.grey,
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: "Comment",

                        ),
                      ),


                    ),
                    SizedBox(width: double.infinity,
                      height: 20,
                    ),
                    ListTile(
                      leading: Icon(Icons.account_circle,
                        color: Colors.white,
                      ),
                      trailing: IconButton(
                        onPressed: (){},
                        icon: Icon(Icons.menu,
                          color: Colors.white,
                        ),
                      ),
                      title: Text("manya123",
                        style: TextStyle(
                            color: Colors.white
                        ),
                      ),
                    ),


                  ],
                )
              ],
              ),
            ),
        ),
        ),
      );

  }
}
