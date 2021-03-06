import 'dart:convert';
import 'dart:core';
import 'dart:async' show Future;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_financials_app/model/usermodel.dart';
import 'package:flutter_financials_app/pages/jsonpage.dart';
import 'package:google_fonts/google_fonts.dart';


class Checkings extends StatefulWidget {

  @override
  _CheckingsState createState() => _CheckingsState();
}




class _CheckingsState extends State<Checkings> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.only(top: 8),
        child: ListView(
            physics: ClampingScrollPhysics(),
          children: <Widget>[Container(
            margin: EdgeInsets.only(left: 16,right: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[Icon(Icons.notes,color: Colors.grey[600],size: 28.0,),
                Container(
                height: 59,
                  width: 59,
                  child: Icon(Icons.person,color: Colors.blue[600],size: 28.0,),
                  decoration: BoxDecoration(),
              )],
            ),
          ),
            SizedBox(height: 25,
            ),
            Padding(
              padding: const EdgeInsets.only(left:16,bottom: 16),
              child: Column(
                crossAxisAlignment:  CrossAxisAlignment.start,
                children: <Widget>[
                  Text('Good Morning', style: GoogleFonts.inter(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                    color: Colors.black
                  ),),
                  Text("Antonio Flores" ,style: GoogleFonts.inter(
                    fontSize: 30,
                    fontWeight: FontWeight.w700,
                    color: Colors.black
                  ),)
                ],
              ),
            ),
            Container(
              height: 199,
              child: new FutureBuilder(builder: (content,snapshot){
                var showData = json.decode(snapshot.data.toString());
                return new ListView.builder(
                  scrollDirection: Axis.horizontal,
                  padding: EdgeInsets.only(left: 16,right:6),
                  itemCount: showData.length ,
                  itemBuilder: (BuildContext context, int index) {
                  return Container(
                    margin: EdgeInsets.only(right: 15),
                    height: 199,
                    width: 344,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(28),
                        image: DecorationImage(
                          image: AssetImage(
                            'assets/bankcard.jpeg'),
                          fit: BoxFit.fill
                        ),
                        color: Colors.blue[700]
                      ),
                    child: Stack(
                      children: <Widget>[
                        Positioned(
                          right: 21,
                          bottom: 21,
                          child: Text('\$' + showData[index]['currentBalance']['amount'].toString(), style:  GoogleFonts.inter(
                            color: Colors.white
                          ),
                          ),
                        ),
                        Positioned(
                          left: 21,
                          bottom: 21,
                          child: Text(showData[index]['accountType'], style:  GoogleFonts.inter(
                              color: Colors.white
                          ),
                          ),
                        ),
                    Positioned(
                      left: 70,
                    bottom: 70,
                    child: Text(showData[index]['accountName'], style:  GoogleFonts.inter(
                    color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 18
                    ),
                    ),
                    ),
                      ],
                    ),
                  );
                },
                );
              }, future: DefaultAssetBundle.of(context).loadString('assets/local.json'),
              ),

              // child: ListView.builder(
              //   scrollDirection: Axis.horizontal,
              //     padding: EdgeInsets.only(left: 16,right:6),
              //     itemCount: 3,
              //     itemBuilder: (context,index){
              //   return Container(
              //
              //     decoration: BoxDecoration(
              //       borderRadius: BorderRadius.circular(28),
              //       image: DecorationImage(
              //         image: AssetImage(
              //           'assets/bankcard.jpeg'),
              //         fit: BoxFit.fill
              //       ),
              //       color: Colors.blue[700]
              //     ),
              //   );
              // }),
            ),
            Padding(
              padding: const EdgeInsets.only(left:16.0,bottom: 13,top: 29),
              child: Row(
                children: <Widget>[Text('Transactions',style:GoogleFonts.inter(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.black
                ),),Row()],
              ),
            ),
            // ListView(
              // children: [
              //   Stack(
              //     children: <Widget>[
                    Container(
                      height: MediaQuery.of(context).size.height/2,
                      width: MediaQuery.of(context).size.width,
                      // color: Color(0xFFF3B2b4),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(topRight: Radius.circular(36.0),topLeft: Radius.circular(36.0))
                      ),

                      child: new FutureBuilder(builder: (context,snapshot){
                        var transactions = json.decode(snapshot.data.toString());
                        return new ListView.builder(
                            itemCount: transactions.length,
                            itemBuilder: (BuildContext context, int index) {
                          return Card(
                            child: ListTile (
                          onTap: (){
                            Navigator.pushNamed(context,'/transactions');
                            },
                              title: Text(transactions[index]['expenseName']),
                              subtitle: Text(transactions[index]['time']),

                              leading: Icon(
                                transactions[index]['expense'] == 'taken' ?  Icons.arrow_circle_down_sharp : Icons.arrow_circle_up_sharp,
                                color: transactions[index]['expense'] == 'taken' ?  Colors.red : Colors.green,
                                size: 30,
                              ),
                              trailing: Text(transactions[index]['taken']['amount'],style: GoogleFonts.inter(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.indigo
                              ),),
                            ),
                          );
                        });
                      }, future: DefaultAssetBundle.of(context).loadString('assets/transactions.json'),
                      ),

                      // child: Padding(
                      //   padding: const EdgeInsets.only(top:20.0,left: 5.0,right: 5.0),
                      //   child: ListView.builder(
                      //     itemCount: 8,
                      //     itemBuilder: (context,index){
                      //       return Card(
                      //         child: ListTile(
                      //           onTap: (){
                      //             Navigator.pushNamed(context,'/transactions');
                      //           },
                      //           title: Text('Netflix'),
                      //           subtitle: Text('Sep 14, 5:20pm'),
                      //           leading: Icon(Icons.arrow_upward_rounded,color: Colors.green,size: 26,),
                      //           trailing: Text('- \$200.00',style: GoogleFonts.inter(
                      //               fontSize: 18,
                      //               fontWeight: FontWeight.w500,
                      //               color: Colors.indigo
                      //           ),),
                              // ),
                      //       );
                      //     },
                      //   ),
                      // ),
                    ),
                    // Positioned(top: MediaQuery.of(context).size.height ,
                    //     child: Container(
                    //       height: MediaQuery.of(context).size.height ,
                    //       width: MediaQuery.of(context).size.width,
                    //       decoration: BoxDecoration(
                    //         borderRadius: BorderRadius.only(topRight: Radius.circular(40.0),
                    //         topLeft: Radius.circular(40.0)
                    //         ),
                    //         color: Colors.red,
                    //       ),
                    // ))
                  // ],
                // )
              // ],
            // )
          ],
        ),
      ),
    );
  }
}

