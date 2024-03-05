import 'dart:io';

import 'package:ecommerce_app/core/order_view/tabbar_view/tabbar_view.dart';
import 'package:ecommerce_app/core/order_view/tabbar_view/widget/tabbar_item.dart';
import 'package:ecommerce_app/core/profile_view/update_profile_screen/update_profile_screen.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  XFile? photoFile;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).textTheme;
    return Scaffold(
      appBar: AppBar(
        title: const Text("Profile"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: MediaQuery.of(context).size.height / 10),

              //============
              //profiele Image part
              //==========
              Stack(
                children: [
                  ClipOval(
                      child: CircleAvatar(
                    radius: 40,
                    child: (photoFile != null)
                        ? ClipOval(
                            child: Image.file(
                              File(photoFile?.path ?? ""),
                              width: double.infinity,
                              height: double.infinity,
                              fit: BoxFit.cover,
                            ),
                          )
                        : Image.network(
                            "https://avatars.githubusercontent.com/u/136594114?v=4"),
                  )),
                  Positioned(
                      // alignment: Alignment.topLeft,
                      bottom: 0,
                      top: 50,
                      left: 40,
                      child: IconButton(
                          onPressed: () async {
                            final imagePicker = ImagePicker();
                            final result = await imagePicker.pickImage(
                                source: ImageSource.camera);
                            if (result != null) {
                              photoFile = result;
                            }
                            setState(() {});
                          },
                          alignment: Alignment.center,
                          icon: const Icon(Icons.edit)))
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                "Abu Rasel",
                style: theme.titleMedium,
              ),
              Text(
                "aburasel@gmail.com",
                style: theme.bodyMedium?.copyWith(color: Colors.black54),
              ),
              const SizedBox(
                height: 20,
              ),
              //============
              //profile address message button
              //==========

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ProfileButtonItem(
                    buttonIcon: const Icon(Icons.person),
                    text: 'Profile',
                    iconColor: Colors.blue,
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  const UpdateProfileScreen()));
                    },
                  ),
                  ProfileButtonItem(
                    buttonIcon: const Icon(Icons.location_on_rounded),
                    text: 'Address',
                    iconColor: const Color(0xffd16324),
                    onPressed: () {},
                  ),
                  ProfileButtonItem(
                    buttonIcon: const Icon(Icons.message),
                    text: 'Message',
                    iconColor: const Color(0xffd16324),
                    onPressed: () {},
                  ),
                  // ProfileButtonItem(buttonIcon: Icon(Icons.person), text: 'Profile',),
                ],
              ),

              //============
              //
              //==========
              const SizedBox(
                height: 50,
              ),
              ListTile(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>const OrderListView()));
                },
                leading: CircleAvatar(
                  backgroundColor: const Color(0xff1ce524),
                  child: Image.asset("assets/images/profile/order_image.png"),
                ),
                title: const Text("Orders"),
              ),
              const SizedBox(
                height: 10,
              ),
              ListTile(
                onTap: () {},
                leading: const CircleAvatar(
                  backgroundColor: Color(0xffe75126),
                  child: Icon(
                    Icons.favorite_border,
                    color: Colors.white,
                  ),
                ),
                title: const Text("Wish List"),
              ),
              const SizedBox(
                height: 10,
              ),

              ListTile(
                onTap: () {},
                leading: const CircleAvatar(
                    backgroundColor: Color(0xfffdbd51),
                    child: Icon(
                      Icons.notifications_active_outlined,
                      color: Colors.white,
                    )),
                title: const Text("Notification"),
              ),
              const SizedBox(
                height: 10,
              ),

              ListTile(
                onTap: () {},
                leading: const CircleAvatar(
                  backgroundColor: Color(0xff6c95ed),
                  child: Icon(
                    Icons.lock_outline_rounded,
                    color: Colors.white,
                  ),
                ),
                title: const Text("Change Password"),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class ProfileButtonItem extends StatelessWidget {
  const ProfileButtonItem({
    super.key,
    required this.buttonIcon,
    required this.text,
    required this.iconColor,
    required this.onPressed,
  });

  final Icon buttonIcon;
  final String text;
  final Color iconColor;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Card(
          color: const Color(0xfff2f3f5),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
          child: IconButton(
            onPressed: onPressed,
            icon: buttonIcon,
            color: iconColor,
          ),
        ),
        Text(
          text,
        )
      ],
    );
  }
}
