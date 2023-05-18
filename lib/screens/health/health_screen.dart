import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:http/http.dart' as http;

class HealthScreen extends StatefulWidget {
  const HealthScreen({super.key});

  @override
  State<HealthScreen> createState() => _HealthScreenState();
}

class _HealthScreenState extends State<HealthScreen> {
  XFile? pickedFile;
  String buttonText = 'Pick an Image';
  String? prediction;
  File? image;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              backgroundColor: Colors.green,
              radius: 75,
              child: CircleAvatar(
                radius: 70,
                backgroundColor: Colors.grey.shade100,
                backgroundImage: image != null
                    ? FileImage(
                        image!,
                      )
                    : null,
              ),
            ),
            const SizedBox(height: 20),
            SizedBox(
                height: 40,
                width: 150,
                child: ElevatedButton(
                  onPressed: () async {
                    if (buttonText != 'predict') {
                      pickedFile = await ImagePicker()
                          .pickImage(source: ImageSource.gallery);
                      if (pickedFile != null) {
                        image = File(pickedFile!.path);
                        buttonText = 'predict';
                        setState(() {});
                      }
                    } else {
                      // imageModel = await PyTorchMobile.loadModel(
                      //     'assets/Entire_resnet50_model.pth');
                      // prediction = await imageModel!.getImagePrediction(
                      //     image!, 299, 299, 'assets/labels.csv',
                      //     mean: [0.485, 0.456, 0.406],
                      //     std: [0.229, 0.224, 0.225]);
                      // var response = await http.post(
                      //     Uri.parse('http://127.0.0.1:5000/submit'),
                      //     body: {'my_image': base64Encode(image)});

                      // print(await http.get(Uri.parse('http://127.0.0.1:5000')));

                      // var request = http.Request(
                      //     'GET',
                      //     Uri.parse(
                      //         'https://api.bottomstreet.com/stocks/market?subCategory=pre-market&pageNo=1&category=equity&limit=5&section=commentaries'));

                      // http.StreamedResponse response = await request.send();

                      // if (response.statusCode == 200) {
                      //   print(await response.stream.bytesToString());
                      // } else {
                      //   print(response.reasonPhrase);
                      // }

                      var request = http.MultipartRequest(
                          "POST", Uri.parse("http://127.0.0.1:5000/submit"));

                      //add files to reqest body
                      request.files.add(await http.MultipartFile.fromPath(
                        'my_image',
                        image!.path,
                      ));

                      var streamedResponse = await request.send();
                      var response = http.Response.fromStream(streamedResponse);
                      print(response);

                      setState(() {});
                    }
                  },
                  child: Text(buttonText, style: const TextStyle(fontSize: 16)),
                )),
            if (prediction != null)
              Text(
                prediction!,
                style: const TextStyle(color: Colors.black),
              )
          ],
        ),
      ),
    );
  }
}
