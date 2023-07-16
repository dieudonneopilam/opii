import 'dart:typed_data';

import 'package:firebase_storage/firebase_storage.dart';

class StorageMethods {
  Future<String> uploadFileProduit(String childName, Uint8List file) async {
    Reference reference =
        FirebaseStorage.instance.ref().child('PicProduits').child(childName);
    UploadTask uploadTask = reference.putData(file);
    TaskSnapshot snapshot = await uploadTask;
    String downloadUrl = await snapshot.ref.getDownloadURL();
    return downloadUrl;
  }
}
