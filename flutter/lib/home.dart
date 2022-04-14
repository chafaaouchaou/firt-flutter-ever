
import 'package:flutter/material.dart';



 
class home extends StatefulWidget {
  const home({ Key? key }) : super(key: key);

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  @override
  Widget build(BuildContext context) {
     var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;

    return Scaffold(
      
      // appBar: AppBar(
        
      //     backgroundColor: Colors.blue[900],
      //     title: Text('choose a location'),
      //     centerTitle: true,
      //     elevation: 0,
      //   ),
      
    body: 
    
    
     SafeArea(
       
 child: Container(
          width: width,
          height: height,
        //  color:  Colors.white,

          decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/kk.jpg"),
            fit: BoxFit.cover
          ), 
         
        ),
        child: Padding(
          padding: const EdgeInsets.fromLTRB(10,50,0,0),

          child: Text(
            "let's tour",
            style: TextStyle(
              fontSize: 40,
              fontWeight:FontWeight.bold,
              color: Color.fromARGB(255, 37, 37, 37),

            ),
          ),
        ),
        
          
        )
      ), 
     
        floatingActionButtonLocation: FloatingActionButtonLocation.endTop,
       
          floatingActionButton: Padding(
            padding: const EdgeInsets.all(8.0),
            child: FloatingActionButton(
              onPressed: (){Navigator.pushNamed(context, '/menu');

              },
              
              child: Icon(
                Icons.arrow_forward,
                color: Colors.blue,
              ),
              backgroundColor: Colors.white,
              ),
          ),
            
            // Text(
            //   "let's tour",
            //   style: TextStyle(fontSize: 40,

            //   ),
            // ),
        
     
        
      
    );
  }
}




