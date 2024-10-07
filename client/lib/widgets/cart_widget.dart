import 'package:dnalyst/services/hive_cart.dart';
import 'package:dnalyst/widgets/success_payment_widget.dart';
import 'package:flutterflow_ui/flutterflow_ui.dart';

import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import 'package:dnalyst/models/cart_model.dart';

import '../services/hive_functions.dart';
export 'package:dnalyst/models/cart_model.dart';

class CartWidget extends StatefulWidget {
  const CartWidget({super.key}); // Widget constructor

  @override
  State<CartWidget> createState() => _CartWidgetState(); // State creation
}

class _CartWidgetState extends State<CartWidget> {
  // State class starts
  final scaffoldKey = GlobalKey<ScaffoldState>();

  List<HiveCart> hiveList = []; // List to store cart items


  double gst=1000.20;

  double totalPrice(){
    double price=0;
    hiveList.forEach((model) {
      price+=model.price;
    });
    return price;
  }

  @override
  void initState() {
    // initState method starts
    super.initState();
    getList(); // Call method to fetch cart items
  } // initState method ends

  Future<void> getList() async {
    // getList method starts
    hiveList = await CartFunctions().getCart();
    totalPrice();// Fetch cart items
    setState(() {}); // Update UI
  } // getList method ends

//   @override
//   Widget build(BuildContext context) { // build method starts
//     return Scaffold( // Scaffold widget starts
//       key: scaffoldKey, // Assign scaffold key
//       backgroundColor: FlutterFlowTheme.of(context).primaryBackground, // Set background color
//       appBar: AppBar( // AppBar widget starts
//         backgroundColor: Color(0xFFCC5500), // Set AppBar color
//         automaticallyImplyLeading: false, // Disable automatic leading widget
//         leading: FlutterFlowIconButton( // Leading button starts
//           borderColor: Colors.transparent,
//           borderRadius: 30,
//           buttonSize: 46,
//           icon: Icon(
//             Icons.arrow_back_rounded,
//             color: FlutterFlowTheme.of(context).primaryBackground,
//             size: 25,
//           ),
//           onPressed: () async { // Back button press action
//             Navigator.of(context).pop();
//           }, // onPressed ends
//         ), // Leading button ends
//         actions: [], // Empty actions
//         centerTitle: false,
//         elevation: 0,
//       ), // AppBar widget ends
//       body: Align( // Align widget starts
//         alignment: AlignmentDirectional(0, -1), // Aligns child
//         child: SingleChildScrollView( // SingleChildScrollView starts
//           child: Column( // Column widget starts
//               mainAxisSize: MainAxisSize.max,
//               children: [
//           Padding( // Padding widget starts
//           padding: EdgeInsetsDirectional.fromSTEB(16, 16, 16, 24),
//           child: Wrap( // Wrap widget starts
//               spacing: 16,
//               runSpacing: 16,
//               alignment: WrapAlignment.start,
//               crossAxisAlignment: WrapCrossAlignment.start,
//               direction: Axis.horizontal,
//               runAlignment: WrapAlignment.start,
//               verticalDirection: VerticalDirection.down,
//               clipBehavior: Clip.none,
//               children: [
//           Container( // Container widget starts
//           constraints: BoxConstraints(maxWidth: 750),
//           decoration: BoxDecoration( // BoxDecoration starts
//             color: FlutterFlowTheme.of(context).secondaryBackground,
//             boxShadow: [
//               BoxShadow(
//                 blurRadius: 4,
//                 color: Color(0x33000000),
//                 offset: Offset(0, 2),
//               )
//             ],
//             borderRadius: BorderRadius.circular(12),
//           ), // BoxDecoration ends
//           child: Padding( // Padding inside Container starts
//             padding: EdgeInsets.all(16),
//             child: Column( // Column inside Container starts
//               mainAxisSize: MainAxisSize.max,
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//               Text(
//               'Your Cart', // Title text
//               style: FlutterFlowTheme.of(context)
//                   .titleLarge
//                   .override(
//                 fontFamily: 'Outfit',
//                 letterSpacing: 0,
//               ),
//             ),
//             Padding( // Padding around the subtitle starts
//               padding: EdgeInsetsDirectional.fromSTEB(0, 4, 0, 12),
//               child: Text(
//                 'Below is the list of items in your cart.',
//                 style: FlutterFlowTheme.of(context)
//                     .labelMedium
//                     .override(
//                   fontFamily: 'Readex Pro',
//                   letterSpacing: 0,
//                 ),
//               ),
//             ), // Padding ends
//             ListView( // ListView starts
//               padding: EdgeInsets.zero,
//               shrinkWrap: true,
//               scrollDirection: Axis.vertical,
//               children: hiveList.map((model) => // Loop through cart items
//               Padding( // Padding around each cart item starts
//                 padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 12),
//                 child: Container( // Container for each cart item starts
//                   width: MediaQuery.sizeOf(context).width,
//                   decoration: BoxDecoration( // BoxDecoration for cart item starts
//                     color: FlutterFlowTheme.of(context).secondaryBackground,
//                     boxShadow: [
//                       BoxShadow(
//                         blurRadius: 0,
//                         color: FlutterFlowTheme.of(context).alternate,
//                         offset: Offset(0, 1),
//                       )
//                     ],
//                     borderRadius: BorderRadius.circular(0),
//                   ), // BoxDecoration ends
//                   child: Column( // Column inside cart item starts
//                     mainAxisSize: MainAxisSize.max,
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       Padding( // Padding around Row starts
//                         padding: EdgeInsetsDirectional.fromSTEB(0, 4, 0, 12),
//                         child: Row( // Row for image and details starts
//                           mainAxisSize: MainAxisSize.max,
//                           children: [
//                             Padding( // Padding around image starts
//                               padding: EdgeInsetsDirectional.fromSTEB(0, 1, 1, 1),
//                               child: ClipRRect( // ClipRRect for image starts
//                                 borderRadius: BorderRadius.circular(12),
//                                 child: Image.asset(
//                                   model.imageUrl, // Image URL from the model
//                                   width: 70,
//                                   height: 70,
//                                   fit: BoxFit.cover,
//                                 ),
//                               ), // ClipRRect ends
//                             ), // Padding ends
//                             Expanded( // Expanded widget for text content starts
//                               flex: 3,
//                               child: Padding( // Padding for text content starts
//                                 padding: EdgeInsetsDirectional.fromSTEB(8, 0, 4, 0),
//                                 child: Column( // Column for text content starts
//                                   mainAxisSize: MainAxisSize.max,
//                                   mainAxisAlignment: MainAxisAlignment.center,
//                                   crossAxisAlignment: CrossAxisAlignment.start,
//                                   children: [
//                                     Text(
//                                       model.productName, // Product name
//                                       style: FlutterFlowTheme.of(context)
//                                           .titleLarge
//                                           .override(
//                                         fontFamily: 'Outfit',
//                                         letterSpacing: 0,
//                                       ),
//                                     ),
//                                     Padding( // Padding around quantity text starts
//                                       padding: EdgeInsetsDirectional.fromSTEB(0, 4, 0, 0),
//                                       child: RichText(
//                                         textScaler: MediaQuery.of(context).textScaler,
//                                         text: TextSpan(
//                                           children: [
//                                             TextSpan(
//                                               text: 'Qty: ',
//                                               style: TextStyle(),
//                                             ),
//                                             TextSpan(
//                                               text: '1',
//                                               style: TextStyle(),
//                                             )
//                                           ],
//                                           style: FlutterFlowTheme.of(context)
//                                               .labelSmall
//                                               .override(
//                                             fontFamily: 'Readex Pro',
//                                             letterSpacing: 0,
//                                           ),
//                                         ),
//                                       ),
//                                     ), // Padding ends
//                                   ],
//                                 ), // Column ends
//                               ), // Padding ends
//                             ), // Expanded ends
//                             Padding( // Padding around price starts
//                               padding: EdgeInsetsDirectional.fromSTEB(8, 0, 0, 0),
//                               child: Text(
//                                 '\₹35000', // Price text
//                                 textAlign: TextAlign.end,
//                                 style: FlutterFlowTheme.of(context)
//                                     .titleLarge
//                                     .override(
//                                   fontFamily: 'Outfit',
//                                   letterSpacing: 0,
//                                 ),
//                               ),
//                             ), // Padding ends
//                           ], // Row children end
//                         ), // Row ends
//                       ), // Padding ends
//                       Padding( // Padding around description starts
//                         padding: EdgeInsetsDirectional.fromSTEB(0, 4, 8, 12),
//                         child: AutoSizeText(
//                           'explore ${model.productName} from dnalyst\n', // Product description
//                           textAlign: TextAlign.start,
//                           style: FlutterFlowTheme.of(context)
//                               .labelMedium
//                               .override(
//                             fontFamily: 'Readex Pro',
//                             letterSpacing: 0,
//                           ),
//                         ),
//                       ), // Padding ends
//                       Padding( // Padding around remove button starts
//                         padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 12),
//                         child: Row( // Row for remove button starts
//                           mainAxisSize: MainAxisSize.max,
//                           children: [
//                             Icon(
//                               Icons.delete_outline,
//                               color: FlutterFlowTheme.of(context).error,
//                               size: 24,
//                             ),
//                             Padding( // Padding around remove text starts
//                               padding: EdgeInsetsDirectional.fromSTEB(12, 0, 0, 0),
//                               child: GestureDetector( // GestureDetector for remove text starts
//                                 onTap: () async {
//                                   await CartFunctions().delete(model); // Delete item
//                                   getList(); // Refresh the list after deletion
//                                 },
//                                 child: Text(
//                                   'Remove',
//                                   style: FlutterFlowTheme.of(context)
//                                       .bodyMedium
//                                       .override(
//                                     fontFamily: 'Readex Pro',
//                                     color: FlutterFlowTheme.of(context).error,
//                                     letterSpacing: 0,
//                                   ),
//                                 ), // Text ends
//                               ), // GestureDetector ends
//                             ), // Padding ends
//                           ], // Row children end
//                         ), // Row ends
//                       ), // Padding ends
//                     ], // Column children end
//                   ), // Column ends
//                 ), // Container ends
//               ), // Padding ends
//               ).toList(), // ListView item builder ends
//
//                             ),
//                           ],
//                         ),
//                       ),
//                     ),
//                     Container(
//                       width: double.infinity,
//                       constraints: BoxConstraints(
//                         maxWidth: 430,
//                       ),
//                       decoration: BoxDecoration(
//                         color: FlutterFlowTheme.of(context).secondaryBackground,
//                         boxShadow: [
//                           BoxShadow(
//                             blurRadius: 4,
//                             color: Color(0x33000000),
//                             offset: Offset(
//                               0,
//                               2,
//                             ),
//                           )
//                         ],
//                         borderRadius: BorderRadius.circular(12),
//                       ),
//                       child: Padding(
//                         padding: EdgeInsetsDirectional.fromSTEB(16, 16, 16, 24),
//                         child: Column(
//                           mainAxisSize: MainAxisSize.max,
//                           crossAxisAlignment: CrossAxisAlignment.start,
//                           children: [
//                             Text(
//                               'Order Summary',
//                               style: FlutterFlowTheme.of(context)
//                                   .titleLarge
//                                   .override(
//                                 fontFamily: 'Outfit',
//                                 letterSpacing: 0,
//                               ),
//                             ),
//                             Padding(
//                               padding:
//                               EdgeInsetsDirectional.fromSTEB(0, 4, 0, 12),
//                               child: Text(
//                                 'Below is a list of your items.',
//                                 style: FlutterFlowTheme.of(context)
//                                     .labelMedium
//                                     .override(
//                                   fontFamily: 'Readex Pro',
//                                   letterSpacing: 0,
//                                 ),
//                               ),
//                             ),
//                             Divider(
//                               height: 32,
//                               thickness: 2,
//                               color: FlutterFlowTheme.of(context).alternate,
//                             ),
//                             Padding(
//                               padding:
//                               EdgeInsetsDirectional.fromSTEB(0, 0, 0, 24),
//                               child: Column(
//                                 mainAxisSize: MainAxisSize.max,
//                                 crossAxisAlignment: CrossAxisAlignment.start,
//                                 children: [
//                                   Padding(
//                                     padding: EdgeInsetsDirectional.fromSTEB(
//                                         0, 0, 0, 12),
//                                     child: Text(
//                                       'Price Breakdown',
//                                       style: FlutterFlowTheme.of(context)
//                                           .labelMedium
//                                           .override(
//                                         fontFamily: 'Readex Pro',
//                                         letterSpacing: 0,
//                                       ),
//                                     ),
//                                   ),
//                                   Padding(
//                                     padding: EdgeInsetsDirectional.fromSTEB(
//                                         0, 0, 0, 8),
//                                     child: Row(
//                                       mainAxisSize: MainAxisSize.max,
//                                       mainAxisAlignment:
//                                       MainAxisAlignment.spaceBetween,
//                                       children: [
//                                         Text(
//                                           'Base Price',
//                                           style: FlutterFlowTheme.of(context)
//                                               .bodySmall
//                                               .override(
//                                             fontFamily: 'Outfit',
//                                             color:
//                                             FlutterFlowTheme.of(context)
//                                                 .secondaryText,
//                                             fontSize: 14,
//                                             letterSpacing: 0,
//                                             fontWeight: FontWeight.normal,
//                                           ),
//                                         ),
//                                         Text(
//                                           '\₹95,000.00',
//                                           textAlign: TextAlign.end,
//                                           style: FlutterFlowTheme.of(context)
//                                               .bodyLarge
//                                               .override(
//                                             fontFamily: 'Readex Pro',
//                                             letterSpacing: 0,
//                                           ),
//                                         ),
//                                       ],
//                                     ),
//                                   ),
//                                   Padding(
//                                     padding: EdgeInsetsDirectional.fromSTEB(
//                                         0, 0, 0, 8),
//                                     child: Row(
//                                       mainAxisSize: MainAxisSize.max,
//                                       mainAxisAlignment:
//                                       MainAxisAlignment.spaceBetween,
//                                       children: [
//                                         Text(
//                                           'Taxes',
//                                           style: FlutterFlowTheme.of(context)
//                                               .bodySmall
//                                               .override(
//                                             fontFamily: 'Outfit',
//                                             color:
//                                             FlutterFlowTheme.of(context)
//                                                 .secondaryText,
//                                             fontSize: 14,
//                                             letterSpacing: 0,
//                                             fontWeight: FontWeight.normal,
//                                           ),
//                                         ),
//                                         Text(
//                                           '\₹5,000.20',
//                                           textAlign: TextAlign.end,
//                                           style: FlutterFlowTheme.of(context)
//                                               .bodyLarge
//                                               .override(
//                                             fontFamily: 'Readex Pro',
//                                             letterSpacing: 0,
//                                           ),
//                                         ),
//                                       ],
//                                     ),
//                                   ),
//                                   Padding(
//                                     padding: EdgeInsetsDirectional.fromSTEB(
//                                         0, 0, 0, 8),
//                                     child: Row(
//                                       mainAxisSize: MainAxisSize.max,
//                                       mainAxisAlignment:
//                                       MainAxisAlignment.spaceBetween,
//                                       children: [
//                                         Text(
//                                           'Discount Fee',
//                                           style: FlutterFlowTheme.of(context)
//                                               .bodySmall
//                                               .override(
//                                             fontFamily: 'Outfit',
//                                             color:
//                                             FlutterFlowTheme.of(context)
//                                                 .secondaryText,
//                                             fontSize: 14,
//                                             letterSpacing: 0,
//                                             fontWeight: FontWeight.normal,
//                                           ),
//                                         ),
//                                         Text(
//                                           '\₹5,000.00',
//                                           textAlign: TextAlign.end,
//                                           style: FlutterFlowTheme.of(context)
//                                               .bodyLarge
//                                               .override(
//                                             fontFamily: 'Readex Pro',
//                                             letterSpacing: 0,
//                                           ),
//                                         ),
//                                       ],
//                                     ),
//                                   ),
//                                   Padding(
//                                     padding: EdgeInsetsDirectional.fromSTEB(
//                                         0, 8, 0, 8),
//                                     child: Row(
//                                       mainAxisSize: MainAxisSize.max,
//                                       mainAxisAlignment:
//                                       MainAxisAlignment.spaceBetween,
//                                       children: [
//                                         Row(
//                                           mainAxisSize: MainAxisSize.max,
//                                           children: [
//                                             Text(
//                                               'Total',
//                                               style: FlutterFlowTheme.of(
//                                                   context)
//                                                   .titleMedium
//                                                   .override(
//                                                 fontFamily: 'Outfit',
//                                                 color: FlutterFlowTheme.of(
//                                                     context)
//                                                     .secondaryText,
//                                                 fontSize: 20,
//                                                 letterSpacing: 0,
//                                                 fontWeight: FontWeight.w500,
//                                               ),
//                                             ),
//                                             FlutterFlowIconButton(
//                                               borderColor: Colors.transparent,
//                                               borderRadius: 30,
//                                               borderWidth: 1,
//                                               buttonSize: 36,
//                                               icon: Icon(
//                                                 Icons.info_outlined,
//                                                 color:
//                                                 FlutterFlowTheme.of(context)
//                                                     .secondaryText,
//                                                 size: 18,
//                                               ),
//                                               onPressed: () {
//                                                 print('IconButton pressed ...');
//                                               },
//                                             ),
//                                           ],
//                                         ),
//                                         Text(
//                                           '\₹95,000.00',
//                                           style: FlutterFlowTheme.of(context)
//                                               .displaySmall
//                                               .override(
//                                             fontFamily: 'Outfit',
//                                             letterSpacing: 0,
//                                           ),
//                                         ),
//                                       ],
//                                     ),
//                                   ),
//                                 ],
//                               ),
//                             ),
//                             FFButtonWidget(
//                               onPressed: () async {
//                                 Navigator.of(context).pushNamed('SuccessPaymentWidget');
//                               },
//                               text: 'Continue to Checkout',
//                               options: FFButtonOptions(
//                                 width: double.infinity,
//                                 height: 50,
//                                 padding: EdgeInsets.all(0),
//                                 iconPadding:
//                                 EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
//                                 color: Color(0xFFCC5500),
//                                 textStyle: FlutterFlowTheme.of(context)
//                                     .titleSmall
//                                     .override(
//                                   fontFamily: 'Readex Pro',
//                                   letterSpacing: 0,
//                                 ),
//                                 elevation: 2,
//                                 borderSide: BorderSide(
//                                   color: Colors.transparent,
//                                   width: 1,
//                                 ),
//                                 borderRadius: BorderRadius.circular(50),
//                                 hoverColor:
//                                 FlutterFlowTheme.of(context).accent1,
//                                 hoverBorderSide: BorderSide(
//                                   color: FlutterFlowTheme.of(context).primary,
//                                   width: 1,
//                                 ),
//                                 hoverTextColor:
//                                 FlutterFlowTheme.of(context).primary,
//                               ),
//                             ),
//                           ],
//                         ),
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: FlutterFlowTheme
          .of(context)
          .primaryBackground,
      appBar: AppBar(
        backgroundColor: Color(0xFFCC5500),
        automaticallyImplyLeading: false,
        leading: FlutterFlowIconButton(
          borderColor: Colors.transparent,
          borderRadius: 30,
          buttonSize: 46,
          icon: Icon(
            Icons.arrow_back_rounded,
            color: FlutterFlowTheme
                .of(context)
                .primaryBackground,
            size: 25,
          ),
          onPressed: () async {
            Navigator.of(context).pop();
          },
        ),
        actions: [],
        centerTitle: false,
        elevation: 0,
      ),
      body: hiveList.isEmpty
          ? Center(
        child: Padding(
          padding: EdgeInsets.all(16),
          child: Text(
            'Your cart is empty',
            style: FlutterFlowTheme
                .of(context)
                .titleLarge
                .override(
              fontFamily: 'Outfit',
              letterSpacing: 0,
              color: FlutterFlowTheme
                  .of(context)
                  .primaryText,
            ),
          ),
        ),
      )
          : SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(16, 16, 16, 24),
              child: Wrap(
                spacing: 16,
                runSpacing: 16,
                alignment: WrapAlignment.start,
                crossAxisAlignment: WrapCrossAlignment.start,
                direction: Axis.horizontal,
                runAlignment: WrapAlignment.start,
                verticalDirection: VerticalDirection.down,
                clipBehavior: Clip.none,
                children: [
                  Container(
                    constraints: BoxConstraints(maxWidth: 750),
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme
                          .of(context)
                          .secondaryBackground,
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 4,
                          color: Color(0x33000000),
                          offset: Offset(0, 2),
                        )
                      ],
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Padding(
                      padding: EdgeInsets.all(16),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Your Cart',
                            style: FlutterFlowTheme
                                .of(context)
                                .titleLarge
                                .override(
                              fontFamily: 'Outfit',
                              letterSpacing: 0,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0, 4, 0, 12),
                            child: Text(
                              'Below is the list of items in your cart.',
                              style: FlutterFlowTheme
                                  .of(context)
                                  .labelMedium
                                  .override(
                                fontFamily: 'Readex Pro',
                                letterSpacing: 0,
                              ),
                            ),
                          ),
                          ListView(
                            padding: EdgeInsets.zero,
                            shrinkWrap: true,
                            scrollDirection: Axis.vertical,
                            children: hiveList.map((model) =>
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0, 0, 0, 12),
                                  child: Container(
                                    width: MediaQuery
                                        .sizeOf(context)
                                        .width,
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme
                                          .of(context)
                                          .secondaryBackground,
                                      boxShadow: [
                                        BoxShadow(
                                          blurRadius: 0,
                                          color: FlutterFlowTheme
                                              .of(context)
                                              .alternate,
                                          offset: Offset(0, 1),
                                        )
                                      ],
                                      borderRadius: BorderRadius.circular(0),
                                    ),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      crossAxisAlignment: CrossAxisAlignment
                                          .start,
                                      children: [
                                        Padding(
                                          padding: EdgeInsetsDirectional
                                              .fromSTEB(0, 4, 0, 12),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(0, 1, 1, 1),
                                                child: ClipRRect(
                                                  borderRadius: BorderRadius
                                                      .circular(12),
                                                  child: Image.asset(
                                                    model.imageUrl,
                                                    width: 70,
                                                    height: 70,
                                                    fit: BoxFit.cover,
                                                  ),
                                                ),
                                              ),
                                              Expanded(
                                                flex: 3,
                                                child: Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(8, 0, 4, 0),
                                                  child: Column(
                                                    mainAxisSize: MainAxisSize
                                                        .max,
                                                    mainAxisAlignment: MainAxisAlignment
                                                        .center,
                                                    crossAxisAlignment: CrossAxisAlignment
                                                        .start,
                                                    children: [
                                                      Text(
                                                        model.productName,
                                                        style: FlutterFlowTheme
                                                            .of(context)
                                                            .titleLarge
                                                            .override(
                                                          fontFamily: 'Outfit',
                                                          letterSpacing: 0,
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding: EdgeInsetsDirectional
                                                            .fromSTEB(
                                                            0, 4, 0, 0),
                                                        child: RichText(
                                                          text: TextSpan(
                                                            children: [
                                                              TextSpan(
                                                                text: 'Qty: ',
                                                                style: TextStyle(),
                                                              ),
                                                              TextSpan(
                                                                text: '1',
                                                                style: TextStyle(),
                                                              )
                                                            ],
                                                            style: FlutterFlowTheme
                                                                .of(context)
                                                                .labelSmall
                                                                .override(
                                                              fontFamily: 'Readex Pro',
                                                              letterSpacing: 0,
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(8, 0, 0, 0),
                                                child: Text(
                                                  '\₹ ${model.price}',
                                                  // Use model's price
                                                  textAlign: TextAlign.end,
                                                  style: FlutterFlowTheme
                                                      .of(context)
                                                      .titleLarge
                                                      .override(
                                                    fontFamily: 'Outfit',
                                                    letterSpacing: 0,
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsetsDirectional
                                              .fromSTEB(0, 4, 8, 12),
                                          child: AutoSizeText(
                                            'Explore ${model
                                                .productName} from dnalyst\n',
                                            textAlign: TextAlign.start,
                                            style: FlutterFlowTheme
                                                .of(context)
                                                .labelMedium
                                                .override(
                                              fontFamily: 'Readex Pro',
                                              letterSpacing: 0,
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsetsDirectional
                                              .fromSTEB(0, 0, 0, 12),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Icon(
                                                Icons.delete_outline,
                                                color: FlutterFlowTheme
                                                    .of(context)
                                                    .error,
                                                size: 24,
                                              ),
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(12, 0, 0, 0),
                                                child: GestureDetector(
                                                  onTap: () async {
                                                    await CartFunctions()
                                                        .delete(model);
                                                    getList();
                                                  },
                                                  child: Text(
                                                    'Remove',
                                                    style: FlutterFlowTheme
                                                        .of(context)
                                                        .bodyMedium
                                                        .override(
                                                      fontFamily: 'Readex Pro',
                                                      color: FlutterFlowTheme
                                                          .of(context)
                                                          .error,
                                                      letterSpacing: 0,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                            ).toList(),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width: double.infinity,
              constraints: BoxConstraints(
                maxWidth: 430,
              ),
              decoration: BoxDecoration(
                color: FlutterFlowTheme
                    .of(context)
                    .secondaryBackground,
                boxShadow: [
                  BoxShadow(
                    blurRadius: 4,
                    color: Color(0x33000000),
                    offset: Offset(
                      0,
                      2,
                    ),
                  )
                ],
                borderRadius: BorderRadius.circular(12),
              ),
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(16, 16, 16, 24),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Order Summary',
                      style: FlutterFlowTheme
                          .of(context)
                          .titleLarge
                          .override(
                        fontFamily: 'Outfit',
                        letterSpacing: 0,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 4, 0, 12),
                      child: Text(
                        'Below is a list of your items.',
                        style: FlutterFlowTheme
                            .of(context)
                            .labelMedium
                            .override(
                          fontFamily: 'Readex Pro',
                          letterSpacing: 0,
                        ),
                      ),
                    ),
                    Divider(
                      height: 32,
                      thickness: 2,
                      color: FlutterFlowTheme
                          .of(context)
                          .alternate,
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 24),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0, 0, 0, 12),
                            child: Text(
                              'Price Breakdown',
                              style: FlutterFlowTheme
                                  .of(context)
                                  .labelMedium
                                  .override(
                                fontFamily: 'Readex Pro',
                                letterSpacing: 0,
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 8),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Base Price',
                                  style: FlutterFlowTheme
                                      .of(context)
                                      .bodySmall
                                      .override(
                                    fontFamily: 'Outfit',
                                    color: FlutterFlowTheme
                                        .of(context)
                                        .secondaryText,
                                    fontSize: 14,
                                    letterSpacing: 0,
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                                Text(
                                  '\₹${totalPrice().toString()}',
                                  textAlign: TextAlign.end,
                                  style: FlutterFlowTheme
                                      .of(context)
                                      .bodyLarge
                                      .override(
                                    fontFamily: 'Readex Pro',
                                    letterSpacing: 0,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 8),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Taxes',
                                  style: FlutterFlowTheme
                                      .of(context)
                                      .bodySmall
                                      .override(
                                    fontFamily: 'Outfit',
                                    color: FlutterFlowTheme
                                        .of(context)
                                        .secondaryText,
                                    fontSize: 14,
                                    letterSpacing: 0,
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                                Text(
                                  '\₹$gst',
                                  textAlign: TextAlign.end,
                                  style: FlutterFlowTheme
                                      .of(context)
                                      .bodyLarge
                                      .override(
                                    fontFamily: 'Readex Pro',
                                    letterSpacing: 0,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 8),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Discount Fee',
                                  style: FlutterFlowTheme
                                      .of(context)
                                      .bodySmall
                                      .override(
                                    fontFamily: 'Outfit',
                                    color: FlutterFlowTheme
                                        .of(context)
                                        .secondaryText,
                                    fontSize: 14,
                                    letterSpacing: 0,
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                                Text(
                                  '--',
                                  textAlign: TextAlign.end,
                                  style: FlutterFlowTheme
                                      .of(context)
                                      .bodyLarge
                                      .override(
                                    fontFamily: 'Readex Pro',
                                    letterSpacing: 0,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(0, 8, 0, 8),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Text(
                                      'Total',
                                      style: FlutterFlowTheme
                                          .of(context)
                                          .titleMedium
                                          .override(
                                        fontFamily: 'Outfit',
                                        color: FlutterFlowTheme
                                            .of(context)
                                            .secondaryText,
                                        fontSize: 20,
                                        letterSpacing: 0,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                    FlutterFlowIconButton(
                                      borderColor: Colors.transparent,
                                      borderRadius: 30,
                                      borderWidth: 1,
                                      buttonSize: 36,
                                      icon: Icon(
                                        Icons.info_outlined,
                                        color: FlutterFlowTheme
                                            .of(context)
                                            .secondaryText,
                                        size: 18,
                                      ),
                                      onPressed: () {
                                        print('IconButton pressed ...');
                                      },
                                    ),
                                  ],
                                ),
                                Text(
                                  '\₹${(totalPrice()+gst).toString()}',
                                  style: FlutterFlowTheme
                                      .of(context)
                                      .displaySmall
                                      .override(
                                    fontFamily: 'Outfit',
                                    letterSpacing: 0,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    FFButtonWidget(
                      onPressed: () async {
                        Navigator.of(context).push(MaterialPageRoute(builder: (context) => SuccessPaymentWidget(totalPrice: totalPrice()+gst),));
                       await CartFunctions().deleteAll();
                      },
                      text: 'Continue to Checkout',
                      options: FFButtonOptions(
                        width: double.infinity,
                        height: 50,
                        padding: EdgeInsets.all(0),
                        iconPadding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
                        color: Color(0xFFCC5500),
                        textStyle: FlutterFlowTheme
                            .of(context)
                            .titleSmall
                            .override(
                          fontFamily: 'Readex Pro',
                          letterSpacing: 0,
                        ),
                        elevation: 2,
                        borderSide: BorderSide(
                          color: Colors.transparent,
                          width: 1,
                        ),
                        borderRadius: BorderRadius.circular(50),
                        hoverColor: FlutterFlowTheme
                            .of(context)
                            .accent1,
                        hoverBorderSide: BorderSide(
                          color: FlutterFlowTheme
                              .of(context)
                              .primary,
                          width: 1,
                        ),
                        hoverTextColor: FlutterFlowTheme
                            .of(context)
                            .primary,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
