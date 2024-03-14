import 'package:flutter/cupertino.dart';

class ModelClass1{
  String ?title;
  String? image;
  ModelClass1({this.image,this.title});
}
List<ModelClass1> platformData = [
  ModelClass1(image: 'asset/platform/androidDev.png',title: 'Android Dev'),
  ModelClass1(image: 'asset/platform/iosDev.jpeg',title: 'Ios Dev'),
  ModelClass1(image: 'asset/platform/flutterDev.png',title: 'Flutter Dev'),
  ModelClass1(image: 'asset/platform/webDev.jpg',title: 'Web Dev'),

];

//Another model class

class ModelClass2{
  String?titles;
  String? imagee;
  ModelClass2({this.imagee,this.titles});
}
List<ModelClass2> languageData = [
  ModelClass2(imagee: 'asset/language/cssIcon.png',titles: 'CSS3'),
  ModelClass2(imagee: 'asset/language/htmlIcon.png',titles: 'HTML5'),
  ModelClass2(imagee: 'asset/language/flutterIcon.png',titles: 'Flutter'),
  ModelClass2(imagee: 'asset/language/dartIcon.png',titles: 'Dart'),
  ModelClass2(imagee: 'asset/language/getx.png',titles: 'Get X'),

];

// Third model calss
class ModelClass3{
  String? image1;
  String? title1;
  String? subTitle1;
  String? image2;
  ModelClass3({this.image1,this.image2,this.subTitle1,this.title1});
}

List<ModelClass3> projectData = [

  ModelClass3(image1: 'asset/project/airlimeMan.jpeg',image2: 'asset/project/github.png',subTitle1:'Efficiently steer aviation operations. Navigate challenges,\noptimize resources, and ensure passenger satisfaction in' , title1: 'ADR Airlime Managemant'),
  ModelClass3(image1: 'asset/project/bmiApp.jpeg',image2: ' asset/project/github.png',subTitle1:'Track, analyze, and improve your health effortlessly with the \nBMI app. Personalized insights for a healthier, happier you.', title1: 'BMI Application' ),
  ModelClass3(image1: 'asset/project/chattinapp.jpeg',image2: 'asset/project/github.png ',subTitle1:'Connect seamlessly with friends worldwide using our user-\nfriendly chat app. Share moments, exchange messages, and stay' ,title1: 'Chat Application'),
  ModelClass3(image1: 'asset/project/rollingDice.png',image2: ' asset/project/github.png',subTitle1:'Randomly generate dice rolls with this user-friendly app. \nSimulate dice throws for games and decisions, enhancing fun a ',title1: 'Rolling dice App' )
];

//  Education Models
class ModelClass4{
  String ?description;
  String ?title1;
  String ?date;
  String ?title2;

  ModelClass4({this.title1,this.date,this.description,this.title2});
}
List<ModelClass4> EducationData = [
 ModelClass4(title1: 'Bharat Intern',title2: 'App Development',date: '10/2023-11/2023',description: 'Developed mobile apps during a 1-month internship, honing my'
'skills in Android Mobile Application development, UI/UX design'
'and Agile project management. Delivered user-centric solutions'
 ),
  ModelClass4(description: 'Intern Shala training in web development, honed skills in HTML'
  'CSS, JavaScript, and responsive design, building user-friendly'
'websites',date: '08/2023-09/2023',title1: 'InternShala Training',title2: 'Web Development',
  )
];