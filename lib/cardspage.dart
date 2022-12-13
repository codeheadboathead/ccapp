import 'package:flutter/material.dart';
import 'package:ccappdev/homecontroller.dart';

class cardspage extends StatefulWidget {
  const cardspage({Key? key}) : super(key: key);

  @override
  State<cardspage> createState() => _cardspageState();
}

class _cardspageState extends State<cardspage> {

  late TextEditingController controller;
  String title = '';
  int _cardcount = 0;
  List<String> namelist = [];
  List<int> card =[];




  @override
  void initState() {
    super.initState();
    controller = TextEditingController();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 12.0),
        child: GridView.builder(
            itemCount: _cardcount,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2
            ),
            itemBuilder: (cntx,index){
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: Card(
                  color: Colors.black,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),

                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [

                             Column(
                               children: [
                                 Text(
                                   '${title}',
                                   style: TextStyle(
                                       color: Colors.white,
                                       fontSize: 25
                                   ),
                                 )]),



                            IconButton(
                              color: Colors.white,
                              onPressed: () {
                                setState((){
                                  _cardcount -=1;

                                });

                              },
                              icon: Icon(Icons.delete),)
                          ],
                        )

                      ],
                    ),
                  ),






                ),
              );
            }
        ),
      ),







      floatingActionButton: FloatingActionButton(
      onPressed: () async {
        final title =  await opendailog();
        if (title == null || title.isEmpty) return;
        setState (() => this.title = title );
        _cardcount +=1;
        //addtolist(controller.text);
      },
      child: Icon(Icons.add),
      backgroundColor: Colors.black,)
      );

  }
  Future<String?> opendailog() => showDialog<String>(
      context: context,
      builder: (context) => AlertDialog(
        title: Text('Add Title'),
        content: TextField(
          autofocus: true,
          decoration: InputDecoration(hintText: 'Title of flashcard'),
          controller: controller,
          onSubmitted: (_) =>submit(),
        ),
        actions: [
          TextButton(
              onPressed: submit,
              child: Text('Submit',
              style: TextStyle(
                color: Colors.black
              ),
              )
          )
        ],
      )
  );
  void submit() {
    Navigator.of(context).pop(controller.text);
    controller.clear();
  }
}
