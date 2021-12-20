import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';



class StartPage extends StatefulWidget {
  const StartPage({Key? key}) : super(key: key);

  @override
  _StartPageState createState() => _StartPageState();
}

class _StartPageState extends State<StartPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          verticalDirection: VerticalDirection.down,
          children: [
            Spacer(),
            Container(
              height: MediaQuery.of(context).size.height*0.3,
              child: Image.asset(
                "images/pashol.gif"
              ),
            ),
            Lottie.asset('images/Book.json'),
            Container(
              width: MediaQuery.of(context).size.width*0.3,
              decoration: BoxDecoration(
                color: Color(0xff284B63),
                borderRadius: BorderRadius.circular(15),
              ),
              child: TextButton(
                child: Text(
                  "Boshlash",
                  style: TextStyle(color: Colors.white),
                ),
                onPressed: () {
                  Navigator.pushNamed(context, 'shoirlar');
                },
              ),
            ),
            Spacer()
          ],
        ),
      ),
    );
  }
}
