// import 'package:flutter/material.dart';
// import 'package:flutter/src/foundation/key.dart';
// import 'package:flutter/src/widgets/framework.dart';
// import 'package:percent_indicator/circular_percent_indicator.dart';
// import 'package:percent_indicator/percent_indicator.dart';

// class PercentIndicatorPage extends StatefulWidget {
//   const PercentIndicatorPage({Key? key}) : super(key: key);

//   @override
//   State<PercentIndicatorPage> createState() => _PercentIndicatorPageState();
// }

// class _PercentIndicatorPageState extends State<PercentIndicatorPage> {
//   @override
//   Widget build(BuildContext context) {
//     return (Scaffold(
//       body: Container(child: LinearPercentIndicator(width: MediaQuery.of(context).size.width - 50,
//                 animation: true,
//                 lineHeight: 20.0,
//                 animationDuration: 2000,
//                 percent: 0.9,
//                 center: Text("90.0%"),
//                 barRadius:Radius.circular(10.0),
//                 progressColor: Colors.greenAccent,),),
//     ));
//   }
// }


// import 'dart:async';

// import 'package:flutter/material.dart';
// import 'package:flutter/widgets.dart';
// import 'package:percent_indicator/circular_percent_indicator.dart';
// import 'package:percent_indicator/linear_percent_indicator.dart';
// class PercentIndicatorDemo extends StatefulWidget {
//   @override
//   _PercentIndicatorDemoState createState() => _PercentIndicatorDemoState();
// }

// class _PercentIndicatorDemoState extends State<PercentIndicatorDemo> {

//   double percent = 0.0;

//   double _height=0.0;
//   double _width=0.0;

//   @override
//   void initState() {
//     Timer timer;
//     timer = Timer.periodic(const Duration(milliseconds:1000),(_){
//       setState(() {
//         percent+=10;
//         if(percent >= 100){
//           timer.cancel();
//           // percent=0;
//         }
//       });
//     });
//     super.initState();
//   }
//   @override
//   Widget build(BuildContext context) {
//     _height = MediaQuery.of(context).size.height;
//     _width = MediaQuery.of(context).size.width;

//     return Scaffold(
//         appBar: AppBar(
//             title:const Text("Percent Indicator Demo"),
//             backgroundColor: Colors.redAccent
//         ),
//         body:Container(
//             child:Column(
//               mainAxisAlignment:MainAxisAlignment.spaceEvenly,
//               crossAxisAlignment:CrossAxisAlignment.center,
//               children: <Widget>[

//                 Column(
//                   children: [
//                     const Text(
//                       'Circular Percent Indicator',
//                       style: TextStyle(
//                           fontStyle: FontStyle.italic,
//                           fontWeight: FontWeight.w700,
//                           fontSize: 15),
//                     ),
//                     const SizedBox(
//                       height: 40,
//                     ),
//                     Container(
//                         padding: const EdgeInsets.all(10),
//                         child: CircularPercentIndicator(
//                           radius: 120.0,
//                           lineWidth: 10.0,
//                           animation: true,
//                           percent: percent/100,
//                           center: Text(
//                             percent.toString() + "%",
//                             style: const TextStyle(
//                                 fontSize: 20.0,
//                                 fontWeight: FontWeight.w600,
//                                 color: Colors.black),
//                           ),
//                           backgroundColor: Colors.grey[300],
//                           circularStrokeCap: CircularStrokeCap.round,
//                           progressColor: Colors.redAccent,
//                         )
//                     ),
//                   ],
//                 ),


//                 Column(
//                   children: [
//                     const Text(
//                       'Linear Percent indicator',
//                       style:  TextStyle(
//                           fontStyle: FontStyle.italic,
//                           fontWeight: FontWeight.w700,
//                           fontSize: 15),
//                     ),
//                     const SizedBox(
//                       height: 40,
//                     ),

//                     Container(
//                       margin: const EdgeInsets.only(left:30,right:30),
//                       alignment:Alignment.center,
//                       child: LinearPercentIndicator( //leaner progress bar
//                         animation: true,
//                         animationDuration: 1000,
//                         lineHeight: 20.0,
//                         percent:percent/100,
//                         center: Text(
//                           percent.toString() + "%",
//                           style: const TextStyle(
//                               fontSize: 12.0,
//                               fontWeight: FontWeight.w600,
//                               color: Colors.black),
//                         ),
//                         linearStrokeCap: LinearStrokeCap.roundAll,
//                         progressColor: Colors.blue[400],
//                         backgroundColor: Colors.grey[300],
//                       ),
//                     ),
//                   ],
//                 ),
//               ],
//             )
//         )
//     );
//   }
// }