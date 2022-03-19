import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:muk_connect/components/showroom_data.dart';

class ShowRoom extends StatefulWidget {
  @override
  _ShowRoomState createState() => _ShowRoomState();
}

class _ShowRoomState extends State<ShowRoom> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text(
          "ShowRoom",
          style: GoogleFonts.pacifico(fontSize: 20),
        ),
        actions: [
          IconButton(
            tooltip: "Add Blog",
            onPressed: () {},
            icon: Icon(Icons.add_box_rounded, size: 40),
          ),
          IconButton(
            tooltip: "Search",
            onPressed: () {},
            icon: Icon(Icons.search, size: 40),
          ),
        ],
      ),
      body: CustomScrollView(
        // key: PageStorageKey<String>("pageone"),
        physics: BouncingScrollPhysics(),
        slivers: [
          SliverPadding(
            padding: const EdgeInsets.all(8.0),
            sliver: SliverList(
              delegate: SliverChildBuilderDelegate(
                (BuildContext context, int index) {
                  var mydata = myBlogs[index];
                  return Container(
                    width: MediaQuery.of(context).size.width,
                    // color: Colors.grey[700],
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(12),
                            topLeft: Radius.circular(12),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                CircleAvatar(
                                  radius: 30,
                                  backgroundImage:
                                      AssetImage("assets/images/item3.jpg"),
                                  backgroundColor: Colors.transparent,
                                ),
                                SizedBox(
                                  width: 8,
                                ),
                                Text(
                                  "${mydata.title}",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20,
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                        ClipRRect(
                            borderRadius: BorderRadius.only(
                              topRight: Radius.circular(12),
                              topLeft: Radius.circular(12),
                            ),
                            child: Image(
                              image: AssetImage("${mydata.imageUrl}"),
                              height: 450,
                              width: MediaQuery.of(context).size.width,
                              fit: BoxFit.fill,
                              alignment: Alignment.center,
                            )),
                        ClipRRect(
                            borderRadius: BorderRadius.only(
                              topRight: Radius.circular(12),
                              topLeft: Radius.circular(12),
                            ),
                            child: ExpansionTile(
                              backgroundColor: Colors.grey[300],
                              title: RichText(
                                textAlign: TextAlign.center,
                                text: TextSpan(
                                  text: "Price: ",
                                  style: TextStyle(
                                    fontSize: 15,
                                    color: Colors.orangeAccent,
                                    fontWeight: FontWeight.w900,
                                  ),
                                  children: [
                                    TextSpan(
                                      text: "${mydata.cost}",
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              children: [
                                Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    RichText(
                                      textAlign: TextAlign.center,
                                      text: TextSpan(
                                        text: "Contact: ",
                                        style: TextStyle(
                                          fontSize: 15,
                                          color: Colors.orangeAccent,
                                          fontWeight: FontWeight.w900,
                                        ),
                                        children: [
                                          TextSpan(
                                            text: "${mydata.tel}",
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontWeight: FontWeight.w400,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ))
                      ],
                    ),
                  );
                },
                childCount: myBlogs.length,
              ),
            ),
          )
        ],
      ),
    );
  }
}
