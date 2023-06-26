import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CardPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _CardPageState();
}

class _CardPageState extends State<CardPage> {
  var commentController = TextEditingController();

  List<String> comments=[];
  bool isShow = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Add Comments',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Container(
            height: 150,
            width: 450,
            decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    offset: Offset(2, 2),
                    blurRadius: 12,
                    color: Color.fromRGBO(0, 0, 0, 0.16),
                  )
                ],
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(21),
                    bottomRight: Radius.circular(21)),
                color: Colors.grey.shade100),
            child: Image.asset('assets/images/card.png'),
          ),
          SizedBox(
            height: 15,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 60,
              width: double.infinity,
              decoration: BoxDecoration(
                  color: Colors.grey.shade300,
                  borderRadius: BorderRadius.circular(21)),
              child: Row(
                children: [
                  SizedBox(
                    width: 15,
                  ),
                  Icon(Icons.search),
                  SizedBox(
                    width: 8,
                  ),
                  Text(
                    'Search',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: Colors.black87.withOpacity(0.5)),
                  )
                ],
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: "This is the first comment",
                            hintStyle: TextStyle(color:Colors.blueGrey.withOpacity(0.9) ),
                            prefixIcon: Icon(Icons.one_k_plus_outlined,size: 30,),
                              suffixIcon: InkWell(
                            onTap: () {
                              showDialog(
                                  context: context,
                                  builder: (context) {
                                    return Dialog(
                                      child: Container(
                                        width: 200,
                                        height: 220,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(15),
                                          color: Colors.white,
                                        ),
                                        padding: EdgeInsets.all(16),
                                        child: Column(
                                          //mainAxisAlignment: MainAxisAlignment.center,
                                          //crossAxisAlignment: CrossAxisAlignment.stretch,
                                          children: [
                                            Padding(
                                              padding: const EdgeInsets.only(right: 160),
                                              child: Text(
                                                'Type below',
                                                style: TextStyle(
                                                    fontSize: 15,
                                                    fontWeight: FontWeight.bold,
                                                    color: Colors.black87
                                                        .withOpacity(0.5)),
                                              ),
                                            ),
                                            SizedBox(height: 30,),
                                            TextField(
                                              controller: commentController,
                                              decoration: InputDecoration(
                                                  filled: true,
                                                  fillColor: Colors.grey.shade300,
                                                  hintText: 'Comment',
                                                  enabledBorder: OutlineInputBorder(
                                                      borderSide: BorderSide(
                                                          color: Colors.black12),
                                                      borderRadius:
                                                      BorderRadius.circular(15)),
                                                  focusedBorder: OutlineInputBorder(
                                                      borderRadius:
                                                      BorderRadius.circular(15))),
                                            ),
                                            SizedBox(
                                              height: 16,
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(left: 160),
                                              child: ElevatedButton(
                                                onPressed: () {
                                                  addComment();
                                                  Navigator.pop(context);
                                                  setState(() {
                                                    isShow=false;
                                                  });
                                                }, child: Text('Add',style: TextStyle(color: Colors.white),),
                                                style: ElevatedButton.styleFrom(
                                                    primary: Colors.blueAccent
                                                ),
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                    );
                                  });
                            },
                            child: Icon(
                             isShow==true? Icons.add:Icons.done,
                              color: Colors.black87.withOpacity(0.5),
                              size: 30,
                            )),
                        fillColor: Colors.grey.shade100,
                        filled: true,
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: Colors.black.withOpacity(0.3), width: 2),
                          borderRadius: BorderRadius.circular(21),
                        ),
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: Colors.black.withOpacity(0.3), width: 2),
                            borderRadius: BorderRadius.circular(21)))
                        ),
                      ),



          Expanded(
              child: ListView.builder(
                itemCount: comments.length,
                  itemBuilder: (context,index){
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextField(
                        decoration: InputDecoration(
                          hintText: comments[index],
                          hintStyle: TextStyle(color:Colors.blueGrey.withOpacity(0.9)),
                            prefixIcon: Icon(Icons.one_k_plus_outlined,size: 30,),
                            suffixIcon: InkWell(
                                onTap: () {
                                  showDialog(
                                      context: context,
                                      builder: (context) {
                                        return Dialog(
                                          child: Container(
                                            width: 200,
                                            height: 220,
                                            decoration: BoxDecoration(
                                              borderRadius: BorderRadius.circular(15),
                                              color: Colors.white,
                                            ),
                                            padding: EdgeInsets.all(16),
                                            child: Column(
                                              //mainAxisAlignment: MainAxisAlignment.center,
                                              //crossAxisAlignment: CrossAxisAlignment.stretch,
                                              children: [
                                                Padding(
                                                  padding: const EdgeInsets.only(right: 160),
                                                  child: Text(
                                                    'Type below',
                                                    style: TextStyle(
                                                        fontSize: 15,
                                                        fontWeight: FontWeight.bold,
                                                        color: Colors.black87
                                                            .withOpacity(0.5)),
                                                  ),
                                                ),
                                                SizedBox(height: 30,),
                                                TextField(
                                                  controller: commentController,
                                                  decoration: InputDecoration(
                                                      filled: true,
                                                      fillColor: Colors.grey.shade300,
                                                      hintText: 'Comment',
                                                      enabledBorder: OutlineInputBorder(
                                                          borderSide: BorderSide(
                                                              color: Colors.black12),
                                                          borderRadius:
                                                          BorderRadius.circular(15)),
                                                      focusedBorder: OutlineInputBorder(
                                                          borderRadius:
                                                          BorderRadius.circular(15))),
                                                ),
                                                SizedBox(
                                                  height: 16,
                                                ),
                                                Padding(
                                                  padding: const EdgeInsets.only(left: 160),
                                                  child: ElevatedButton(
                                                    onPressed: () {
                                                      addComment();
                                                      Navigator.pop(context);
                                                      setState(() {
                                                        isShow=false;
                                                      });
                                                    }, child: Text('Add',style: TextStyle(color: Colors.white),),
                                                    style: ElevatedButton.styleFrom(
                                                        primary: Colors.blueAccent
                                                    ),
                                                  ),
                                                )
                                              ],
                                            ),
                                          ),
                                        );
                                      });
                                },
                                child: Icon(
                                  isShow == false ? Icons.add:Icons.done,
                                  color: Colors.black87.withOpacity(0.5),
                                  size: 30,
                                )),
                            fillColor: Colors.grey.shade100,
                            filled: true,
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: Colors.black.withOpacity(0.3), width: 2),
                              borderRadius: BorderRadius.circular(21),
                            ),
                            focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: Colors.black.withOpacity(0.3), width: 2),
                                borderRadius: BorderRadius.circular(21)))
                    ),
                  );

              }),
          )
        ],
      ),
    );
  }
  void addComment() {
    String comment = commentController.text;
    setState(() {
      comments.add(comment);
    });
    commentController.clear();
    ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
            content: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('New comment was added!',style: TextStyle(color: Colors.black),),
                Icon(Icons.add_task)
              ],
            ),
          duration: Duration(seconds: 2),
          shape: RoundedRectangleBorder(
            borderRadius:BorderRadius.circular(16)
          ),
          backgroundColor: Colors.blueGrey.shade100,

        )
    );
  }
}
