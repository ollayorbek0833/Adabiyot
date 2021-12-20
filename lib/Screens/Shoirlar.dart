import 'package:flutter/material.dart';


class Shoirlar extends StatefulWidget {
  const Shoirlar({Key? key}) : super(key: key);

  @override
  _ShoirlarState createState() => _ShoirlarState();
}


class _ShoirlarState extends State<Shoirlar> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        decoration: BoxDecoration(
      gradient: LinearGradient(
      begin: Alignment.topLeft,
      end: Alignment.bottomRight,
      stops: [
        0.1,
        0.4,
        0.6,
        0.9,
        1.0
      ],
      colors: [
        Color.fromRGBO(5, 25, 55, 100),
        Color(0xff132a53),
        Color(0xff243c71),
        Color(0xff374e90),
        Color(0xff4b61b0)
      ],

      //image: DecorationImage(
      //image: AssetImage('images/image2.jpg'),
      //fit: BoxFit.cover,
      // ),//
    ),
          //image: DecorationImage(
          //image: AssetImage('images/image2.jpg'),
          //fit: BoxFit.cover,
         // ),//
        ),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            title: Text(
                "Shoirlarimiz"
            ),
          ),
          body: Container(
            child: Column(
              verticalDirection: VerticalDirection.down,
              children: [
                Shoir(name: "Atoiy",age: "XV asr",),
                Shoir(name: "Alisher Navoiy",age: "1441-1501",),
                Shoir(name: "Bobur Mirzo", age: "1483-1530",),
                Shoir(name: "Abdulla Oripov", age: "1941-2016",),
                Shoir(name: "Mavlono Lutfiy", age: "1366-1465",),
              ],
            ),
          ),
        ),
      ),
    );
  }
}


class Shoir extends StatelessWidget {
  const Shoir({Key? key, this.name, this.age, this.image}) : super(key: key);

  final String? name;
  final String? age;
  final String? image;


  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: (){
        Navigator.pushNamed(context, '$name');
      },
      child: Center(
        child: Padding(
          padding: const EdgeInsets.only(top: 10,bottom: 10),
          child: Container(
            width:size.width*0.9,
            height: size.height*0.1,
            child: Card(
              color: Colors.deepPurple,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                        name!,
                        textScaleFactor: 1.5,
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.bold,
                        )),
                  ),
                  Text("$age")
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
