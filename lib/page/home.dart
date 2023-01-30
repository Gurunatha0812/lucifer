import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
class homeScreen extends StatefulWidget {
  const homeScreen({Key? key}) : super(key: key);

  @override
  State<homeScreen> createState() => _homeScreenState();
}

class _homeScreenState extends State<homeScreen> {
  //const ListViewBuilder
  List<String> banner=["assets/shoes1.jpg","assets/shoes2.jpg","assets/shoes3.jpg"];
  @override
  Widget build(BuildContext context) {
  final size=MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Center(child: Text("Gurunatha")),
          backgroundColor: Colors.deepPurpleAccent,
          actions: [
            IconButton(
              onPressed: () {  }, icon: Icon(
              Icons.account_circle,
            ),
            ),

          ],
        ),
        body: Column(
          children: [
            Container(
              height: 200,
              width: size.width,
              child: CarouselSlider(
                items: banner
                    .map(
                      (p) => Container(
                        margin: EdgeInsets.all(6.0),

                        child: Image
                          .asset(p, width: MediaQuery.of(context).size.width,
                          fit: BoxFit.cover),
                        
                      ),
                )
                    .toList(),
                options: CarouselOptions(
                  viewportFraction: 1.0,
                  enlargeCenterPage: false,
                  autoPlay: true,
                  initialPage: 0,
                  onPageChanged: (index, reason) {
                    setState(() {
                      var currentIndex = index;
                      banner = banner[index] as List<String>;
                    });
                  },
                ),
              ),
            ),
            SizedBox(height: 10,),
            Container(
              height: 60,
              width: size.width,
              child: ListView.builder(
                  itemCount: 5,
                  scrollDirection: Axis.horizontal,
                  //physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemBuilder: (BuildContext context,index){
                    return  Container(
                        height: 40,
                        padding: EdgeInsets.all(5),
                        //alignment: MainAxisAlignment.center,
                        margin: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(
                            color: Colors.black26,
                            width: 1,
                          ),
                          borderRadius: BorderRadius.circular(10),

                        ),
                        child:Center(child: Text("$index,Brand",style: TextStyle(color: Colors.black,fontSize: 16),))
                    );
                  }),

            ),
          ],
        ),

      ),
    );
  }
}






