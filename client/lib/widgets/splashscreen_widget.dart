// import 'package:flutter/material.dart';
// import 'package:flutterflow_ui/flutterflow_ui.dart';
// import 'package:dnalyst/models/splashscreen_model.dart';
// import 'dart:async';
//
// export 'package:dnalyst/models/splashscreen_model.dart';
//
// class SplashscreenWidget extends StatefulWidget {
//   const SplashscreenWidget({super.key});
//
//   @override
//   State<SplashscreenWidget> createState() => _SplashscreenWidgetState();
// }
//
// class _SplashscreenWidgetState extends State<SplashscreenWidget>
//     with SingleTickerProviderStateMixin {
//   late SplashscreenModel _model;
//   late AnimationController _controller;
//   late Animation<double> _animation;
//
//   final scaffoldKey = GlobalKey<ScaffoldState>();
//
//   @override
//   void initState() {
//     super.initState();
//     _model = createModel(context, () => SplashscreenModel());
//
//     _controller = AnimationController(
//       duration: const Duration(seconds: 1),
//       vsync: this,
//     );
//
//     _animation = Tween<double>(begin: 1.0, end: 50.0).animate(
//       CurvedAnimation(
//         parent: _controller,
//         curve: Curves.easeInOut,
//       ),
//     );
//
//     Timer(const Duration(seconds: 2), () {
//       _controller.forward().then((_) {
//         Navigator.of(context).pushReplacementNamed('WelcomeScreen');
//       });
//     });
//   }
//
//   @override
//   void dispose() {
//     _model.dispose();
//     _controller.dispose();
//     super.dispose();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return GestureDetector(
//       onTap: () => _model.unfocusNode.canRequestFocus
//           ? FocusScope.of(context).requestFocus(_model.unfocusNode)
//           : FocusScope.of(context).unfocus(),
//       child: Scaffold(
//         key: scaffoldKey,
//         backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
//         body: SafeArea(
//           top: true,
//           child: InkWell(
//             splashColor: Colors.transparent,
//             focusColor: Colors.transparent,
//             hoverColor: Colors.transparent,
//             highlightColor: Colors.transparent,
//             onTap: () async {},
//             child: Column(
//               mainAxisSize: MainAxisSize.max,
//               children: [
//                 Align(
//                   alignment: AlignmentDirectional(0, 1),
//                   child: Padding(
//                     padding: EdgeInsetsDirectional.fromSTEB(0, 350, 0, 0),
//                     child: InkWell(
//                       splashColor: Colors.transparent,
//                       focusColor: Colors.transparent,
//                       hoverColor: Colors.transparent,
//                       highlightColor: Colors.transparent,
//                       onTap: () async {
//                         Navigator.of(context).pushReplacementNamed('WelcomeScreen');
//                       },
//                       child: AnimatedBuilder(
//                         animation: _animation,
//                         builder: (context, child) {
//                           return Row(
//                             mainAxisSize: MainAxisSize.min,
//                             children: [
//                               Text(
//                                 'dnal',
//                                 style: TextStyle(
//                                   fontFamily: 'Archivo Black',
//                                   color: const Color(0xFFCC5500),
//                                   fontSize: 32,
//                                   letterSpacing: 0,
//                                   fontWeight: FontWeight.bold,
//                                 ),
//                               ),
//                               Transform.scale(
//                                 scale: _animation.value,
//                                 child: Text(
//                                   'y',
//                                   style: TextStyle(
//                                     fontFamily: 'Archivo Black',
//                                     color: const Color(0xFFCC5500),
//                                     fontSize: 32,
//                                     letterSpacing: 0,
//                                     fontWeight: FontWeight.bold,
//                                   ),
//                                 ),
//                               ),
//                               Text(
//                                 'st',
//                                 style: TextStyle(
//                                   fontFamily: 'Archivo Black',
//                                   color: const Color(0xFFCC5500),
//                                   fontSize: 32,
//                                   letterSpacing: 0,
//                                   fontWeight: FontWeight.bold,
//                                 ),
//                               ),
//                             ],
//                           );
//                         },
//                       ),
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }

