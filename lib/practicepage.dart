import 'package:flutter/material.dart';
import 'package:ccappdev/cardspage.dart';
import 'homecontroller.dart';

class practicepage extends StatefulWidget {
  const practicepage({Key? key}) : super(key: key);

  @override
  State<practicepage> createState() => _practicepageState();
}

class _practicepageState extends State<practicepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: Colors.white,
        child: Column(
          children: [
            Divider(
              indent: 20,
              endIndent: 20,
              color: Colors.white,
              thickness: 5,
            ),
            Divider(
              indent: 20,
              endIndent: 20,
              color: Colors.white,
              thickness: 15,
            ),
            Divider(
              indent: 20,
              endIndent: 20,
              color: Colors.white,
              thickness: 15,
            ),
            Center(
              child: Container(
                height: 300,
                 width: 300,
                 alignment: Alignment.center,

                 child : Text('card #\n\n\n\nTITLE\n'
                    ,
                    style: TextStyle(
                      fontFamily: 'IndieFlower',
                      color: Colors.white,

                      fontSize:30,

                    ),
                  ),


                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Colors.black,
                    border: Border.all(
                        color: Colors.white,
                        width: 5

                    )

                ),
              ),
            ),
            Divider(
              indent: 20,
              endIndent: 20,
              color: Colors.white,
              thickness: 15,
            ),
            Divider(
              indent: 20,
              endIndent: 20,
              color: Colors.white,
              thickness: 15,
            ),
            Divider(
              indent: 20,
              endIndent: 20,
              color: Colors.white,
              thickness: 15,
            ),
            Divider(
              indent: 20,
              endIndent: 20,
              color: Colors.white,
              thickness: 15,
            ),
            Divider(
              indent: 20,
              endIndent: 20,
              color: Colors.white,
              thickness: 15,
            ),
            Container(
              child: TextButton(
                  onPressed: (){
                    opendailog();
                  },
                  child: Text('Show Answer'),
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.black),
                  foregroundColor: MaterialStateProperty.all(Colors.white),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5),
                    side: BorderSide(color: Colors.white)
                  )
                )
              ),
              ),
            )
          ],
        ),

      ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {  },
          child: Icon(Icons.arrow_forward_ios_outlined),
          backgroundColor: Colors.black,)
    );
  }
  Future<String?> opendailog() => showDialog<String>(
      context: context,
      builder: (context) => AlertDialog(
        title: Text('Answer'),

        actions: [
          TextButton(
              onPressed: close,
              child: Text('close',
                style: TextStyle(
                    color: Colors.black
                ),
              )
          )
        ],
      )
  );
  void close() {
    Navigator.of(context).pop();

  }
}
