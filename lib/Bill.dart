import 'package:flutter/material.dart';
import 'constants.dart';
import 'Product.dart';
import 'page.dart';

class Bill extends StatefulWidget {
   Bill({Key? key,}) : super(key: key);


  @override
  State<Bill> createState() => _BillState();
}

class _BillState extends State<Bill> {
  @override

  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.white60,
      appBar: AppBar(
        title: Text("Your bill"),
        backgroundColor: Colors.grey,
        foregroundColor: Colors.white,
      ),
      body:
      _buildListView(),

    );
  }

  ListView _buildListView(){
    return
      ListView.builder(

          itemCount: 7,
          itemBuilder: (_,index) {
            index++;

              if (index < 7) {
                if (products[index-1].quantity !=0) {
                  return Container(

                    child: Row(
                      children: [
                        Image(image: AssetImage("assets/bag$index.jpeg"),),
                        Text(
                            "                                                                                                                              "),
                        Column(
                          children: [
                            Text("Bag$index", style: TextStyle(fontSize: 20),),
                            Text(" "),
                            Text(
                              "     Quantiy:  ",
                              style: TextStyle(fontSize: 20),),
                            Text(products[index-1].quantity.toString()),

                          ],
                        )


                      ], //Children

                    ),
                  );
                }
                else
                  {
                    return Container(
                      height: 1,
                    );
                  }
              }
              else {
                return Container(
                  width: 1200,
                  height: 200,
                  color: Colors.white70,
                  child: Row(
                    children: [
                      Center(child: Text(
                        "Total Amount:  ", style: TextStyle(fontSize: 20),)),
                      Text("                                                                Rs",style: TextStyle(fontSize: 20),),
                      Text(products[0].t.toString(),style: TextStyle(fontSize: 20),),
                    ],
                  ),

                );

            }
          }



      );
  }

}
/*
  ListView _buildBill(){
  return  ListView.builder(
      itemCount: 1,
      itemBuilder:(_,index){

        return Container(
          height: 200,
          width: 1200,
          child: Column(
              children: [
              Text("Total amount: "),
          ],
        ),
        );

  }
  );
  }
*/

