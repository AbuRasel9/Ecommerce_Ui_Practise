import 'dart:io';

import 'package:ecommerce_app/utils/common_widget/app_elevated_button.dart';
import 'package:ecommerce_app/utils/common_widget/backgoround_image.dart';
import 'package:ecommerce_app/utils/common_widget/input_form_feild.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';


class UpdateProfileScreen extends StatefulWidget {
  const UpdateProfileScreen({super.key});

  @override
  State<UpdateProfileScreen> createState() => _UpdateProfileScreenState();
}

class _UpdateProfileScreenState extends State<UpdateProfileScreen> {
  XFile ?photoFile;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //isTappable false use because if user update profile click than no action
      body:
           SingleChildScrollView(
            child: Form(
              child: Column(
                children: [
                  const BackGroundImage(text: 'Update Profile',),

                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          "Update Profile",
                          style: Theme.of(context).textTheme.headlineLarge,
                        ),
                        const SizedBox(
                          height: 15,
                        ),

                        //============
                        //image feild
                        //==========
                        InkWell(
                          onTap: () async {
                            //image pick from galary use image_picker package
                            final imagePicker=ImagePicker();
                            final result=await imagePicker.pickImage(source: ImageSource.camera);
                            if(result !=null){
                              photoFile=result;
                            }


                          },
                          child: Container(
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.grey),
                              borderRadius: BorderRadius.circular(8),

                            ),
                            child: Row(
                              children: [
                                Container(
                                  child: const Text("Photo"),
                                  padding: const EdgeInsets.all(12),
                                  decoration: const BoxDecoration(
                                    color: Colors.grey,

                                  ),
                                ),
                                if(photoFile !=null)
                                  Image.file(File(photoFile?.path ?? ""),width: 20,height: 20,),
                                Expanded(child: Text(photoFile?.name ?? "",maxLines: 3,)),
                              ],
                            ),
                          ),
                        ),

                        const SizedBox(
                          height: 15,
                        ),
                        //============
                        //form feild
                        //==========
                        const InputFormFeild( text: 'Email',),
                        const SizedBox(
                          height: 15,
                        ),
                        const InputFormFeild( text: 'Last Name',),
                        const SizedBox(
                          height: 15,
                        ),
                        const InputFormFeild( text: 'Last Name',),
                        const SizedBox(
                          height: 15,
                        ),
                        const InputFormFeild( text: 'Mobile',),
                        const SizedBox(
                          height: 15,
                        ),

                        const SizedBox(height: 15,),
                        AppElevatedButton(onPressed: () {}, buttonText: 'Save',),
                        const SizedBox(height: 20,),

                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
    );
  }
}