// import 'package:flutter/material.dart';
// import 'package:flutterflow_ui/flutterflow_ui.dart';
// import 'package:dnalyst/models/splashscreen_model.dart';
// import 'dart:async';
//
// export 'package:dnalyst/models/splashscreen_model.dart';
//
// class SplashscreenWidget extends StatefulWidget {
//   const SplashscreenWidget({super.key});
//
//   @override
//   State<SplashscreenWidget> createState() => _SplashscreenWidgetState();
// }
//
// class _SplashscreenWidgetState extends State<SplashscreenWidget>
//     with SingleTickerProviderStateMixin {
//   late SplashscreenModel _model;
//   late AnimationController _controller;
//   late Animation<double> _animation;
//
//   final scaffoldKey = GlobalKey<ScaffoldState>();
//
//   @override
//   void initState() {
//     super.initState();
//     _model = createModel(context, () => SplashscreenModel());
//
//     _controller = AnimationController(
//       duration: const Duration(seconds: 1),
//       vsync: this,
//     );
//
//     _animation = Tween<double>(begin: 1.0, end: 5.0).animate(
//       CurvedAnimation(
//         parent: _controller,
//         curve: Curves.easeInOut,
//       ),
//     );
//
//     Timer(const Duration(seconds: 2), () {
//       _controller.forward().then((_) {
//         Navigator.of(context).pushReplacementNamed('WelcomeScreen');
//       });
//     });
//   }
//
//   @override
//   void dispose() {
//     _model.dispose();
//     _controller.dispose();
//     super.dispose();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return GestureDetector(
//       onTap: () => _model.unfocusNode.canRequestFocus
//           ? FocusScope.of(context).requestFocus(_model.unfocusNode)
//           : FocusScope.of(context).unfocus(),
//       child: Scaffold(
//         key: scaffoldKey,
//         backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
//         body: SafeArea(
//           top: true,
//           child: Center(
//             child: Column(
//               mainAxisSize: MainAxisSize.max,
//               children: [
//                 Align(
//                   alignment: AlignmentDirectional(0, 1),
//                   child: Padding(
//                     padding: const EdgeInsets.only(top: 350),
//                     child: Stack(
//                       alignment: Alignment.center,
//                       children: [
//                         Image.asset(
//                           'assets/icons/applogomain.jpg', // Your main logo image
//                           width: 600,
//                           height: 400,
//                           fit: BoxFit.contain,
//                         ),
//                         AnimatedBuilder(
//                           animation: _animation,
//                           builder: (context, child) {
//                             return Positioned(
//                               top: 0,
//                               child: Transform.scale(
//                                 scale: _animation.value,
//                                 child: Image.asset(
//                                   'assets/icons/image.png', // Your "y" part image
//                                   fit: BoxFit.contain,
//                                   width: 600, // Adjust the width of the "y" image
//                                   height: 400, // Adjust the height of the "y" image
//                                 ),
//                               ),
//                             );
//                           },
//                         ),
//                       ],
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }

