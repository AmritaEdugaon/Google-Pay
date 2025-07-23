import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:image_picker/image_picker.dart';
import 'package:permission_handler/permission_handler.dart';

class MyProfile extends StatefulWidget {
  const MyProfile({super.key});

  @override
  State<MyProfile> createState() => _MyProfileState();
}

class _MyProfileState extends State<MyProfile> {
  XFile? SelectedImage;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ClipRRect(
          borderRadius: BorderRadiusGeometry.circular(50),
          child: SelectedImage==null?Icon(CupertinoIcons.person_circle_fill,size: 100,):Image.file(File(SelectedImage!.path),fit: BoxFit.cover,),
        ),
        ElevatedButton(onPressed: () async {
         var imagePicker=ImagePicker();
         var image=await imagePicker.pickImage(source: ImageSource.gallery);
         SelectedImage=image;
         setState(() {

         });
         print(image);
        }, child: Text("Pic image")),
        ElevatedButton(onPressed: () async {
          var cameraStatus=await Permission.camera.status;
          if(cameraStatus.isDenied){
            Fluttertoast.showToast(msg: "please give us permission");
            Permission.photos.request();
          }
          else{
            Fluttertoast.showToast(msg: "permission granted");
          }

        }, child: Text("check permission"))
      ],
    );
  }
}
