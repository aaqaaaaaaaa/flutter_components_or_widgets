import 'package:flutter/material.dart';

class ImageLinkPageOne extends StatefulWidget {
  const ImageLinkPageOne({Key? key}) : super(key: key);

  @override
  _ImageLinkPageOneState createState() => _ImageLinkPageOneState();
}

class _ImageLinkPageOneState extends State<ImageLinkPageOne> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width / 1.1,
        height: double.infinity,
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const Page2(),
                    ));
              },
              child: SizedBox(
                width: 200,
                height: 200,
                child: Image.asset('lib/assets/images/fon.jpg',fit: BoxFit.cover,),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const Page2(),
                    ));
              },
              child: SizedBox(
                width: 200,
                height: 200,
                child: Image.asset('lib/assets/images/fon.jpg',fit: BoxFit.cover,),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Page2 extends StatefulWidget {
  const Page2({Key? key}) : super(key: key);

  @override
  _Page2State createState() => _Page2State();
}

class _Page2State extends State<Page2> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('Page2'),
      ),
    );
  }
}
