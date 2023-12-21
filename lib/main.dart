
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          useMaterial3: true,
        ),
        home: Scaffold(
          backgroundColor: const Color(0xFF469788),
          appBar: AppBar(
            title: const Text("My Card",style: TextStyle(fontWeight: FontWeight.w800,color: Colors.white),),
            centerTitle: true,
            backgroundColor: Colors.blueGrey,
          ),
          body: SafeArea(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const CircleAvatar(
                  backgroundImage: AssetImage('images/profile.jpg'),
                  radius: 56.0,
                ),
                const Text("M Hashim",style: TextStyle(fontSize: 30.0,fontWeight: FontWeight.w800,color: Colors.white,fontFamily: 'Pacifico'),),
                Text("Flutter Developer",style: TextStyle(color: Colors.teal[900],fontSize: 20.0),),
                SizedBox(
                  width: 200.0,
                  child: Divider(color: Colors.white,),
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 20,),
                  margin: const EdgeInsets.symmetric(horizontal: 20.0,vertical: 10.0),
                  alignment: Alignment.center,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(8)),
                  ),
                  child: ExpansionTile(
                    textColor: Colors.teal,
                    title: Text("Email"),
                    children: [Container(
                      padding: EdgeInsets.symmetric(vertical: 10.0),
                      child: Row(
                        children: [
                          Icon(Icons.email_outlined,color: Colors.teal,),
                          SizedBox(width: 20.0,),
                          Text("hashim199999@gmail.com",style: TextStyle(fontSize: 16.0,color: Color(
                              0xFF727272)),),
                        ],
                      ),
                    ),],
                  ),
                ),

                Container(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  margin: const EdgeInsets.symmetric(horizontal: 20.0,vertical: 8.0),
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(8)),
                  ),
                  child: ExpansionTile(
                    textColor: Colors.teal,
                    title: Text("Phone Num"),
                    children: [
                      Container(
                        padding: EdgeInsets.symmetric(vertical: 10.0),
                        child: Row(
                          children: [
                            Icon(Icons.phone,color: Colors.teal,),
                            SizedBox(width: 20.0,),
                            Text("0313 9217887",style: TextStyle(fontSize: 16.0,color: Color(
                                0xFF727272)),),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        )
    );
  }
}

