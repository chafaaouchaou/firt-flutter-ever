import 'package:flutter/material.dart';


class detailes extends StatefulWidget {

  final int? index;
  final List? data;



  const detailes({ 
    @required this.data,
    @required this.index,
   // @required this.
    
    Key? key }) : super(key: key);

  @override
  State<detailes> createState() => _detailesState();
}






class _detailesState extends State<detailes> {

    


  @override
  Widget build(BuildContext context) {
     var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
 
print(widget.data![widget.index!]);






    return Scaffold(
       appBar: AppBar(),
      body: Container(
        height: height,
        width:width ,
        child: ListView(
          children: <Widget>[
            Expanded(
              child: Container(
               // color: Colors.amber,
               child: Padding(
                 padding: const EdgeInsets.all(8.0),
                 child: Image(
                   image: AssetImage(widget.data![widget.index!]['image'], 
                 ),
                 width: width,
                 height: height*0.7,
                 fit: BoxFit.fill,
                 ),
               ),

              ),
              ),
              Expanded(
                child: Container(
                 // color: Color.fromARGB(255, 18, 206, 34),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.stretch,
                                  children: [
                                    Text(
                                      widget.data![widget.index!]['text1'],
                                      style: TextStyle(
                        fontWeight:FontWeight.bold,
                        fontSize:20,

                      ),                                   
                                      ),
                                     SizedBox(height: 10,),

                                     Card(

                                      child:Text(
                                    widget.data![widget.index!]['lorem'],
                                      style: TextStyle(
                        fontWeight:FontWeight.bold,
                        

                      ),
                     

                                     ),
                                     ),
                                     SizedBox(height: 10,),
                                     Text(
                                      "Total",
                                      style: TextStyle(
                        fontWeight:FontWeight.bold,
                        

                      ),                                   
                                      ),
                                      SizedBox(height: 10,),
                                     Text(
                                      widget.data![widget.index!]['prix'],
                                      style: TextStyle(
                        fontWeight:FontWeight.bold,
                        

                      ),                                   
                                      ),
                                  ],
                                ),
                  ),

              ))

          ],

        ),


      ),

      floatingActionButton: FloatingActionButton.extended(
        onPressed: (){},
        label: Text(
          'book now',
          style: TextStyle(color: Colors.black),
          ),
          shape:RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12)
            ) ,
        ),
      
    );
  }
}




















