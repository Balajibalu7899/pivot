import 'dart:io';

import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class DisplayVideos extends StatefulWidget {
  final String videoUrl;
  const DisplayVideos({Key key, this.videoUrl}) : super(key: key);

  @override
  _DisplayVideosState createState() => _DisplayVideosState();
}

class _DisplayVideosState extends State<DisplayVideos> {
  VideoPlayerController _controller;
  void initState() {
    _controller = VideoPlayerController.network(widget.videoUrl)
      ..initialize().then((_) {
        setState(() {});
      });
  }

  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: _controller.value.initialized
          ? Stack(
              children: [
                Container(
                  child: AspectRatio(
                    aspectRatio: _controller.value.aspectRatio,
                    child: VideoPlayer(_controller),
                  ),
                ),
                Positioned(
                  right: 0,
                  left: 0,
                  top: 0,
                  bottom: 0,
                  child: InkWell(
                    child: Container(
                      color: Colors.transparent,
                      child: !_controller.value.isPlaying
                          ? Center(
                              child: IconButton(
                                  icon: Icon(
                                    Icons.play_arrow,
                                    size: 70,
                                    color: Colors.white,
                                  ),
                                  onPressed: () {
                                    if (!_controller.value.isPlaying) {
                                      _controller.play();
                                    } else {
                                      _controller.pause();
                                    }
                                  }),
                            )
                          : SizedBox(),
                    ),
                    onTap: () {
                      if (!_controller.value.isPlaying) {
                        setState(() {
                          _controller.play();
                        });
                      } else {
                        setState(() {
                          _controller.pause();
                        });
                      }
                    },
                  ),
                ),
              ],
            )
          : Center(
              child: CircularProgressIndicator(),
            ),
    );
  }
}

class DisplayLocalVideos extends StatefulWidget {
  final File file;
  const DisplayLocalVideos({Key key, this.file}) : super(key: key);

  @override
  _DisplayLocalVideosState createState() => _DisplayLocalVideosState();
}

class _DisplayLocalVideosState extends State<DisplayLocalVideos> {
  VideoPlayerController _controller;
  void initState() {
    _controller = VideoPlayerController.file(widget.file)
      ..initialize().then((_) {
        setState(() {});
      });
  }

  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: _controller.value.initialized
          ? Stack(
              children: [
                Container(
                  child: AspectRatio(
                    aspectRatio: _controller.value.aspectRatio,
                    child: VideoPlayer(_controller),
                  ),
                ),
                Positioned(
                  right: 0,
                  left: 0,
                  top: 0,
                  bottom: 0,
                  child: InkWell(
                    child: Container(
                      color: Colors.transparent,
                      child: !_controller.value.isPlaying
                          ? Center(
                              child: IconButton(
                                  icon: Icon(
                                    Icons.play_arrow,
                                    size: 70,
                                    color: Colors.white,
                                  ),
                                  onPressed: () {
                                    if (!_controller.value.isPlaying) {
                                      _controller.play();
                                    } else {
                                      _controller.pause();
                                    }
                                  }),
                            )
                          : SizedBox(),
                    ),
                    onTap: () {
                      if (!_controller.value.isPlaying) {
                        setState(() {
                          _controller.play();
                        });
                      } else {
                        setState(() {
                          _controller.pause();
                        });
                      }
                    },
                  ),
                ),
              ],
            )
          : Center(
              child: CircularProgressIndicator(),
            ),
    );
  }
}
