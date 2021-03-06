import 'package:firebase_database/firebase_database.dart';
//import '';

final databaseReference = FirebaseDatabase.instance.reference();

//reference
//https://medium.com/flutterdevs/explore-realtime-database-in-flutter-c5870c2b231f

Map<String, dynamic> toJson(String text){
  return {
    'message': text,
  };
}


DatabaseReference sendData(String test) {
  var id = databaseReference.child('toPython/');
  id.set(toJson(test));
  return id;
}

Future<String> readData() async {
  // databaseReference.once().then((DataSnapshot snapshot) {
  //   print('Data : ${snapshot.value}');
  // });
  String result = (await FirebaseDatabase.instance.reference().child("fromPython/message").once()).value;

  //remove to and from python descriptors---------------------------------------------------------------------------------uncomment later
  //databaseReference.child('fromPython').remove();
  databaseReference.child('toPython').remove();
  return(result);
}

