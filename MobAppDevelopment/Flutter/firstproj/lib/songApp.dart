import 'package:flutter/material.dart';

class SongApp extends StatefulWidget {
  const SongApp({ Key? key }) : super(key: key);

  @override
  _SongAppState createState() => _SongAppState();
}

class _SongAppState extends State<SongApp> {
  var singerList=[
    {"name":"Arijit Singh", "image":"arijit.jpg","songs":"200+ songs"},
    {"name":"Ali Zafar", "image":"aliZafar.jpg","songs":"100+ songs"},
    {"name":"Atif Aslam", "image":"atif.jpg","songs":"200+ songs"},
    {"name":"Shreya Goshal", "image":"shreya.jpg","songs":"250+ songs"},
  
    ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.sort),
        actions: 
        [
          Icon(Icons.search),
          SizedBox(width: 30,)
        ],
      ),
      body: Padding(padding: EdgeInsets.symmetric(horizontal: 25,vertical:10)
      ,child: ListView(
        children: [
          Text("Thrilling Week",style: TextStyle(color: Colors.blueAccent,fontSize: 32,fontWeight: FontWeight.bold),),
          Text("2025 top songs to hang on",style: TextStyle(color: const Color.fromARGB(255, 0, 0, 0),fontSize: 20,fontWeight: FontWeight.bold),),
          SizedBox(height: 10,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Explore",style: TextStyle(color: Colors.black,fontSize: 25,fontWeight: FontWeight.bold)),
              Icon(Icons.local_fire_department,size: 30,color: Colors.blueGrey,)
            ],
          ),
          SizedBox(height: 10,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text("Recommended",style: TextStyle(color: Colors.blueAccent,fontSize: 18,fontWeight: FontWeight.w500)),
              Text("2025 songs",style: TextStyle(color: Colors.blueGrey,fontSize: 18,fontWeight: FontWeight.w500)),
              Text("New songs",style: TextStyle(color: Colors.blueGrey,fontSize: 18,fontWeight: FontWeight.w500)),
             
            ],
          ),

          Padding(
            padding: const EdgeInsets.all(10.0),
            child: SizedBox(
              height:315,
            
            child:
            ListView.builder(
              scrollDirection:Axis.horizontal,
              itemBuilder: (context,index){
                return 
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                  child: Column(
                                children: [
                  Container(
                    height: 200,
                    width: 200,
                    decoration: BoxDecoration(
                      color: Colors.blueGrey,
                      borderRadius: BorderRadius.circular(20),
                      image: DecorationImage(image: AssetImage("assets/image/${singerList[index]["image"].toString()}"),fit: BoxFit.cover)
                    ),
                  ),
                  Row(
                    children: [
                      Column(
                        children: [
                          Text(singerList[index]["name"].toString(),),
                          Text(singerList[index]["songs"].toString(),)
                        ],
                      ),
                      Icon(Icons.favorite,)
                    ],
                  ),
                              
                              
                                ],
                              ),
                );
                  
                
                
              },
              itemCount: singerList.length,
            )
            
             
            ),
          )
        ],
      ),
      
      ),
    );
  }
}