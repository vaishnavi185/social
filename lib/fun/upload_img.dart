

// import 'dart:io';
//
// import 'package:firebase_storage/firebase_storage.dart';
// import 'package:image_picker/image_picker.dart';
// import 'package:permission_handler/permission_handler.dart';
// // import 'package:flutter/material.dart';
//
// uploadImage() async {
//
//   final _firebaseStorage = FirebaseStorage.instance;
//   final _imagePicker = ImagePicker();
//   PickedFile image;
//   await Permission.photos.request();
//   var permissionStatus = await Permission.photos.status;
//   if (permissionStatus.isGranted){
//     //Select Image
//     image = await _imagePicker.getImage(source: ImageSource.gallery);
//     var file = File(image.path);
//
//     if (image != null){
//       //Upload to Firebase
//       var snapshot = await _firebaseStorage.ref()
//           .child('images/imageName')
//           .putFile(file).onComplete;
//
//       String imageUrl;
//
//       try {
//         var downloadUrl = await snapshot.ref.getDownloadURL();
//         imageUrl = downloadUrl.toString();
//       } catch (e) {
//         // Handle error
//       }
//
//     } else {
//       print('No Image Path Received');
//     }
//   } else {
//     print('Permission not granted. Try Again with permission access');
//   }
// }