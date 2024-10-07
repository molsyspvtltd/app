import 'package:flutter/material.dart';
import 'package:flutterflow_ui/flutterflow_ui.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:video_player/video_player.dart';

import '../../models/products/gut_carepro_model.dart';
export '../../models/products/gut_carepro_model.dart';

class GutCareproWidget extends StatefulWidget {
  const GutCareproWidget({super.key});

  @override
  State<GutCareproWidget> createState() => _GutCareproWidgetState();
}

class _GutCareproWidgetState extends State<GutCareproWidget> {
  late GutCareproModel _model;
  late VideoPlayerController _videoController;
  bool _isPlaying = false;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => GutCareproModel());
    _videoController = VideoPlayerController.networkUrl(
      Uri.parse('https://videos.pexels.com/video-files/2832316/2832316-hd_1920_1080_30fps.mp4'),
    )..initialize().then((_) {
      setState(() {});
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
        _isPlaying = false;
      } else {
        _videoController.play();
        _isPlaying = true;
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
          'gutKrPro',
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
                  'assets/images/gutcarepro02.jpg',
                  width: MediaQuery.sizeOf(context).width,
                  height: 230,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(16, 0, 16, 24),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 5),
                    child: Text(
                      'gutKrPro',
                      style: FlutterFlowTheme.of(context).headlineMedium.override(
                        fontFamily: 'Outfit',
                        letterSpacing: 0,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 8),
                    child: Text(
                      'Gut Health',
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
                    'gutKrPro delves into profound gut health management, encompassing advanced strategies for digestive optimization, microbiome diversity, and immune support. It emphasizes targeted interventions such as prebiotics, postbiotics, and personalized dietary plans tailored to intricate gut flora dynamics. Hydration and stress management play pivotal roles, ensuring holistic gut wellness.',
                    textAlign: TextAlign.justify,
                    style: FlutterFlowTheme.of(context).labelLarge.override(
                      fontFamily: 'Readex Pro',
                      letterSpacing: 0,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 12, 0, 0),
                    child: _videoController.value.isInitialized
                        ? Stack(
                      alignment: Alignment.center,
                      children: [
                        AspectRatio(
                          aspectRatio: _videoController.value.aspectRatio,
                          child: VideoPlayer(_videoController),
                        ),
                        if (!_isPlaying)
                          IconButton(
                            icon: Icon(
                              Icons.play_arrow,
                              color: Colors.white,
                              size: 64,
                            ),
                            onPressed: _togglePlayPause,
                          ),
                        if (_isPlaying)
                          IconButton(
                            icon: Icon(
                              Icons.pause,
                              color: Colors.white,
                              size: 64,
                            ),
                            onPressed: _togglePlayPause,
                          ),
                      ],
                    )
                        : Center(child: CircularProgressIndicator()),
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
                    showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return AlertDialog(
                          title: Text('Coming Soon'),
                          content: Text('This feature is not available yet.'),
                          actions: <Widget>[
                            TextButton(
                              child: Text('OK'),
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                            ),
                          ],
                        );
                      },
                    );
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
