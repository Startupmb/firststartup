import 'package:flutter/material.dart';
import 'package:startup_1/screens/FemaleBodyFat.dart';

class BodyFatScreen extends StatefulWidget {
  @override
  _BodyFatScreenState createState() => _BodyFatScreenState();
}

class _BodyFatScreenState extends State<BodyFatScreen> {
  @override
  Widget build(BuildContext context) {
    final deviceHeight = MediaQuery.of(context).size.height;
    final deviceWidth = MediaQuery.of(context).size.width;

    AssetImage assetImage1 = AssetImage('images/5%.jpg');
    Image image1 = Image(
      image: assetImage1,
      width: 100,
      height: 100,
      fit: BoxFit.fitWidth,
    );

    AssetImage assetImage2 = AssetImage('images/9%.jpeg');
    Image image2 = Image(
      image: assetImage2,
      width: 100,
      height: 100,
      fit: BoxFit.fitWidth,
    );

    AssetImage assetImage3 = AssetImage('images/14%.png');
    Image image3 = Image(
      image: assetImage3,
      width: 100,
      height: 100,
      fit: BoxFit.fitWidth,
    );

    AssetImage assetImage4 = AssetImage('images/17%.jpg');
    Image image4 = Image(
      image: assetImage4,
      width: 100,
      height: 100,
      fit: BoxFit.fitWidth,
    );

    AssetImage assetImage5 = AssetImage('images/20%.jpg');
    Image image5 = Image(
      image: assetImage5,
      width: 100,
      height: 100,
      fit: BoxFit.fitWidth,
    );

    AssetImage assetImage6 = AssetImage('images/25%.png');
    Image image6 = Image(
      image: assetImage6,
      width: 100,
      height: 100,
      fit: BoxFit.fitWidth,
    );

    AssetImage assetImage7 = AssetImage('images/30-34.jpg');
    Image image7 = Image(
      image: assetImage7,
      width: 100,
      height: 100,
      fit: BoxFit.fitWidth,
    );

    AssetImage assetImage8 = AssetImage('images/35-39.jpg');
    Image image8 = Image(
      image: assetImage8,
      width: 100,
      height: 100,
      fit: BoxFit.fitWidth,
    );

    AssetImage assetImage9 = AssetImage('images/40+.jpg');
    Image image9 = Image(
      image: assetImage9,
      width: 100,
      height: 100,
      fit: BoxFit.fitWidth,
    );

    return Scaffold(
        appBar: AppBar(
            leading: IconButton(
              icon: Icon(Icons.arrow_back_ios),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
            title: Row(
              children: [
                Text(
                  'Your Body Fat',
                  style: TextStyle(
                      fontSize: deviceWidth * 0.06,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
            actions: [
              TextButton(
                child: Text(
                  "Skip",
                  style: TextStyle(
                      fontSize: deviceWidth * 0.035,
                      color: Colors.lightBlueAccent),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => BodyFatScreen()),
                  );
                },
              )
            ]),
        body: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  InkWell(
                      child: Flexible(
                          child: Column(
                        children: [
                          Container(
                            child: image1,
                          ),
                          Text('5-8%'),
                        ],
                      )),
                      onTap: () {}),
                  InkWell(
                      child: Flexible(
                          child: Column(
                        children: [
                          Container(child: image2),
                          Text('9-12%'),
                        ],
                      )),
                      onTap: () {}),
                  InkWell(
                      child: Flexible(
                          child: Column(
                        children: [
                          Container(
                            child: image3,
                          ),
                          Text('13-16%'),
                        ],
                      )),
                      onTap: () {})
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  InkWell(
                      child: Flexible(
                          child: Column(
                        children: [
                          Container(
                            child: image4,
                          ),
                          Text('17-19%'),
                        ],
                      )),
                      onTap: () {}),
                  InkWell(
                      child: Flexible(
                          child: Column(
                        children: [
                          Container(
                            child: image5,
                          ),
                          Text('20-24%'),
                        ],
                      )),
                      onTap: () {}),
                  InkWell(
                      child: Flexible(
                          child: Column(
                        children: [
                          Container(
                            child: image6,
                          ),
                          Text('25-29%'),
                        ],
                      )),
                      onTap: () {}),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  InkWell(
                      child: Flexible(
                          child: Column(
                        children: [
                          Container(
                            child: image7,
                          ),
                          Text('30-34%'),
                        ],
                      )),
                      onTap: () {}),
                  InkWell(
                      child: Flexible(
                          child: Column(
                        children: [
                          Container(
                            child: image8,
                          ),
                          Text('35-39%'),
                        ],
                      )),
                      onTap: () {}),
                  InkWell(
                    child: Flexible(
                        child: Column(
                      children: [
                        Container(
                          child: image9,
                        ),
                        Text('40+'),
                      ],
                    )),
                    onTap: () {},
                  )
                ],
              ),
            ]),
        floatingActionButton:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          SizedBox(
            width: 1,
          ),
          FloatingActionButton(
            child: Icon(Icons.arrow_back_ios_rounded),
            onPressed: () {},
          ),
          SizedBox(
            width: 200,
          ),
          FloatingActionButton(
            child: Icon(Icons.arrow_forward_ios_rounded),
            onPressed: () => {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => FemaleBodyFatScreen()),
              ),
            },
          )
        ]));
  }
}
