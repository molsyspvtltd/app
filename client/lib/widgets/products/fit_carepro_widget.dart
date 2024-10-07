import 'package:flutterflow_ui/flutterflow_ui.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:video_player/video_player.dart';

import '../../models/products/fit_carepro_model.dart';
import '../../services/hive_cart.dart';
import '../../services/hive_functions.dart';
export '../../models/products/fit_carepro_model.dart';

class FitCareproWidget extends StatefulWidget {
  const FitCareproWidget({super.key});

  @override
  State<FitCareproWidget> createState() => _FitCareproWidgetState();
}

class _FitCareproWidgetState extends State<FitCareproWidget> {
  late FitCareproModel _model;
  late VideoPlayerController _controller;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => FitCareproModel());
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
      backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
      appBar: AppBar(
        backgroundColor: Color(0xFFCC5500),
        automaticallyImplyLeading: false,
        leading: FlutterFlowIconButton(
          borderColor: Colors.transparent,
          borderRadius: 30,
          buttonSize: 46,
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
          'fitKrPro',
          style: FlutterFlowTheme.of(context).headlineMedium.override(
            fontFamily: 'Outfit',
            color: Colors.white,
            fontSize: 24,
            letterSpacing: 0,
            fontWeight: FontWeight.w500,
          ),
        ),
        actions: [],
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
                  'assets/images/fitcarepro02.jpg',
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
                      'fitKrPro',
                      style: FlutterFlowTheme.of(context).headlineMedium.override(
                        fontFamily: 'Outfit',
                        letterSpacing: 0,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 8),
                    child: Text(
                      'Sports Genomics',
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
                    'fitKrPro encompasses a holistic approach, intertwining physical exercise, balanced nutrition, and mental well-being. It entails diverse workouts, from strength training to cardio, tailored to individual goals and abilities. Rest and recovery are integral, as is consistency in routines. With dedication and perseverance, men can achieve optimal fitness, enhancing their overall health and vitality.',
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
                  onPressed: () async {
                    //add to local db
                    await CartFunctions().addToCart('fitKrPro', HiveCart('fitKrPro', 'assets/images/fitcarepro02.jpg',37000));
                    Navigator.of(context).pushNamed('CartWidget');
                  },
                  text: 'Add to cart',
                  options: FFButtonOptions(
                    width: 300,
                    height: 50,
                    padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
                    iconPadding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
                    color: Color(0xFFCC5500),
                    textStyle:
                    FlutterFlowTheme.of(context).headlineSmall.override(
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
