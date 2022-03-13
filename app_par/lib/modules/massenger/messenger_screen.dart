import 'package:flutter/material.dart';

class MessengerScreen extends StatelessWidget {
  const MessengerScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        titleSpacing: 20.0,
        title: Row(
          children: [
            Padding(
              padding: const EdgeInsetsDirectional.only(end: 10),
              child: CircleAvatar(
                radius: 25,
                child: Container(
                  clipBehavior: Clip.antiAliasWithSaveLayer,
                  width: 50.0,
                  height: 50.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: Image.asset(
                    'assets/image/house1.jpeg',
                    fit: BoxFit.cover,
                    width: 40.0,
                    height: 40.0,
                  ),
                ),
              ),
            ),
            Text(
              "Chat",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 23,
                  fontWeight: FontWeight.bold),
            ),
          ],
        ),
        actions: [
          IconButton(
            icon: CircleAvatar(
              backgroundColor: Colors.blue,
              radius: 25,
              child: Icon(
                Icons.camera_alt,
                color: Colors.white,
                size: 17,
              ),
            ),
            onPressed: () {},
          ),
          IconButton(
            icon: CircleAvatar(
              backgroundColor: Colors.blue,
              radius: 25,
              child: Icon(
                Icons.edit,
                color: Colors.white,
                size: 17,
              ),
            ),
            onPressed: () {},
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(

          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 10,
              ),
              Container(
                width: double.infinity,
                height: 48,
                decoration: BoxDecoration(
                  color: Colors.grey[300],
                  borderRadius: BorderRadius.circular(50),
                ),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "Search",
                    hintStyle: TextStyle(color: Colors.black, fontSize: 22),
                    prefixIcon: Icon(
                      Icons.search,
                      size: 29,
                      color: Colors.black,
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(50),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                height: 100,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) => storyItem(),
                    itemCount: 20),
              ),
              SizedBox(
                height: 20,
              ),
              ListView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) => listItem(),
                itemCount: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget storyItem() => Padding(
        padding: const EdgeInsets.symmetric(horizontal: 6),
        child: Container(
          height: 60,
          child: Column(
            children: [
              Stack(
                alignment: Alignment.bottomRight,
                children: [
                  CircleAvatar(

                    radius: 30,
                    child: Container(
                      clipBehavior: Clip.antiAliasWithSaveLayer,
                      width: 50.0,
                      height: 50.0,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: Image.asset(
                        'assets/image/house1.jpeg',
                        fit: BoxFit.cover,
                        width: 40.0,
                        height: 40.0,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsetsDirectional.only(
                      bottom: 2,
                      end: 2,
                    ),
                    child: CircleAvatar(
                      backgroundColor: Colors.green,
                      radius: 8,
                    ),
                  ),
                ],
              ),
              Text(
                "    Ali\n Ahmad",
                style: TextStyle(fontSize: 17),
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              )
            ],
          ),
        ),
      );

  Widget listItem() => Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            Stack(
              alignment: Alignment.bottomRight,
              children: [
                CircleAvatar(
                  radius: 30,
                  child: Container(
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                    width: 58.0,
                    height: 58.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: Image.asset(
                      'assets/image/house1.jpeg',
                      fit: BoxFit.cover,
                      width: 40.0,
                      height: 40.0,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsetsDirectional.only(
                    bottom: 2,
                    end: 2,
                  ),
                  child: CircleAvatar(
                    backgroundColor: Colors.green,
                    radius: 8,
                  ),
                ),
              ],
            ),
            SizedBox(
              width: 20,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Ali Ahmad",
                    style: TextStyle(fontSize: 17, fontWeight: FontWeight.w700),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                  Row(
                    children: [
                      Expanded(
                          child: Text(
                        "Hello my name is Ali ",
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      )),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 5),
                        child: Container(
                          width: 8.0,
                          height: 8.0,
                          decoration: BoxDecoration(
                              color: Colors.blue, shape: BoxShape.circle),
                        ),
                      ),
                      Text(" 11:48 am"),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      );
}
