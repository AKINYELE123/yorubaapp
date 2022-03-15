// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:suresports/constant/button.dart';
// import 'package:suresports/constant/colors.dart';
// import 'package:suresports/constant/questionButtons.dart';
// import 'package:suresports/screens/numbers/success.dart';
// import 'package:suresports/screens/numbers/tryagain.dart';
//
// class NumberQuiz{
//   var question = ["One"];
//   var choices = [
//     "ọwọ",
//     "ife",
//     "Ajala",
//     "Okán",
//     "owe",
//     "Ája",
//   ];
//
//   var correctAnswers = [
//     "Okán"
//   ];
// }
//
// var quiz = new NumberQuiz();
// var questionNumber = 0;
//
//
// class Game extends StatefulWidget {
//   const Game({Key? key}) : super(key: key);
//
//   @override
//   _GameState createState() => _GameState();
// }
//
// class _GameState extends State<Game> {
//   int selectedIndex=-1;
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(
//         child: Column(
//
//           //mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             SizedBox(height: 100,),
//             Image.asset("asset/images/numbone.png"),
//             SizedBox(height: 50,),
//             Container(
//               width: 100,
//               height: 50,
//               decoration: BoxDecoration(
//                 borderRadius: BorderRadius.circular(10),
//                 color: white,
//                 boxShadow: [
//                   BoxShadow(
//                     color: Colors.grey.withOpacity(0.5),
//                     spreadRadius: 5,
//                     blurRadius: 7,
//                     offset: Offset(0, 3), // changes position of shadow
//                   ),
//                 ],
//               ),
//               child: Center(child: Text("One", style: TextStyle(color: blue, fontSize: 24),)),
//             ),
//             SizedBox(height: 90,),
//             Wrap(
//               spacing: 20,
//               runSpacing: 20,
//               children: List.generate(6, (index) {
//                 return InkWell(
//                   onTap: (){
//                     if(quiz.choices[questionNumber][0]== quiz.correctAnswers[questionNumber]){
//                       Navigator.push(context, MaterialPageRoute(builder: (context)=>Success()));
//                     }else{
//                       Navigator.push(context, MaterialPageRoute(builder: (context)=>TryAgain()));
//                     }
//                     setState(() {
//                       selectedIndex=index;
//                     });
//                   },
//                   child: Container(
//                     margin: EdgeInsets.only(left: 5,right: 10),
//                     child: QuestionButton(
//                       // size: 80,
//                       color: selectedIndex==index?white:Colors.white,
//                       background: selectedIndex==index?purple:white,
//                       borderColor: selectedIndex==index?blue:blue,
//                       text: quiz.choices[index].toString(),
//                       textColor: selectedIndex==index?white:blue,
//                     ),
//                   ),
//                 );
//               }),
//             ),
//             Expanded(child: Padding(
//               padding: EdgeInsets.only(bottom: 20),
//               child: GridView.builder(
//                   itemCount: quiz.choices.length,
//                   gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//                     crossAxisCount: 2,
//                     mainAxisSpacing: 10,
//                     crossAxisSpacing: 10,
//                   ),
//                 itemBuilder: (context, index)=,
//               ),
//             )),
//             SizedBox(height: 30,),
//             GestureDetector(
//               onTap: (){
//                 if(quiz.choices == quiz.correctAnswers){
//                   Navigator.push(context, MaterialPageRoute(builder: (context)=>Success()));
//                 }else{
//                   Navigator.push(context, MaterialPageRoute(builder: (context)=>TryAgain()));
//                 }
//               },
//               //onTap: ()=>Navigator.push(context, MaterialPageRoute(builder: (context)=>Success())),
//               child: Container(
//                 padding: EdgeInsets.all(20),
//                 width: double.maxFinite,
//                 child: AppButton(
//                     size: 50,
//                     color: white,
//                     background: purple,
//                     borderColor: purple,
//                   text: "Check it",
//                 ),
//               ),
//             )
//           ],
//         ),
//       )
//     );
//   }
// }
//
//
//
// class Options extends StatelessWidget {
//   const Options({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     int selectedIndex=-1;
//     return InkWell(
//       onTap: (){
//         if(quiz.choices[questionNumber][0]== quiz.correctAnswers[questionNumber]){
//           Navigator.push(context, MaterialPageRoute(builder: (context)=>Success()));
//         }else{
//           Navigator.push(context, MaterialPageRoute(builder: (context)=>TryAgain()));
//         }
//         setState(() {
//           selectedIndex=index;
//         });
//       },
//       child: Container(
//         width: 100,
//         height: 50,
//         decoration: BoxDecoration(
//           border: Border.all(
//               color:  selectedIndex==index?blue:blue,
//               width: 1.0),
//
//           borderRadius: BorderRadius.circular(10),
//           color: selectedIndex==index?white:Colors.white,,
//           boxShadow: [
//             BoxShadow(
//               color: Colors.grey.withOpacity(0.5),
//               spreadRadius: 5,
//               blurRadius: 7,
//               offset: Offset(0, 3), // changes position of shadow
//             ),
//           ],
//         ),
//         child: Center(child: Text(quiz.choices[index].toString(), style: TextStyle(color: textColor, fontSize: 15, fontWeight: FontWeight.w800),)),
//       );,
//     );
//   }
// }