// import 'package:flutter/material.dart';
// import 'package:flutterflow_ui/flutterflow_ui.dart';
// import 'package:dnalyst/models/splashscreen_model.dart';
// import 'dart:async';
//
// export 'package:dnalyst/models/splashscreen_model.dart';
//
// class SplashscreenWidget extends StatefulWidget {
//   const SplashscreenWidget({super.key});
//
//   @override
//   State<SplashscreenWidget> createState() => _SplashscreenWidgetState();
// }
//
// class _SplashscreenWidgetState extends State<SplashscreenWidget>
//     with SingleTickerProviderStateMixin {
//   late SplashscreenModel _model;
//   late AnimationController _controller;
//   late Animation<double> _animation;
//
//   final scaffoldKey = GlobalKey<ScaffoldState>();
//
//   @override
//   void initState() {
//     super.initState();
//     _model = createModel(context, () => SplashscreenModel());
//
//     _controller = AnimationController(
//       duration: const Duration(seconds: 2),
//       vsync: this,
//     );
//
//     _animation = Tween<double>(begin: 1.0, end: 5.0).animate(
//       CurvedAnimation(
//         parent: _controller,
//         curve: Curves.easeInOut,
//       ),
//     );
//
//     Timer(const Duration(seconds: 1), () {
//       _controller.forward().then((_) {
//         Navigator.of(context).pushReplacementNamed('WelcomeScreen');
//       });
//     });
//   }
//
//   @override
//   void dispose() {
//     _model.dispose();
//     _controller.dispose();
//     super.dispose();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     final screenSize = MediaQuery.of(context).size;
//
//     return GestureDetector(
//       onTap: () => _model.unfocusNode.canRequestFocus
//           ? FocusScope.of(context).requestFocus(_model.unfocusNode)
//           : FocusScope.of(context).unfocus(),
//       child: Scaffold(
//         key: scaffoldKey,
//         backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
//         body: SafeArea(
//           top: true,
//           child: Center(
//             child: Stack(
//               alignment: Alignment.center,
//               children: [
//                 Image.asset(
//                   'assets/icons/dnalst_without_y-nobg.png', // Your main logo image
//                   width: screenSize.width,
//                   height: screenSize.height,
//                   fit: BoxFit.contain,
//                 ),
//                 AnimatedBuilder(
//                   animation: _animation,
//                   builder: (context, child) {
//                     return Transform.scale(
//                         scale: _animation.value,
//                         child: Transform.translate(
//                         offset: Offset(-5, 30), // Move slightly left and down
//                     child: Image.asset(
//                     'assets/icons/y-nobg.png', // Your "y" part image
//                     fit: BoxFit.cover,
//                     width: screenSize.width * 0.23,
//                     height: screenSize.height * 0.15,
//                          ),
//                       ),
//                     );
//                   },
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }

// import 'package:flutter/material.dart';
// import 'package:flutterflow_ui/flutterflow_ui.dart';
// import 'package:dnalyst/models/splashscreen_model.dart';
// import 'dart:async';
//
// export 'package:dnalyst/models/splashscreen_model.dart';
//
// class SplashscreenWidget extends StatefulWidget {
//   const SplashscreenWidget({super.key});
//
//   @override
//   State<SplashscreenWidget> createState() => _SplashscreenWidgetState();
// }
//
// class _SplashscreenWidgetState extends State<SplashscreenWidget>
//     with SingleTickerProviderStateMixin {
//   late SplashscreenModel _model;
//   late AnimationController _controller;
//   late Animation<double> _zoomInAnimation;
//   late Animation<double> _zoomOutAnimation;
//
//   final scaffoldKey = GlobalKey<ScaffoldState>();
//
//   @override
//   void initState() {
//     super.initState();
//     _model = createModel(context, () => SplashscreenModel());
//
//     _controller = AnimationController(
//       duration: const Duration(seconds: 2),
//       vsync: this,
//     );
//
//     _zoomInAnimation = Tween<double>(begin: 1.0, end: 5.0).animate(
//       CurvedAnimation(
//         parent: _controller,
//         curve: Curves.easeInOut,
//       ),
//     );
//
//     _zoomOutAnimation = Tween<double>(begin: 1.0, end: 0.5).animate(
//       CurvedAnimation(
//         parent: _controller,
//         curve: Curves.easeInOut,
//       ),
//     );
//
//     Timer(const Duration(seconds: 1), () {
//       _controller.forward().then((_) {
//         Navigator.of(context).pushReplacementNamed('WelcomeScreen');
//       });
//     });
//   }
//
//   @override
//   void dispose() {
//     _model.dispose();
//     _controller.dispose();
//     super.dispose();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     final screenSize = MediaQuery.of(context).size;
//
//     return GestureDetector(
//       onTap: () => _model.unfocusNode.canRequestFocus
//           ? FocusScope.of(context).requestFocus(_model.unfocusNode)
//           : FocusScope.of(context).unfocus(),
//       child: Scaffold(
//         key: scaffoldKey,
//         backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
//         body: SafeArea(
//           top: true,
//           child: Center(
//             child: Stack(
//               alignment: Alignment.center,
//               children: [
//                 AnimatedBuilder(
//                   animation: _zoomOutAnimation,
//                   builder: (context, child) {
//                     return Transform.scale(
//                       scale: _zoomOutAnimation.value,
//                       child: Image.asset(
//                         'assets/icons/dnalst_without_y-nobg.png', // Your main logo image
//                         width: screenSize.width,
//                         height: screenSize.height,
//                         fit: BoxFit.contain,
//                       ),
//                     );
//                   },
//                 ),
//                 AnimatedBuilder(
//                   animation: _zoomInAnimation,
//                   builder: (context, child) {
//                     return Transform.scale(
//                       scale: _zoomInAnimation.value,
//                       child: Transform.translate(
//                         offset: const Offset(-5, 30), // Move slightly left and down
//                         child: Image.asset(
//                           'assets/icons/y-nobg.png', // Your "y" part image
//                           fit: BoxFit.cover,
//                           width: screenSize.width * 0.23,
//                           height: screenSize.height * 0.15,
//                         ),
//                       ),
//                     );
//                   },
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }


