import 'package:firebase_database/firebase_database.dart';
//import '';

final databaseReference = FirebaseDatabase.instance.reference();

//test
//String test = "hey what's up world";

Map<String, dynamic> toJson(String text){
  return {
    'body': text,
  };
}


DatabaseReference sendData(String test) {
  var id = databaseReference.child('toPython/').push();
  id.set(toJson(test));
  return id;
}

