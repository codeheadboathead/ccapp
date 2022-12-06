import 'package:flutter/material.dart';

class cardspage extends StatefulWidget {
  const cardspage({Key? key}) : super(key: key);

  @override
  State<cardspage> createState() => _cardspageState();
}

class _cardspageState extends State<cardspage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
      width: double.infinity,
      height: double.infinity,
      color: Colors.blueGrey,
      child: GridView.builder(
          itemCount: 6,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
          itemBuilder: (cntx,index){
            return Container(

              padding: EdgeInsets.all(10),
              margin: EdgeInsets.all(20),
              alignment: Alignment.topLeft,
              height: 50,
              width: 100,
              child: Column(
                children: [
                  Text('Title\nSORRY\n'
                    ,
                    style: TextStyle(
                      fontFamily: 'IndieFlower',
                      color: Colors.white,

                      fontSize:25,

                    ),
                  ),
                  Container(
                    alignment: Alignment.bottomRight,
                    child: Icon(
                      Icons.delete,
                      color: Colors.white,
                    ),

                  )
                ],
              ),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: Colors.black,
                  border: Border.all(
                      color: Colors.white,
                      width: 5

                  )

              ),


            );


          }),
    ),
    floatingActionButton: FloatingActionButton(
    onPressed: () {  },
    child: Icon(Icons.add),
    backgroundColor: Colors.black,)
    );
  }
}
