import 'package:flutter/material.dart';

class PartyDesc extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;

    return Scaffold(
        backgroundColor: Colors.grey[200],
        body: ListView(
          // shrinkWrap: true,
          children: <Widget>[
            Stack(
              overflow: Overflow.visible,
              children: <Widget>[
                Container(
                    height: MediaQuery.of(context).size.height * 0.4,
                    width: MediaQuery.of(context).size.width,
                    child: Image(
                        fit: BoxFit.cover,
                        image: AssetImage("assets/asset-3.png"))),
                Positioned(
                  top: 20,
                  left: 20,
                  child: Container(
                      height: 40,
                      width: 40,
                      // color: Colors.white,
                      child: FloatingActionButton(
                          backgroundColor: Colors.white,
                          shape: CircleBorder(),
                          elevation: 20,
                          child: Icon(
                            Icons.arrow_back_ios,
                            color: Color(0xFF5F54ED),
                            size: 20,
                          ),
                          onPressed: () {
                            Navigator.pop(context);
                          })),
                ),
                Positioned(
                    top: 200,
                    left: 55,
                    child: Container(
                        padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                        height: MediaQuery.of(context).size.height * 0.225,
                        width: MediaQuery.of(context).size.width * 0.7,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          color: Colors.white,
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Padding(
                              padding: EdgeInsets.only(left: 10),
                              child: Text("Spring Welcome Party",
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                      fontFamily: "Montserrat")),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 10),
                              child: Text("Hosted By: DJ Clint",
                                  style: TextStyle(
                                      fontSize: 10, color: Colors.grey)),
                            ),
                            SizedBox(height: 5),
                            Container(
                                padding:
                                    const EdgeInsets.fromLTRB(10, 10, 0, 0),
                                height:
                                    MediaQuery.of(context).size.height * 0.1,
                                // width: 20,
                                child: Row(children: <Widget>[
                                  Container(
                                    color: Colors.grey[200],
                                    padding: EdgeInsets.only(top: 5.0),
                                    width: 50,
                                    height: 70,
                                    child: Column(
                                      children: <Widget>[
                                        Text("Dec",
                                            style: TextStyle(
                                                fontSize: 15,
                                                fontWeight: FontWeight.bold)),
                                        Text("22",
                                            style: TextStyle(
                                                color: Color(0xFF5F54ED),
                                                fontSize: 20.0,
                                                fontWeight: FontWeight.bold))
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    width: 20,
                                  ),
                                  Column(children: <Widget>[
                                    Row(
                                      children: <Widget>[
                                        Text("306 Rchmond Drive")
                                      ],
                                    ),
                                    Row(
                                      children: <Widget>[
                                        Icon(Icons.person,
                                            color: Color(0xFF5F54ED)),
                                        Text("129"),
                                        SizedBox(
                                          width: 10,
                                        ),
                                        Icon(Icons.access_time,
                                            color: Color(0xFF5F54ED)),
                                        Text("5 - 7 PM"),
                                      ],
                                    )
                                  ])
                                ])),
                          ],
                        ))),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 110.0),
              child: Column(
                children: <Widget>[
                  Container(
                    width: 100,
                    child: RaisedButton(
                        color: Color(0xFF5F54ED),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(Radius.circular(10))),
                        child: Text(
                          "Reserve",
                          style: TextStyle(color: Colors.white),
                        ),
                        onPressed: () {}),
                  ),
                ],
              ),
            ),
            Container(
                padding: EdgeInsets.fromLTRB(20, 10, 20, 0),
                height: MediaQuery.of(context).size.height * 0.2,
                width: MediaQuery.of(context).size.width,
                child: Column(
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Icon(Icons.info, color: Colors.black38),
                        SizedBox(width: 10),
                        Text("Description",
                            style: TextStyle(
                                color: Colors.black54, fontSize: 15.0))
                      ],
                    ),
                    SizedBox(height: 10),
                    Text(
                        "The Spring Welcome Party 2020 is brought to you by DJ Clint. Come party to the best of afrobeats and make new friends",
                        style: TextStyle(color: Colors.black54)),
                  ],
                )),
                Container(
                  padding: EdgeInsets.fromLTRB(20,10,10,20),
                  height: screenSize.height * 0.2,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Row(children: <Widget>[
                        Text("Gallery", textAlign: TextAlign.left, style: TextStyle(fontSize: 15, color: Colors.black54, fontWeight: FontWeight.bold)),
                      ],),
                      // ListView(
                      //   scrollDirection: Axis.horizontal,
                      //   children: <Widget>[
                      //   GalleryImage(imageUrl: "assets/asset-1.png",),
                      //   GalleryImage(imageUrl: "assets/asset-1.png",),
                      //   GalleryImage(imageUrl: "assets/asset-1.png",),
                      //   GalleryImage(imageUrl: "assets/asset-1.png",)



                      // ],)
                    ]
                  ),
                ),

                Container(
                  padding: EdgeInsets.only(left:20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                  Row(
                    children: <Widget>[
                      Text("Activities", style: TextStyle(color: Colors.black54, fontWeight: FontWeight.bold)),
                    ],
                  ),
                  SizedBox(height: 10),
                  Text("Beer Pong", style: TextStyle(color: Colors.black54)),
                  Text("Spin the Bottle", style: TextStyle(color: Colors.black54)),
                  Text("Truth or Dare", style: TextStyle(color: Colors.black54)),

                  
                ],),),
                
                Padding(
                  padding: const EdgeInsets.only(top: 20.0),
                  child: Container(
                    height: screenSize.height * 0.2,
                    padding: EdgeInsets.only(left:20),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                    Row(
                      children: <Widget>[
                        Text("Dress Code", style: TextStyle(color: Colors.black54, fontWeight: FontWeight.bold)),
                      ],
                    ),
                    SizedBox(height: 10),
                    Text("Metro Urban", style: TextStyle(color: Colors.black54)),
               

                    
                  ],),),
                ),

                Container(
                    height: screenSize.height * 0.15,
                    padding: EdgeInsets.only(left:20, right: 20),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                    Row(
                      children: <Widget>[
                        Text("Invite Friends", style: TextStyle(color: Colors.black54)),
                      ],
                    ),
                    SizedBox(height: 10),
                    TextField(
                      decoration: InputDecoration(
                        fillColor: Colors.white,
                        focusColor: Colors.white,
                        hoverColor: Colors.grey,
                        border: OutlineInputBorder(),
                        hintText: 'E-mail',
                        suffixIcon: Icon(Icons.file_upload, color: Colors.black)
                      ),
                      // onSubmitted: () {},
                      keyboardType: TextInputType.emailAddress,
                      cursorColor: Colors.black, 
                      cursorRadius: Radius.zero,
                      cursorWidth: 2.0,
                      keyboardAppearance: Brightness.light,
                      showCursor: true,
                      textAlign: TextAlign.left,
                    )
                    
               

                    
                  ],),),

          ],
        ));
  }
}

class GalleryImage extends StatelessWidget {
  const GalleryImage({
    this.imageUrl,
  });

  final String imageUrl;
  @override
  Widget build(BuildContext context) {
    return Image(
        height: 100,
        image: AssetImage(imageUrl.isEmpty ? "assets/drink_image" : imageUrl));
  }
}
