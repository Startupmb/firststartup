import 'package:flutter/material.dart';
import 'package:startup_1/screens/dietary_preference.dart';

class FemaleBodyFatScreen extends StatefulWidget {
  @override
  _FemaleBodyFatScreenState createState() => _FemaleBodyFatScreenState();
}

class _FemaleBodyFatScreenState extends State<FemaleBodyFatScreen> {
  @override
  Widget build(BuildContext context) {
    final deviceHeight = MediaQuery.of(context).size.height;
    final deviceWidth = MediaQuery.of(context).size.width;

    AssetImage assetImage1 = AssetImage('images/F5-9%.jpg');
    Image image1 = Image(
      image: assetImage1,
      width: 100,
      height: 100,
      fit: BoxFit.fitWidth,
    );

    AssetImage assetImage2 = AssetImage('images/F10-14%.jpeg');
    Image image2 = Image(
      image: assetImage2,
      width: 100,
      height: 100,
      fit: BoxFit.fitWidth,
    );

    AssetImage assetImage3 = AssetImage('images/F15-19%.png');
    Image image3 = Image(
      image: assetImage3,
      width: 100,
      height: 100,
      fit: BoxFit.fitWidth,
    );

    AssetImage assetImage4 = AssetImage('images/F20-24%.jpg');
    Image image4 = Image(
      image: assetImage4,
      width: 100,
      height: 100,
      fit: BoxFit.fitWidth,
    );

    AssetImage assetImage5 = AssetImage('images/F25-29%.jpg');
    Image image5 = Image(
      image: assetImage5,
      width: 100,
      height: 100,
      fit: BoxFit.fitWidth,
    );

    AssetImage assetImage6 = AssetImage('images/F30-34%.png');
    Image image6 = Image(
      image: assetImage6,
      width: 100,
      height: 100,
      fit: BoxFit.fitWidth,
    );

    AssetImage assetImage7 = AssetImage('images/F35-39%.jpg');
    Image image7 = Image(
      image: assetImage7,
      width: 100,
      height: 100,
      fit: BoxFit.fitWidth,
    );

    AssetImage assetImage8 = AssetImage('images/F40-44%.jpg');
    Image image8 = Image(
      image: assetImage8,
      width: 100,
      height: 100,
      fit: BoxFit.fitWidth,
    );

    AssetImage assetImage9 = AssetImage('images/F45+.jpg');
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
                    MaterialPageRoute(
                        builder: (context) => FemaleBodyFatScreen()),
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
                            Text('5-9%'),
                          ],
                        )),
                    onTap: () {}),
                InkWell(
                    child: Flexible(
                        child: Column(
                          children: [
                            Container(child: image2),
                            Text('10-14%'),
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
                            Text('15-19%'),
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
                            Text('20-24%'),
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
                            Text('25-29%'),
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
                            Text('30-34%'),
                          ],
                        )),
                    onTap: () {}),
              ],
            ),
            Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
              InkWell(
                  child: Flexible(
                      child: Column(
                        children: [
                          Container(
                            child: image7,
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
                            child: image8,
                          ),
                          Text('40-44%'),
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
                        Text('45+'),
                      ],
                    )),
                onTap: () {},
              )
            ]),
          ],
        ),
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
                MaterialPageRoute(builder: (context) => DietaryScreen()),
              ),
            },
          )
        ]));
  }
}