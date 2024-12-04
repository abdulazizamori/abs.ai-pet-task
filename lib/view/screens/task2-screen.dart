import 'package:flutter/material.dart';
import 'package:task1abs/model/pet-model.dart';

class Task2Screen extends StatelessWidget {
  const Task2Screen({super.key});

  @override
  Widget build(BuildContext context) {
    List<Pet> petList = [
      Pet(
          name: 'Dog',
          type: 'Golden',
          petLoveCount: 20,
          image: 'https://drive.google.com/file/d/1SVXNgYjWidATdPpPfswlWtS31DnhjB-2/view ?usp=share_link'
      ),
      Pet(
          name: 'Lablador',
          type: 'Golden',
          petLoveCount: 18,
          image: 'https://drive.google.com/file/d/152WsHjSIgQUy0gS_WQEo3mWOSMK8v1k M/view?usp=share_link'
      ),
    ];

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey,
        title: Text('Pet Market'),
        centerTitle: true,
      ),
      body: ListView.builder(
          itemCount: petList.length,
          shrinkWrap: true,
          physics: BouncingScrollPhysics(),
          itemBuilder: (context, index) {
            String originalLink = petList[index].image!;
            String fileId =
            originalLink.substring(originalLink.indexOf('/d/') + 3, originalLink.indexOf('/view'));

            String newLink = 'https://drive.google.com/uc?export=view&id=$fileId';
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children:[
                  Image.network(newLink),
                  SizedBox(width: 5,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(petList[index].type!),
                      Text("Pet Love: ${petList[index].name!}"),
                      Text("Pet Love: ${petList[index].petLoveCount!}"),

                    ],
                  ),]

              ),
            );
          }),
    );
  }
}
