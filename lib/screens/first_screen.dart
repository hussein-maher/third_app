import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(365.0), // here the desired height
          child: AppBar(
            flexibleSpace: FlexibleSpaceBar(
              background: Image.asset("assets/images/alarm-clock-icon-background-illustration-free-vector.jpg",),
            ),
            actions: [
              IconButton(onPressed: (){}, icon: Icon(Icons.favorite_border,size: 50,)),
            ],
            leading: IconButton(onPressed: (){}, icon: Icon(Icons.arrow_back,size: 50,)),
          )
      ),
      body: Column(

        children: [
          const SizedBox(height: 20),
          //title
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 12.0),
            child: Row(
            children: [
              Text("C2 Analog Clock",style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.w600,
              ),),
              SizedBox(width: 100,),
              Text("\$542",style: TextStyle(fontSize: 25,fontWeight: FontWeight.w400),),
            ],
            ),
          ),
          SizedBox(height: 10),
          //Review
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: Row(
              children: [
              RatingBar.builder(
              initialRating: 3,
              minRating: 1,
              direction: Axis.horizontal,
              allowHalfRating: true,
              itemCount: 5,
              itemPadding: const EdgeInsets.symmetric(horizontal: 4.0),
              itemBuilder: (context, _) => Icon(
                Icons.star,
                color: Colors.amber,
              ),
              onRatingUpdate: (rating) {
                print(rating);
              },
            ),
                Text("4/5(12)",style: TextStyle(fontSize: 20),),
              ],
            ),
          ),
          SizedBox(height: 20),
           //descreption
           const Padding(
             padding: EdgeInsets.symmetric(horizontal: 20.0),
             child: Row(
             children: [
               Text("An alarm clock is a timepiece designed to ring \na loud sound or make other alerts \n at a predetermined time, primarily to wake\n people from sleep.\n Modern alarm clocks often feature digital displays,\n can be set for different alarms",textAlign: TextAlign.left)
             ],
                       ),
           ),
          SizedBox(height: 20),
          //type&material
          const Row(
            children: [
           Padding(
             padding: EdgeInsets.all(15.0),
             child: Text("Type",style: TextStyle(fontSize: 25),),
           ),
              SizedBox(width: 100,),
              Text("Material",style: TextStyle(fontSize: 25),)
            ],
          ),

           //info
            Row(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 30.0),
                child: Container(
                    decoration: BoxDecoration(
                        color: Colors.grey,
                        borderRadius: BorderRadius.circular(12)),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text("Analog",style: TextStyle(fontSize: 20,),),
                    )),
              ),
              SizedBox(width: 40,),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 30.0),
                child: Container(
                    decoration: BoxDecoration(
                        color: Colors.grey,
                        borderRadius: BorderRadius.circular(12)),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text("Plastic",style: TextStyle(fontSize: 20,),),
                    )),
              ),
            ],
          ),
        ],
      ),
     bottomNavigationBar: Row(
       mainAxisAlignment: MainAxisAlignment.center,
       children: [
         Padding(
           padding: const EdgeInsets.all(8.0),
           child: Container(
             width: 300,
           height: 50,
             decoration: BoxDecoration(
                 color: Colors.black,
                 borderRadius: BorderRadius.circular(12)),
             child: Padding(
               padding: const EdgeInsets.symmetric(horizontal: 50.0),
               child: Text("Add To Cart",style: TextStyle(fontSize: 35,color: Colors.white),),
             ),
           ),
         ),
       ],
     )

    );
  }
}
