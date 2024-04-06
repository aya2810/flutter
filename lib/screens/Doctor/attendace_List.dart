import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class Attendace extends StatefulWidget {
  const Attendace({super.key});

  @override
  State<Attendace> createState() => _AttendaceState();
}

class _AttendaceState extends State<Attendace> {

  
  Future<Stream<QuerySnapshot>> getdata()async{
    return await FirebaseFirestore.instance.collection("attendace_List").snapshots();
      
  }

  Stream? attendstream;
  getontheload()async{
    attendstream =await getdata();
    setState(() {
      
    });
  }
  @override
  void initState() {
    getontheload();
    super.initState();
  }

  Widget allDetails(){
    return StreamBuilder(
      stream: attendstream, 
      builder: (context, AsyncSnapshot snapshot){
        return snapshot.hasData? ListView.builder(
          itemCount: snapshot.data.docs.length,
          itemBuilder: (context, Index){
            DocumentSnapshot ds = snapshot.data.docs(Index);
            return Container(
              margin: EdgeInsets.only(bottom: 20.0),
              child: Material(
                elevation: 5.0,
                borderRadius: BorderRadius.circular(10),
                child: Container(
                  padding: EdgeInsets.all(20),
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    color: Colors.white, 
                    borderRadius: BorderRadius.circular(10)),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("ID : "+ ds["ID"] ,
                            style: TextStyle(
                              color: Colors.black, 
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold),),
                            Text("PDF : " + ds["PDF"],
                            style: TextStyle(
                              color: Colors.black, 
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold),),
                            Text("Notification_Id : " + ds["Notification_Id"],
                            style: TextStyle(
                              color: Colors.black, 
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold),)
                          ],
                        ),
                ),
              ),
            );
        }): Container();
      });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text('hhh'),
      ),
      body: Container(
        margin: EdgeInsets.only(left: 10.0, right: 20.0, top: 30.0),
        child: Column(
          children: [
            Expanded(child: allDetails()),
          ],
        ),
      )
      // StreamBuilder<QuerySnapshot>(
      //   stream: FirebaseFirestore.instance.collection("attendace_List").snapshots(),
      //   builder: (context, snapshot) {
      //     List<Text> messageWidgets = [];

      //     if (!snapshot.hasData) {

      //     }
      //     final messages = snapshot.data!.docs;
      //     for (var message in messages){
      //       final msgid = message.get('ID');
      //       final msgnot = message.get('Notification_Id');
      //       final msgpdf = message.get('PDF');
      //       final messageWidget = Text('$msgid - $msgnot - $msgpdf');
      //       messageWidgets.add(messageWidget);
      //     }

          // return Column(
          //   children: messageWidgets,
          // );
        // },
        // stream: attendref.snapshots(), 
        // builder: (context , snapshot){
        //   if(snapshot.hasError){
        //     return Text("Error");
        //   }
        //   if(snapshot.hasData){
        //     return ListView.builder(
        //       itemCount: snapshot.data?.docs.length,
        //       itemBuilder: (context,i){
        //         return Text("${snapshot.data?.docs[i].data()["ID"]}");
        //       });
        //   }if (snapshot.connectionState == ConnectionState.waiting){
        //     return Text("Loading");
        //   }
            // return Text("Loading");
        // },
        // )
      // FutureBuilder(
      //   future: attendref.get(),
      //   builder: (context , snapshot){
      //     if(snapshot.hasData){
      //       return ListView.builder(
      //         itemCount: snapshot.data?.docs.length,
      //         itemBuilder: (context,i){
      //           return Text("${snapshot.data.docs[i].data()["ID"]}");
      //         });
      //     }if(snapshot.hasError){
      //       return Text("Error");
      //     }
      //       return Text("Loading");
      //   },
      // ),
    );
    // );
  }
}