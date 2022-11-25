import 'package:assi2p2flutter/details.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text("RouteAppOne"),
      ),
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            children: [
              buildCard("Android"),
              buildCard("IOS"),
              buildCard("fullStack"),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildCard(String course) {
    return Container(
      padding: EdgeInsets.all(10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Padding(
              padding: EdgeInsets.all(10.0),
              child: Image.asset("assets/$course.jpeg")),
          ElevatedButton(
              onPressed: () {
                String text = "";
                if (course == "Android") {
                  text = """Part 1 ( Java SE)
                  1. Introduction to Java Programming
                  • Overview.
                • Compiler and JVM
                • Project Structure
                • Hello World Application
                • Variables and Data types
                • Operators
                • Conditional statements ( IF - Switch)
                • Loops ( For - While - Do While)
                2. Basics
                • nested loops
                • Strings
                • Arrays
                • functions
                3. Object Oriented Programming
                • Classes and Objects
                • Encapsulation and data hiding
                • Inheritance
                • Polymorphism
                • Abstraction (Abstract classes - Interfaces)
                4. Collections and Generics
                • Sets, Lists
                • Threading
                • Generics Class and MethodPart 2 (Android Development)
                1. Introduction to Android
                • Android OS
                • Android Versions
                • OS Architecture
                • Application Component
                • Android Studio and Gradle
                • Creating Hello World
                2. UI Components
                • Layouts(Constraints Layout- Linear Layout )
                • Using resources ( drawables, Strings colors, and Styles )
                3. UI Components II
                • Menu
                • Support Localization
                • Support Orientation
                4. Intents and Activities
                • Intents
                • Intent Filters
                5. Fragments
                • what is fragments
                • Fragment manager and transaction
                • tablayout, NavigationDrawer, BottomNavigation
                6. Dialogs• Alert Dialog
                • Display dialog with items
                • Custom dialogs (Dialog Fragment)
                7. Data Storage
                • Shared Preference
                • Room (Database Library) - from google Arch Components
                8. Threading and Services
                • Threading
                • Service and Intent Service
                9. Web services and APIs
                • what is JSON ?
                • how to make network calls and APIs
                • Consuming Web APIs
                • Using Retrofit and Gson Libraries
                • how to cache Apis
                • using Room and Retrofit Together
                • what is Repository Pattern?
                10. FireBase RealTime Database
                • how to deal with Realtime Database
                11. Notifications
                • Simple Notification
                • firebase to push Notifications
                • one signal push notifications SDK
                """;
                } else if (course == "IOS") {
                  text = """OOP refreshment
                    • Introduction
                    a. Installing OS X virtual machine
                    b. Installing Xcode and the iOS SDK
                    c. A guided tour of Xcode
                    d. An Introduction to Xcode playgrounds
                    • Swift Programming Language
                    a. Swift Data Types, Constants, and Variables
                    b. Swift Operators and Expressions
                    c. Swift Flow Control
                    d. The Swift Switch Statement
                    e. An Overview of Swift Functions
                    f. The Basics of Object Oriented Programming in Swift
                    g. An Introduction to Swift Subclassing and Extensions
                    h. Working with Array and Dictionary Collections in Swift
                    i. Understanding Error Handling in Swift
                    • Views, Layouts, and Storyboards.
                    a. Learning different types of Xcode projects
                    b. Creating first application
                    c. Introduction to application file structure.
                    d. Using Storyboards in Xcode
                    e. Introduction to basic UI Components.
                    f. Creating basic UI Components using Storyboard
                    g. Creating basic UI Components programmatically
                    h. Customizing UI Components.
                    i. An Introduction to Auto Layout in iOS
                    j. Working with iOS Auto Layout Constraints in Interface Builder
                    k. Creating Navigation controller and learning its flow
                    l. Creating tab-based application
                    m. Adding custom fonts
                    n. Creating table view 
                    o. Example about gestures
                    p. Creating custom cells for tables
                    q. Animations  
                    r. Examples about subclass
                    • Working with local data
                    a. Working with UserDefaults
                    b. Introduction to CoreData
                    c. Introduction to Realm
                    d. Creating data models
                    e. Saving retrieving data
                    • ToDo app project
                    a. Implement the interface
                    b. Create realm models
                    c. restore ToDo lists
                    • CocoaPods
                    a. Introduction to Cocoapods
                    b. Installing sample pods
                    c. Learning how to use pods in project
                    d. How to look for a useful pod
                    e. Example using Realm database thirdparty
                    • Networking
                    a. Working with Alamofire pod
                    b. Installing and configuring Alamofire
                    c. Learning how to send GET 
                    d. Learning how to parse JSON responses using ObjectMapper pod
                    e. Creating sample login screen with POST 
                    f. Creating sample table view displays data from JSON object
                    • Dynamic animator
                    a. Deal with physics engine
                    b. Apply Gravity field to dynamic objects
                    c. Apply collision field to dynamic objects
                    d. Apply other physics fields to dynamic objects
                    • Working with Maps
                    a. Introduction to maps
                    b. Showing current user location
                    c. Adding pins
                    • Apply some design patterns
                    a. Creational: Singleton.
                    b. Structural: MVC, Decorator, Adapter, Facade.
                    c. Behavioral: Observer
                    • Creating final project depends on attendees needs""";
                } else if(course == "fullStack"){
                text = """•HTML	
                  •HTML 5 
                  •CSS
                  •CSS3
                  •SASS
                  •Bootstrap 4
                  •JavaScript
                  •Regular expressions
                  •ECMAScript 6
                  •JQuery
                  •angular 7
                  •fabric.js
                  •AJAX
                  •JSON
                  •Hosting and domains
                  •Freelancing tips and tricks
                  •PHP
                  •MYSQL
                  •MYSQL advanced queries and triggers
                  •OOP 
                  •Design Patterns
                  •MVC
                  •laravel 
                  •build Api , Api authentication
                  •connect wordpress with laravel
                  •build wordpress web service 
                  •agile
                  •Scrum
                  •Software development process
                  """;
                }
                Navigator.of(context).push(MaterialPageRoute(builder: (_) {
                  return Details(
                    photo: course,
                    text: text,
                  );
                }));
              },
              style: const ButtonStyle(
                backgroundColor: MaterialStatePropertyAll(Colors.blue),
              ),
              child: Text("$course COURSE")),
        ],
      ),
    );
  }
}