import 'package:dnalyst/services/sharedprefernce.dart';
import 'package:flutter/material.dart';
import 'package:flutterflow_ui/flutterflow_ui.dart';
import 'package:dnalyst/models/splashscreen_model.dart';
import 'dart:async';

export 'package:dnalyst/models/splashscreen_model.dart';

class SplashscreenWidget extends StatefulWidget {
  const SplashscreenWidget({super.key});

  @override
  State<SplashscreenWidget> createState() => _SplashscreenWidgetState();
}

class _SplashscreenWidgetState extends State<SplashscreenWidget>
    with SingleTickerProviderStateMixin {
  late SplashscreenModel _model;
  late AnimationController _controller;
  late Animation<double> _zoomInAnimation;
  late Animation<double> _zoomOutAnimation;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SplashscreenModel());

    _controller = AnimationController(
      duration: const Duration(seconds: 2),
      vsync: this,
    );

    _zoomInAnimation = Tween<double>(begin: 1.0, end: 12.0).animate( // Increase the end value for maximum zoom
      CurvedAnimation(
        parent: _controller,
        curve: Curves.easeInOut,
      ),
    );

    _zoomOutAnimation = Tween<double>(begin: 1.0, end: 0.5).animate(
      CurvedAnimation(
        parent: _controller,
        curve: Curves.easeInOut,
      ),
    );

    Timer(const Duration(seconds: 1), () {
      _controller.forward().then((_) async {
        bool isLoggedIn=await SharedPref().getloggInStatus();

       isLoggedIn ? Navigator.of(context).pushReplacementNamed('HomescreenWidget')
       : Navigator.of(context).pushReplacementNamed('WelcomeScreen');
      });
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
    final screenSize = MediaQuery.of(context).size;

    return GestureDetector(
      onTap: () => _model.unfocusNode.canRequestFocus
          ? FocusScope.of(context).requestFocus(_model.unfocusNode)
          : FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
        body: SafeArea(
          top: true,
          child: Center(
            child: Transform.translate(
              offset: const Offset(0, -40), // Move the entire stack 20 pixels up
              child: Stack(
                alignment: Alignment.center,
                children: [
                  AnimatedBuilder(
                    animation: _zoomOutAnimation,
                    builder: (context, child) {
                      return Transform.scale(
                        scale: _zoomOutAnimation.value,
                        child: Image.asset(
                          'assets/icons/dnalst_without_y-nobg.png', // Your main logo image
                          width: screenSize.width,
                          height: screenSize.height,
                          fit: BoxFit.contain,
                        ),
                      );
                    },
                  ),
                  AnimatedBuilder(
                    animation: _zoomInAnimation,
                    builder: (context, child) {
                      return Transform.scale(
                        scale: _zoomInAnimation.value,
                        child: Transform.translate(
                          offset: const Offset(-5, 30), // Move slightly left and down
                          child: Image.asset(
                            'assets/icons/y-nobg.png', // Your "y" part image
                            fit: BoxFit.cover,
                            width: screenSize.width * 0.23,
                            height: screenSize.height * 0.15,
                          ),
                        ),
                      );
                    },
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
