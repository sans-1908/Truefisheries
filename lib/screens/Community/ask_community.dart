import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class AskCommunityScreen extends StatefulWidget {
  const AskCommunityScreen({super.key});

  @override
  State<AskCommunityScreen> createState() => _AskCommunityScreenState();
}

class _AskCommunityScreenState extends State<AskCommunityScreen> {
  XFile? pickedFile;
  File? image;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      appBar: AppBar(
        backgroundColor: const Color(0XFF0A3E45),
        title: const Text('Ask Community'),
        actions: [
          TextButton(
              onPressed: () {},
              child: const Text(
                'Send',
                style: TextStyle(color: Colors.white, fontSize: 16),
              ))
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            image != null
                ? Image.file(
                    height: 170,
                    width: double.infinity,
                    image!,
                    fit: BoxFit.cover,
                  )
                : Material(
                    color: Colors.grey.shade300,
                    child: InkWell(
                      onTap: () async {
                        showModalBottomSheet(
                            context: context,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15)),
                            builder: (context) {
                              return Container(
                                height: 100,
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 20),
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                    color: const Color(0XFF0A3E45)
                                        .withOpacity(0.5),
                                    borderRadius: BorderRadius.circular(15)),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    InkWell(
                                      onTap: () async {
                                        Navigator.of(context).pop();
                                        pickedFile = await ImagePicker()
                                            .pickImage(
                                                source: ImageSource.camera);
                                        if (pickedFile != null) {
                                          image = File(pickedFile!.path);
                                          setState(() {});
                                        }
                                      },
                                      child: Container(
                                        height: 60,
                                        width: 60,
                                        alignment: Alignment.center,
                                        decoration: BoxDecoration(
                                            color: Colors.white,
                                            borderRadius:
                                                BorderRadius.circular(10)),
                                        child: const Icon(
                                          CupertinoIcons.camera,
                                          color: Colors.black,
                                          size: 30,
                                        ),
                                      ),
                                    ),
                                    InkWell(
                                      onTap: () async {
                                        Navigator.of(context).pop();
                                        pickedFile = await ImagePicker()
                                            .pickImage(
                                                source: ImageSource.gallery);
                                        if (pickedFile != null) {
                                          image = File(pickedFile!.path);
                                          setState(() {});
                                        }
                                      },
                                      child: Container(
                                        height: 60,
                                        width: 60,
                                        alignment: Alignment.center,
                                        decoration: BoxDecoration(
                                            color: Colors.white,
                                            borderRadius:
                                                BorderRadius.circular(10)),
                                        child: const Icon(
                                          Icons.image_outlined,
                                          color: Colors.black,
                                          size: 30,
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              );
                            });
                        // pickedFile = await ImagePicker()
                        //     .pickImage(source: ImageSource.gallery);
                      },
                      child: Container(
                        height: 170,
                        alignment: Alignment.center,
                        child: const Icon(
                          Icons.add,
                          color: Colors.black,
                          size: 40,
                        ),
                      ),
                    ),
                  ),
            Container(
              width: double.infinity,
              height: 175,
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
              color: Colors.white,
              child: const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Your question to the community',
                    style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16),
                  ),
                  SizedBox(height: 10),
                  TextField(
                    maxLines: 3,
                    cursorColor: Colors.black,
                    cursorWidth: 1.5,
                    maxLength: 200,
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        hintStyle: TextStyle(fontSize: 14),
                        hintText:
                            'Add a question indicating what\'s wrong with your fish'),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 15),
            Container(
              width: double.infinity,
              height: 175,
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
              color: Colors.white,
              child: const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Description of your problem',
                    style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16),
                  ),
                  SizedBox(height: 10),
                  TextField(
                    maxLines: 3,
                    cursorColor: Colors.black,
                    cursorWidth: 1.5,
                    maxLength: 1000,
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        hintStyle: TextStyle(fontSize: 14),
                        hintText: 'Describe sepcialities of fish...'),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
