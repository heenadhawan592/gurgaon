import 'package:flutter/material.dart';

class Test extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return TestState();
  }
}

class TestState extends State<Test> {
  String radioButtonItem = 'ONE';

  // Group Value for Radio Button.
  int id = 1;
  @override

  Widget build(BuildContext context) {

    // TODO: implement build
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.only(top: 80, left: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                margin: new EdgeInsets.only(left: 20),
                child: Text(
                  "Quiz",
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
              ),
              Container(
                decoration: new BoxDecoration(
                  boxShadow: [
                    new BoxShadow(
                      color: Colors.white,
                      blurRadius: 10.0,
                    ),
                  ],
                ),
                width: 350,
                height: 300,
                margin: new EdgeInsets.all(20.0),
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  color: Colors.black,
                  elevation: 10,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            child: Image.asset("assets/clock_icon.png"),
                          ),
                          Container(
                            child: Text(
                              "2:53",
                              style: TextStyle(color: Colors.orange),
                            ),
                          )
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            margin: new EdgeInsets.only(
                                top: 10, bottom: 5, left: 10),
                            child: Text(
                              "Total Questions",
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                          Spacer(),
                          Container(
                            margin: new EdgeInsets.only(right: 40),
                            child: Text(
                              "20",
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                          Spacer()

                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            margin: new EdgeInsets.only(
                                top: 10, bottom: 5, left: 10),
                            child: Text(
                              "Question Answer",
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                          Spacer(),

                          Expanded(
                              child: Divider(color: Colors.green,thickness: 4,
                                endIndent: 35,)
                          ),
                          Spacer()
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            margin: new EdgeInsets.only(
                                top: 10, bottom: 5, left: 10),
                            child: Text(
                              "Question Skipped",
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                          Spacer(),
                          Expanded(
                              child: Divider(color: Colors.red,thickness: 4, endIndent: 35)
                          ),
                          Spacer()
                        ],
                      ),
                      Container(
                        height: 160,
                        // color: Colors.white30,
                        child: GridView.count(
                            crossAxisCount: 7,
                            childAspectRatio: 1.0,
                            padding: const EdgeInsets.all(5.0),
                            mainAxisSpacing: 2.0,
                            crossAxisSpacing: 2.0,
                            children: <String>[
                              "1  ",
                              " 2  ",
                              "  3   ",
                              "  4   ",
                              " 5   ",
                              "  6  ",
                              "  7  ",
                              " 8  ",
                              " 9  ",
                              " 10 ",
                              " 11 ",
                              " 12 ",
                              " 13 ",
                              " 14 ",
                              " 15  ",
                              " 16 ",
                              " 17  ",
                              " 18 ",
                              " 19 ",
                              " 20 "
                            ].map((String url) {
                              return Container(
                                  alignment: Alignment.center,
                                  child: Center(
                                    child: Card(
                                      color: Colors.white,
                                      child: Text(
                                        url,
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                  ));
                            }).toList()),
                      )
                    ],
                  ),
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: new EdgeInsets.only(right: 280),
                    child: Text(
                      "Question1.",
                      style: TextStyle(
                        color: Colors.grey,
                      ),
                    ),
                  ),
                  Container(
                    margin: new EdgeInsets.only(top: 10),
                    child: Text(
                      "How many sq ft of Kitchen is required in a 500sq ft of a resturant?",
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.white,
                      ),
                    ),
                  ),
                 Theme( data: Theme.of(context).copyWith(
                     unselectedWidgetColor: Colors.white,
                     disabledColor: Colors.white
                 ), child:  Row(
                   mainAxisAlignment: MainAxisAlignment.start,
                   children: <Widget>[
                     Radio(
                       value: 1,
                       groupValue: id,
                       onChanged: (val) {
                         setState(() {
                           radioButtonItem = 'ONE';
                           id = 1;
                         });
                       },
                     ),
                     Text(
                       '300',
                       style: new TextStyle(fontSize: 17.0,color: Colors.white),
                     ),

                     Container(
                       margin: EdgeInsets.only(left: 100),
                       child: Radio(
                         value: 2,
                         groupValue: id,
                         onChanged: (val) {
                           setState(() {
                             radioButtonItem = 'TWO';
                             id = 2;
                           });
                         },
                       ),
                     ),
                     Text(
                       '450',
                       style: new TextStyle(
                         fontSize: 17.0,color: Colors.white
                       ),
                     ),


                   ],
                 ),),
                  Theme( data: Theme.of(context).copyWith(
                      unselectedWidgetColor: Colors.white,
                      disabledColor: Colors.white,
                  ), child:  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Radio(
                        value: 3,
                        groupValue: id,
                        onChanged: (val) {
                          setState(() {
                            radioButtonItem = 'FOUR';
                            id = 3;
                          });
                        },
                      ),
                      Text(
                        '200',
                        style: new TextStyle(fontSize: 17.0,color: Colors.white),
                      ),

                      Container( margin: EdgeInsets.only(left: 100),
                        child: Radio(
                          value: 4,
                          groupValue: id,
                          onChanged: (val) {
                            setState(() {
                              radioButtonItem = 'TWO';
                              id = 4;
                            });
                          },
                        ),
                      ),
                      Text(
                        '350',
                        style: new TextStyle(
                          fontSize: 17.0,color: Colors.white
                        ),
                      ),


                    ],
                  ),),
                  Row(mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(child: Image.asset("assets/prev.png"),),
                    Container(child: Text("   PREV   ",   style: new TextStyle(
                        fontSize: 18.0,color: Colors.grey
                    ),),),
                    Container(child: Text("  SUBMIT ANSWER ",   style: new TextStyle(
                        fontSize: 20.0,color: Colors.yellow
                    ),),),
                    Container(child: Text("  Next   ",   style: new TextStyle(
                        fontSize: 20.0,color: Colors.white
                    ),),),
                    Container(child: Image.asset("assets/next.png"),),

                  ],)
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}



