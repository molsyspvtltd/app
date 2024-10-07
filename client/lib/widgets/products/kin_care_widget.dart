import 'package:flutter/material.dart';
import 'package:flutterflow_ui/flutterflow_ui.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:video_player/video_player.dart';

import '../../models/products/kin_care_model.dart';
import '../../services/hive_cart.dart';
import '../../services/hive_functions.dart';
export '../../models/products/kin_care_model.dart';

class KinCareWidget extends StatefulWidget {
  const KinCareWidget({super.key});

  @override
  State<KinCareWidget> createState() => _KinCareWidgetState();
}

class _KinCareWidgetState extends State<KinCareWidget> {
  late KinCareModel _model;
  late VideoPlayerController _videoController;
  bool _isPlaying = false;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => KinCareModel());
    _videoController = VideoPlayerController.networkUrl(
      Uri.parse('https://videos.pexels.com/video-files/7580020/7580020-hd_1920_1080_25fps.mp4'),
    )..initialize().then((_) {
      setState(() {});
    });
    _videoController.addListener(() {
      setState(() {
        _isPlaying = _videoController.value.isPlaying;
      });
    });
  }

  @override
  void dispose() {
    _model.dispose();
    _videoController.dispose();
    super.dispose();
  }

  void _togglePlayPause() {
    setState(() {
      if (_videoController.value.isPlaying) {
        _videoController.pause();
      } else {
        _videoController.play();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
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
          'kinKr',
          style: FlutterFlowTheme.of(context).headlineMedium.override(
            fontFamily: 'Outfit',
            color: Colors.white,
            fontSize: 24,
            letterSpacing: 0,
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
                  'assets/images/kincare02.png',
                  width: MediaQuery.sizeOf(context).width,
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
                      'kinKr',
                      style: FlutterFlowTheme.of(context).headlineMedium.override(
                        fontFamily: 'Outfit',
                        letterSpacing: 0,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 8),
                    child: Text(
                      'Child Genomics',
                      style: FlutterFlowTheme.of(context).titleMedium.override(
                        fontFamily: 'Readex Pro',
                        color: Color(0xFFACACAE),
                        fontSize: 12,
                        letterSpacing: 0,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                  ),
                  Text(
                    'kinKr encompasses a holistic approach, intertwining physical exercise, balanced nutrition, and mental well-being. It entails diverse workouts, from strength training to cardio, tailored to individual goals and abilities. Rest and recovery are integral, as is consistency in routines. With dedication and perseverance, men can achieve optimal fitness, enhancing their overall health and vitality.',
                    textAlign: TextAlign.justify,
                    style: FlutterFlowTheme.of(context).labelLarge.override(
                      fontFamily: 'Readex Pro',
                      letterSpacing: 0,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 12, 0, 0),
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        _videoController.value.isInitialized
                            ? AspectRatio(
                          aspectRatio: _videoController.value.aspectRatio,
                          child: VideoPlayer(_videoController),
                        )
                            : Center(child: CircularProgressIndicator()),
                        Positioned(
                          bottom: 10,
                          child: IconButton(
                            icon: Icon(
                              _isPlaying ? Icons.pause : Icons.play_arrow,
                              size: 40,
                              color: Colors.white,
                            ),
                            onPressed: _togglePlayPause,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Divider(
                    height: 32,
                    thickness: 1,
                    color: FlutterFlowTheme.of(context).alternate,
                  ),
                ],
              ),
            ),
            Align(
              alignment: AlignmentDirectional(0, 0),
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 24),
                child: FFButtonWidget(
                  // onPressed: () async {
                  //   Navigator.of(context).pushNamed('null'); // Update navigation logic here
                  // },
                  onPressed: () async {
                    //add to local db
                    await CartFunctions().addToCart('fitKr', HiveCart('kinKr', 'assets/images/kincare02.png',35000));
                    Navigator.of(context).pushNamed('CartWidget');
                  },
                  text: 'Add to cart',
                  options: FFButtonOptions(
                    width: 300,
                    height: 50,
                    padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
                    iconPadding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
                    color: Color(0xFFCC5500),
                    textStyle: FlutterFlowTheme.of(context).headlineSmall.override(
                      fontFamily: 'Outfit',
                      color: Colors.white,
                      fontSize: 20,
                      letterSpacing: 0,
                    ),
                    elevation: 5,
                    borderSide: BorderSide(
                      color: Colors.transparent,
                      width: 1,
                    ),
                    borderRadius: BorderRadius.circular(40),
                    hoverColor: FlutterFlowTheme.of(context).accent1,
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
