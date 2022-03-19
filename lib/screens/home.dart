import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:muk_connect/components/RoundedInputField.dart';
import 'package:muk_connect/components/home_data.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // var color = Theme.of(context).primaryColor;
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text(
          "MukConnect",
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
        key: PageStorageKey<String>("pageone"),
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
                                      AssetImage("assets/images/item1.jpg"),
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
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              RoundedInputField(
                                hintText: "Write a comment...",
                                fcolor: Colors.white70,
                              )
                            ],
                          ),
                        )
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
