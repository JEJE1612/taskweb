import 'package:flutter/material.dart';
import 'package:taskweb1/weblayout..dart';

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(
          vertical:40 ,
          horizontal: 50 
           ),
          child: Container(
            height: 100,
            decoration: BoxDecoration(
              color:Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey,
                  offset: Offset(2, 3)

                )
              ],
              borderRadius: BorderRadius.circular(50),

            ),
          child: Row(
             children: [
              Expanded(
                flex: 2,
                child: HomePage()),
              
              Expanded(
                flex: 2,
                child: HomePage()),
              
              Expanded(
                flex: 2,
                child: HomePage()), 
               Expanded(
                flex: 1,
                child:CircleAvatar(
                  radius: 40,
                  backgroundColor:  const Color.fromARGB(255, 8, 172, 156),
                  child: IconButton(
                    onPressed:(){} ,
                     icon: Icon(Icons.search,size: 40,color: Colors.white,)),
                )),

             ],
          ),
          ),
      

        ) 
      
      ,
    ) ;
  }
}
