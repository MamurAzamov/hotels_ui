import 'package:flutter/material.dart';
class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 230,
              width: double.infinity,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/images/ic_header.jpg"),
                  fit: BoxFit.cover,
                )
              ),
              child: Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.bottomRight,
                    colors: [
                      Colors.black.withOpacity(.8),
                      Colors.black.withOpacity(.4),
                    ]
                  )
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    const Text("Best Hotels Ever", style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold, fontSize: 30),
                    textAlign: TextAlign.center,),
                    SizedBox(height: 30,),
                    Container(
                      padding: EdgeInsets.symmetric(vertical: 3),
                      margin: EdgeInsets.symmetric(horizontal: 40),
                      height: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: Colors.white,
                      ),
                      child: const TextField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          prefixIcon: Icon(Icons.search, color: Colors.grey,),
                          hintText: "Search for hotels...",
                          hintStyle: TextStyle(color: Colors.grey, fontSize: 18),
                        ),
                      ),
                    ),
                    SizedBox(height: 30,),
                  ],
                ),
              ),
            ),
            SizedBox(height: 20,),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Business Hotels", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.grey[800], fontSize: 20),),
                  SizedBox(height: 20,),
                  Container(
                    height: 200,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        makeItem(image: "assets/images/ic_hotel1.jpg", title: "Hotel1"),
                        makeItem(image: "assets/images/ic_hotel2.jpg", title: "Hotel2"),
                        makeItem(image: "assets/images/ic_hotel3.jpg", title: "Hotel3"),
                        makeItem(image: "assets/images/ic_hotel4.jpg", title: "Hotel4"),
                        makeItem(image: "assets/images/ic_hotel5.jpg", title: "Hotel5"),
                      ],
                    ),
                  ),
                  SizedBox(height: 20,),
                  Text("Airport Hotels", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.grey[800], fontSize: 20),),
                  SizedBox(height: 20,),
                  Container(
                    height: 200,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        makeItem(image: "assets/images/ic_hotel3.jpg", title: "Hotel1"),
                        makeItem(image: "assets/images/ic_hotel2.jpg", title: "Hotel2"),
                        makeItem(image: "assets/images/ic_hotel1.jpg", title: "Hotel3"),
                        makeItem(image: "assets/images/ic_hotel4.jpg", title: "Hotel4"),
                        makeItem(image: "assets/images/ic_hotel5.jpg", title: "Hotel5"),
                      ],
                    ),
                  ),
                  SizedBox(height: 20,),
                  Text("Resort Hotels", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.grey[800], fontSize: 20),),
                  SizedBox(height: 20,),
                  Container(
                    height: 200,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        makeItem(image: "assets/images/ic_hotel5.jpg", title: "Hotel1"),
                        makeItem(image: "assets/images/ic_hotel4.jpg", title: "Hotel2"),
                        makeItem(image: "assets/images/ic_hotel3.jpg", title: "Hotel3"),
                        makeItem(image: "assets/images/ic_hotel2.jpg", title: "Hotel4"),
                        makeItem(image: "assets/images/ic_hotel1.jpg", title: "Hotel5"),
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
  Widget makeItem({image, title}){
    return AspectRatio(
      aspectRatio: 1.1 / 1,
      child: Container(
        margin: EdgeInsets.only(right: 15),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          image: DecorationImage(
            image: AssetImage(image),
            fit: BoxFit.cover
          )
        ),
        child: Container(
          padding: EdgeInsets.all(20),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            gradient: LinearGradient(
              begin: Alignment.bottomRight,
              colors: [
                Colors.black.withOpacity(.8),
                Colors.black.withOpacity(.2),
              ]
            )
          ),
          child: Stack(
            children: [
            const Align(
              alignment: Alignment.bottomRight,
              child: Icon(Icons.favorite, color: Colors.red,),
            ),
              Align(
                alignment: Alignment.bottomLeft,
                  child: Text(title, style: TextStyle(color: Colors.white, fontSize: 20),)
              )
            ]
          ),
        ),
      ),
    );
  }
}
