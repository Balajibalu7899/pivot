import 'package:Pivot/screens/Intro.dart';
import 'package:Pivot/screens/Signin.dart';
import 'package:Pivot/screens/video.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:image_picker/image_picker.dart';
import 'package:video_player/video_player.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MainPage(),
    );
  }
}

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    return MyIntroView(
      pages: <Widget>[
        Image.asset("assets/images/introfirstpage.png", fit: BoxFit.cover),
        Image.asset("assets/images/introsepage.png", fit: BoxFit.cover),
        Image.asset("assets/images/introthirdpage.png", fit: BoxFit.cover),
        Image.asset("assets/images/introfourtpage.png", fit: BoxFit.cover),
      ],
      onIntroCompleted: () {
        Navigator.push(context,
            MaterialPageRoute(builder: (BuildContext context) {
          return SigninPage();
        }));
      },
    );
  }
}

/* var _image;
  var video;
  bool sam = false;
  VideoPlayerController _controller;
  Future<void> _initializeVideoPlayerFuture;
  getimage() async {
    var _tempimg = await ImagePicker.pickImage(source: ImageSource.gallery);
    setState(() {
      _image = _tempimg;
    });
  }

  getvideo() async {
    var _tempvideo = await ImagePicker.pickVideo(source: ImageSource.gallery);

    video = _tempvideo;
    _controller = VideoPlayerController.asset(
      _tempvideo.path,
    )..initialize().then((_) {
        setState(() {});
        _controller.play();
      });
  } */
// return Scaffold(
//         body: SafeArea(
//       child: Center(
//         child: Column(
//           children: [
//             (_image == null && video == null)
//                 ? Container(
//                     height: 200,
//                     color: Colors.blueGrey,
//                   )
//                 : Padding(
//                     padding: const EdgeInsets.all(8.0),
//                     child: Column(
//                       children: [
//                         Container(
//                             height: 350,
//                             width: MediaQuery.of(context).size.width,
//                             child: (_image != null)
//                                 ? Image(
//                                     image: FileImage(
//                                       _image,
//                                       scale: 1.0,
//                                     ),
//                                     fit: BoxFit.fill,
//                                   )
//                                 : (video != null)
//                                     ? FutureBuilder(
//                                         future: _initializeVideoPlayerFuture,
//                                         builder: (context, snapshot) {
//                                           if (snapshot.connectionState ==
//                                               ConnectionState.done) {
//                                             print(video.path);
//                                             return AspectRatio(
//                                               aspectRatio: 19 / 9,
//                                               child: Container(
//                                                 child: VideoPlayer(_controller),
//                                               ),
//                                             );
//                                           } else {
//                                             return Center(
//                                                 child:
//                                                     CircularProgressIndicator());
//                                           }
//                                         })
//                                     : Container(
//                                         color: Colors.blue,
//                                       )),
//                         Padding(
//                           padding: const EdgeInsets.only(left: 100, right: 100),
//                           child: OutlineButton(
//                             onPressed: () {},
//                             child: Row(
//                               children: [
//                                 Icon(Icons.upload_file),
//                                 Text("upload"),
//                               ],
//                             ),
//                           ),
//                         ),
//                         RaisedButton(
//                           onPressed: () {
//                             if (_controller.value.isPlaying) {
//                               _controller.pause();
//                             }
//                           },
//                           child: Text("Stop"),
//                         )
//                       ],
//                     ),
//                   ),
//             IconButton(
//                 icon: Icon(
//                   Icons.camera,
//                   color: Colors.blue,
//                   size: 50,
//                 ),
//                 onPressed: () {
//                   getimage();
//                 }),
//             IconButton(
//                 icon: Icon(
//                   Icons.video_call,
//                   color: Colors.blue,
//                   size: 50,
//                 ),
//                 onPressed: () {
//                   getvideo();
//                 }),
//           ],
//         ),
//       ),
//     ));
