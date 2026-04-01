import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:logger/logger.dart';

var logger = Logger();

// static
// create() async {
//   try {
//     await FirebaseFirestore.instance
//         .collection('fruits')
//         .doc('pineapple')
//         .set({
//       'brand': 'malbok',
//       'year': 2025,
//       'price': 150
//     });

//     if (kDebugMode) {
//       logger.d('Record Created');
//     }
//   } catch (e) {
//     logger.e('Error: $e');
//   }
// }


// dynamic
create (String collection,doc,name,animal,int age) async{
  try{
    await FirebaseFirestore.instance.collection(collection).doc(doc).set({'name':name,'animal':animal,'age':age});
          logger.d('Record Created');

  }
  catch(e)
  {
    logger.e('Error:$e');
  }
}