import 'package:flutter/material.dart';

void main() {
  runApp(PhotoGalleryApp());
}

class PhotoGalleryApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Photo Gallery',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: PhotoGalleryScreen(),
    );
  }
}

class PhotoGalleryScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Photo Gallery'),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              padding: EdgeInsets.all(16),
              child: Text(
                'Welcome to My Photo Gallery!',
                style: TextStyle(fontSize: 20),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(10),
              child: TextField(
                decoration: InputDecoration(
                  labelText: 'Search Photos',
                  border: OutlineInputBorder(),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(12),
              child: Wrap(
                spacing: 8,
                runSpacing: 8,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      showSnackbar(context, 'Clicked on photo 1!');
                    },
                    child: Column(
                      children: [
                        Image.network(
                          'https://i.pinimg.com/originals/f1/5d/ea/f15deaa797aaa5901d514fde36a51ea9.jpg',
                          width: 60,
                          height: 60,
                          fit: BoxFit.cover,
                        ),
                        Text('Photo 1'),
                      ],
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      showSnackbar(context, 'Clicked on photo 2!');
                    },
                    child: Column(
                      children: [
                        Image.network(
                          'https://png.pngtree.com/background/20210706/original/pngtree-scenic-nature-background-picture-image_259993.jpg',
                          width: 60,
                          height: 60,
                          fit: BoxFit.cover,
                        ),
                        Text('Photo 2'),
                      ],
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      showSnackbar(context, 'Clicked on photo 3!');
                    },
                    child: Column(
                      children: [
                        Image.network(
                          'https://static.vecteezy.com/system/resources/thumbnails/008/074/253/small/tropical-forest-sunset-nature-background-with-coconut-trees-vector.jpg',
                          width: 60,
                          height: 60,
                          fit: BoxFit.cover,
                        ),
                        Text('Photo 3'),
                      ],
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      showSnackbar(context, 'Clicked on photo 4!');
                    },
                    child: Column(
                      children: [
                        Image.network(
                          'https://img.freepik.com/free-vector/vector-palm-trees-silhouette-with-orange-sunset-ocean-rocks_1284-48397.jpg',
                          width: 60,
                          height: 60,
                          fit: BoxFit.cover,
                        ),
                        Text('Photo 4'),
                      ],
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      showSnackbar(context, 'Clicked on photo 5!');
                    },
                    child: Column(
                      children: [
                        Image.network(
                          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTnAsFCvxrmRj_uSFiE3dsvI8M3Il16a_jVUw&usqp=CAU',
                          width: 60,
                          height: 60,
                          fit: BoxFit.cover,
                        ),
                        Text('Photo 5'),
                      ],
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      showSnackbar(context, 'Clicked on photo 6!');
                    },
                    child: Column(
                      children: [
                        Image.network(
                          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQfdFLw2VJ7znfqUV07f5RrWM_maDV-tCW1Xw&usqp=CAU',
                          width: 60,
                          height: 60,
                          fit: BoxFit.cover,
                        ),
                        Text('Photo 6'),
                      ],
                    ),
                  ),
                  // Add more photos here...
                ],
              ),
            ),
            ListView(
              shrinkWrap: true,
             // physics: NeverScrollableScrollPhysics(),
              children: [
                ListTile(
                  leading: Image.network(
                    'https://t3.ftcdn.net/jpg/05/55/82/46/360_F_555824600_OvpqblejjhjExcDDulsWkY3RxDrAr2hF.jpg',
                    width: 40,
                    height: 40,
                    fit: BoxFit.cover,
                  ),
                  title: Text('Photo 7'),
                  subtitle: Text('Subtitle for Photo 7'),
                ),
                ListTile(
                  leading: Image.network(
                    'https://previews.123rf.com/images/robertsrob/robertsrob1302/robertsrob130200013/17778043-beautiful-sunlight-in-the-autumn-forest-beauty-nature-background.jpg',
                    width: 40,
                    height: 40,
                    fit: BoxFit.cover,
                  ),
                  title: Text('Photo 8'),
                  subtitle: Text('Subtitle for Photo 8'),
                ),
                ListTile(
                  leading: Image.network(
                    'https://wallpaperset.com/w/full/c/9/0/522708.jpg',
                    width: 40,
                    height: 40,
                    fit: BoxFit.cover,
                  ),
                  title: Text('Photo 9'),
                  subtitle: Text('Subtitle for Photo 9'),
                ),

              ],
            ),
          ],
        ),
      ),
      floatingActionButton: IconButton(
        icon: Icon(Icons.cloud_upload),
        onPressed: () {
          showSnackbar(context, 'Photos Uploaded Successfully!');
        },
      ),
    );
  }

  void showSnackbar(BuildContext context, String message) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text(message)),
    );
  }
}