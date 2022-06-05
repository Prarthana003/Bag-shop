import 'package:flutter/material.dart';
import 'constants.dart';
import 'Product.dart';
import 'Bill.dart';

class Body extends StatefulWidget {
  double? _total=0;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(

          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Wrap(
                spacing: 30,
                children: [
                  Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10)
                  ),
                  Column(
                    children: [
                      SizedBox(
                        height: 100,
                        width: 110,
                        child: TextButton.icon(
                          style: ButtonStyle(
                              backgroundColor:
                              MaterialStateProperty.all(Colors.white)
                          ),
                          onPressed: () {
                            print("clicked");
                            products[0].quantity ++;
                          },

                          icon: Image.asset('assets/bag1.jpeg'),
                          label: Text(" "),
                        ),
                      ),

                      Text(products[0].title,
                          style: TextStyle(
                              color: kTextLightColor, fontSize: 10)),

                      Text("\580", style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 10),
                      ),
                    ],),
                  Column(
                    children: [
                      SizedBox(
                        height: 100,
                        width: 110,
                        child: TextButton.icon(
                          style: ButtonStyle(
                              backgroundColor:
                              MaterialStateProperty.all(Colors.white)
                          ),
                          onPressed: () {
                            products[1].quantity ++;
                            print("clicked");
                          },

                          icon: Image.asset('assets/bag2.jpeg'),
                          label: Text(" "),
                        ),
                      ),
                      Text(products[1].title,
                          style: TextStyle(
                              color: kTextLightColor, fontSize: 10)),

                      Text("\750", style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 10),
                      ),
                    ],),
                ],
              ),


            ],

          ),


        ),
        Center(

          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Wrap(
                spacing: 30,
                children: [
                  Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10)
                  ),
                  Column(
                    children: [
                      SizedBox(
                        height: 100,
                        width: 110,
                        child: TextButton.icon(
                          style: ButtonStyle(
                              backgroundColor:
                              MaterialStateProperty.all(Colors.white)
                          ),
                          onPressed: () {
                            products[2].quantity ++;
                            print("clicked");
                          },

                          icon: Image.asset('assets/bag3.jpeg'),
                          label: Text(" "),
                        ),
                      ),

                      Text(products[2].title,
                          style: TextStyle(
                              color: kTextLightColor, fontSize: 10)),

                      Text("\450", style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 10),
                      ),
                    ],),
                  Column(
                    children: [
                      SizedBox(
                        height: 100,
                        width: 110,
                        child: TextButton.icon(
                          style: ButtonStyle(
                              backgroundColor:
                              MaterialStateProperty.all(Colors.white)
                          ),
                          onPressed: () {
                            products[3].quantity ++;
                            print("clicked");
                          },

                          icon: Image.asset('assets/bag4.jpeg'),
                          label: Text(" "),
                        ),
                      ),
                      Text(products[3].title,
                          style: TextStyle(
                              color: kTextLightColor, fontSize: 10)),

                      Text("\350", style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 10),
                      ),
                    ],),
                ],
              ),


            ],

          ),


        ),
        Center(

          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Wrap(
                spacing: 30,
                children: [
                  Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10)
                  ),
                  Column(
                    children: [
                      SizedBox(
                        height: 100,
                        width: 110,
                        child: TextButton.icon(
                          style: ButtonStyle(
                              backgroundColor:
                              MaterialStateProperty.all(Colors.white)
                          ),
                          onPressed: () {
                            products[4].quantity ++;
                            print("clicked");
                          },

                          icon: Image.asset('assets/bag5.jpeg'),
                          label: Text(" "),
                        ),
                      ),

                      Text(products[4].title,
                          style: TextStyle(
                              color: kTextLightColor, fontSize: 10)),

                      Text("\800", style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 10),
                      ),
                    ],),
                  Column(
                    children: [
                      SizedBox(
                        height: 100,
                        width: 110,
                        child: TextButton.icon(
                          style: ButtonStyle(
                              backgroundColor:
                              MaterialStateProperty.all(Colors.white)
                          ),
                          onPressed: () {
                            products[5].quantity ++;
                            print("clicked");
                          },

                          icon: Image.asset('assets/bag6.jpeg'),
                          label: Text(" "),
                        ),
                      ),
                      Text(products[5].title,
                          style: TextStyle(
                              color: kTextLightColor, fontSize: 10)),

                      Text("\650", style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 10),
                      ),
                    ],),
                ],
              ),


            ],

          ),


        ),
        FloatingActionButton.extended(
            label: Text("             Go to Cart             ",style: TextStyle(fontSize: 20,color: Colors.white),),
            backgroundColor: Colors.redAccent,
            onPressed: (){



            for(int i=0;i<6;i++) {

                  products[0].t = products[0].t + (products[i].quantity * products[i].price);


            }



              Navigator.push(
                context,MaterialPageRoute(builder: (context)=>  Bill()),
              );

            }),
      ],
    );
  }

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    throw UnimplementedError();
  }
}
