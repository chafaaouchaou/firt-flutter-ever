import 'package:flutter/material.dart';
import 'package:tictac/detailes.dart';




class menu extends StatefulWidget {
  const menu({ Key? key }) : super(key: key);

  @override
  State<menu> createState() => _menuState();
}

class _menuState extends State<menu> {
  @override
  Widget build(BuildContext context) {
     var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    

void changer(int index,List data)
{
  Navigator.push(
  context, 
  MaterialPageRoute(builder: (context)=> detailes(index:index,data:data) ),
  
  );


}


  Map data1={
    "image":'assets/a1.jpg',
    "text1":'sea is good',
    "text2":'very nice',
    "lorem":"  printer took a galley of type and scrambled it to make a type specimen boiellyontrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of de Finibus Bonorum et Malorum (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, Lorem ipsum dolor sit amet.., comes from a line in section 1.10.32.",
    "prix":"890.88 DZD"
  };


  Map data2={
    "image":'assets/a2.jpg',
    "text1":'night is good',
    "text2":'nice nice',
    "lorem":'blishing software like Aldus PageMaker including versions of Lorem Ipsum.',
    "prix":"458.99 DZD"
  };
  Map data3={
    "image":'assets/a3.jpg',
    "text1":'city is good',
    "text2":'yees nice',
    "lorem":"Lorem Ipsum is simply dummy text of the printing and typesetting industry",
    "prix":"455.4 DZD"
  };
  Map data4={
    "image":'assets/a4.jpg',
    "text1":'bordj khalifa is good',
    "text2":'nice yes',
    'lorem':"Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown",
    "prix":"111.00 DZD"
  };

List data=[data1,data2,data3,data4];
    return Scaffold(


      body:

      Container(
      //  color: Colors.black,
       // height: heig,
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  CircleAvatar(
                    backgroundImage: AssetImage('assets/tt.jpg'),

                  ),
                  SizedBox(width: 20,),
                  Text(
                    "heeee Chafaa",
                    style: TextStyle(
                      fontWeight:FontWeight.bold,
                      fontSize:20,

                    ),
                  ),
                  
                ],
              ),
              SizedBox(height: 20,),
              Text("where would ",
              style: TextStyle(
                      fontWeight:FontWeight.bold,
                      fontSize:20,

                    ),
              ),
              Text("you like to visit",
              style: TextStyle(
                      fontWeight:FontWeight.bold,
                      fontSize:20,

                    ),
              ),
              SizedBox(height: 20,),
              Row(
                
                children: [
                  Card(
                    
                    child: 
                     
                      Row(
                      
                        children: [
                          Icon(Icons.search),
                          SizedBox(width: 10,),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(0,10,100,10),
                            child: Text("search          ",
                  ),
                          ),
                        ],
                      ),
                   ),
                   Icon(
                     Icons.sentiment_satisfied_rounded,
                     ),
                ],
              ),
              
                  
                //color: Colors.amber,
                  
                 SizedBox(
                  //width:width ,
                 height: height*0.56,
                

                child: ListView.builder(
                  itemCount: data.length,
                 scrollDirection: Axis.horizontal,
                  
                  itemBuilder: (BuildContext context, int index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        width: width*0.7,
                        
                         decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(data[index]['image']),
            fit: BoxFit.cover
          ), 
      
         ),
            
                        
                
                       //color: Colors.black,
                       child: Column(
                  children: [
                    Expanded(
                      flex: 4,
                      child:Container(
                      //  color: Colors.green,

                    )
                     ),
                     Expanded(
                       flex: 1,
                       child: Container(
                         child: Padding(
                           padding: const EdgeInsets.all(8.0),
                           child: FlatButton(
                             onPressed: (){//Navigator.pushNamed(context, '/detailes');
                               
                                 changer( index, data);






                               
                             }, 
                             color: Color.fromARGB(144, 212, 206, 206),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.stretch,
                                children: [
                                  Text(
                                    data[index]['text1'],
                                    style: TextStyle(
                      fontWeight:FontWeight.bold,
                      fontSize:20,

                    ),                                   
                                    ),
                                    Text(
                                   data[index]['text2'],
                                    style: TextStyle(
                      fontWeight:FontWeight.bold,
                      

                    ),
                   

                                   ),
                                ],
                              ), 


                             ),
                         ),
                            ),
                        ),
                    

                  ],

                ),

                      ),
                    );
                  },
                ),
                


                ),

               
               
        //     decoration: BoxDecoration(
        //   image: DecorationImage(
        //     image: AssetImage("assets/kk.jpg"),
        //     fit: BoxFit.cover
        //   ), 
      
        //  ),
                   /*
              // color: Colors.amber,
                width:width ,
                height: height*0.6,
                child: Column(
                  children: [
                    Expanded(
                      flex: 4,
                      child:Container(
                      //  color: Colors.green,

                    )
                     ),
                     Expanded(
                       flex: 1,
                       child: Container(
                         child: Padding(
                           padding: const EdgeInsets.all(8.0),
                           child: FlatButton(
                             onPressed: (){}, 
                             color: Color.fromARGB(144, 212, 206, 206),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.stretch,
                                children: [
                                  Text(
                                    "hello ther",
                                    style: TextStyle(
                      fontWeight:FontWeight.bold,
                      fontSize:20,

                    ),                                   
                                    ),
                                    Text(
                                    "kifah cv chwia",
                                    style: TextStyle(
                      fontWeight:FontWeight.bold,
                      

                    ),
                   

                                   ),
                                ],
                              ), 


                             ),
                         ),
                            ),
                        ),
                    

                  ],

                ),*/
                
                
        
        

              
            ],

          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Color.fromARGB(166, 40, 40, 41),
        backgroundColor: Color.fromARGB(255, 236, 231, 231),
        items:  [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home"
          ),

          BottomNavigationBarItem(
            icon: Icon(Icons.search),
             label: "search"
          ),

          //  BottomNavigationBarItem(
          //   icon: Icon(Icons.add_location_outlined),
          //   label: "location"
          // ),

          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: "Profil"
          ),
        ]
      ),
      
      
      
      
      
    );
  }
}



















