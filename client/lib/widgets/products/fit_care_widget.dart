import 'package:flutter/material.dart';
import 'package:flutterflow_ui/flutterflow_ui.dart';
import 'package:provider/provider.dart';
import 'package:video_player/video_player.dart';

import '../../models/products/fit_care_model.dart';
import '../../services/hive_cart.dart';
import '../../services/hive_functions.dart';
export '../../models/products/fit_care_model.dart';

class FitCareWidget extends StatefulWidget {
  const FitCareWidget({super.key});

  @override
  State<FitCareWidget> createState() => _FitCareWidgetState();
}

class _FitCareWidgetState extends State<FitCareWidget> {
  late FitCareModel _model;
  late VideoPlayerController _controller;

  final scaffoldKey = GlobalKey<ScaffoldState>();



  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => FitCareModel());

    _controller = VideoPlayerController.networkUrl(
      Uri.parse('https://videos.pexels.com/video-files/3125907/3125907-uhd_2560_1440_25fps.mp4'),
    )..initialize().then((_) {
      setState(() {});
    });
  }


  @override
  void dispose() {
    _model.dispose();
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        backgroundColor: Color(0xFFCC5500),
        automaticallyImplyLeading: false,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_rounded,
            color: Colors.white,
            size: 30,
          ),
          onPressed: () async {
            Navigator.of(context).pop();
          },
        ),
        title: Text(
          'fitKr',
          style: TextStyle(
            fontFamily: 'Outfit',
            color: Colors.white,
            fontSize: 24,
            fontWeight: FontWeight.w500,
          ),
        ),
        centerTitle: false,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.all(16),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Image.asset(
                  'assets/images/fitcare02.jpg',
                  width: MediaQuery.of(context).size.width,
                  height: 230,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(16, 0, 16, 0),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 5),
                    child: Text(
                      'fitKr',
                      style: TextStyle(
                        fontFamily: 'Outfit',
                        fontSize: 24,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 8),
                    child: Text(
                      'Mens Fitness',
                      style: TextStyle(
                        fontFamily: 'Readex Pro',
                        color: Color(0xFFACACAE),
                        fontSize: 12,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                  ),
                  Text(
                    'fitKr encompasses a holistic approach, intertwining physical exercise, balanced nutrition, and mental well-being. It entails diverse workouts, from strength training to cardio, tailored to individual goals and abilities. Rest and recovery are integral, as is consistency in routines. With dedication and perseverance, men can achieve optimal fitness, enhancing their overall health and vitality.',
                    textAlign: TextAlign.justify,
                    style: TextStyle(
                      fontFamily: 'Readex Pro',
                      fontSize: 14,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 12, 0, 0),
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        _controller.value.isInitialized
                            ? AspectRatio(
                          aspectRatio: _controller.value.aspectRatio,
                          child: VideoPlayer(_controller),
                        )
                            : Center(child: CircularProgressIndicator()),
                        IconButton(
                          icon: Icon(
                            _controller.value.isPlaying
                                ? Icons.pause
                                : Icons.play_arrow,
                            color: Colors.white,
                            size: 50,
                          ),
                          onPressed: () {
                            setState(() {
                              if (_controller.value.isPlaying) {
                                _controller.pause();
                              } else {
                                _controller.play();
                              }
                            });
                          },
                        ),
                      ],
                    ),
                  ),
                  Divider(
                    height: 32,
                    thickness: 1,
                    color: Colors.grey,
                  ),
                ],
              ),
            ),
            Align(
              alignment: AlignmentDirectional(0, 0),
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 24),
                child: ElevatedButton(

                  onPressed: () async {
                    //add to local db
                    await CartFunctions().addToCart('fitKr',HiveCart('fitKr', 'assets/images/fitcare02.jpg',35000));
                    Navigator.of(context).pushNamed('CartWidget');
                  },
                  child: Text(
                    'Add to cart',
                    style: TextStyle(
                      fontFamily: 'Outfit',
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xFFCC5500),
                    padding: EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(40),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
