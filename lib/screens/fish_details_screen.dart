import 'package:flutter/material.dart';
import 'package:transparent_image/transparent_image.dart';

class FishDetailsScreen extends StatelessWidget {
  const FishDetailsScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('your fish'),
      ),
      body: Card(
        child: Stack(
          children: [
            SizedBox(
              width: double.infinity,
              height: 400,
              child: FadeInImage(
                placeholder: MemoryImage(kTransparentImage),
                image: const NetworkImage(
                    'https://images.unsplash.com/photo-1513568821485-d64ace9a3509?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=901&q=80'),
              ),
            ),
            Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                child: Container(
                  color: Colors.black54,
                  padding: const EdgeInsets.symmetric(
                    vertical: 6,
                    horizontal: 70,
                  ),
                  child: const Text(
                    'talipia male fish',
                    textAlign: TextAlign.center,
                    softWrap: true,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
