import 'package:flutter/material.dart';
import 'package:flutter_project/feed.dart';
import 'package:flutter_project/search_job.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("User Information",style: TextStyle(
          fontWeight: FontWeight.bold
        ),),
        centerTitle: true,
        leading: Icon(Icons.arrow_back_sharp),
      ),
      body: Container(
        // color: Colors.grey,
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 20,),
                Text("First Name",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
                TextField(
                  decoration: InputDecoration(
                    // contentPadding: EdgeInsets.symmetric(vertical: 10,horizontal: 12),
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.black),
                          borderRadius: BorderRadius.circular(5)
                      ),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.black),
                          borderRadius: BorderRadius.circular(5)
                      ),
                      hintText: "First Name",
                  ),
                ),
                SizedBox(height: 20,),
                Text("Last Name",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
                TextField(
                  decoration: InputDecoration(
                    // contentPadding: EdgeInsets.symmetric(vertical: 10, horizontal: 12),
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.black),
                          borderRadius: BorderRadius.circular(5)
                      ),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.black),
                          borderRadius: BorderRadius.circular(5)
                      ),
                      hintText: "Last Name"
                  ),
                ),
                SizedBox(height: 20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Gender",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
                        DropdownMenu(
                            enableSearch: true,
                            hintText: "Gender",
                            dropdownMenuEntries: [
                              DropdownMenuEntry(value: 'Male', label: 'Male'),
                              DropdownMenuEntry(value: 'Female', label: 'Female'),
                              DropdownMenuEntry(value: 'Other', label: 'Other')
                            ]
                        ),
                      ],
                    ),
                    // SizedBox(width: 40,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Year",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
                        DropdownMenu(
                            enableSearch: true,
                            hintText: "Year",
                            dropdownMenuEntries: [
                              DropdownMenuEntry(value: '1st', label: 'First Year'),
                              DropdownMenuEntry(value: '2nd', label: 'Second Year'),
                              DropdownMenuEntry(value: '3rd', label: 'Third Year'),
                              DropdownMenuEntry(value: '4th', label: 'Final Year'),
                            ]
                        ),
                      ],
                    )
                  ],
                ),
                SizedBox(height: 30,),
                Divider(),
                SizedBox(height: 20,),
                Text("Contact Details",style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold
                ),),
                SizedBox(height: 20,),
                Text("Contact Email",style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),),
                TextField(
                  decoration: InputDecoration(
                    // contentPadding: EdgeInsets.symmetric(vertical: 10,horizontal: 12),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color :Colors.black),
                      borderRadius: BorderRadius.circular(5)
                    ),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color :Colors.black),
                        borderRadius: BorderRadius.circular(5)
                    ),
                    hintText: "Your Mail"
                  ),
                ),
                SizedBox(height: 20,),
                Text("Contact Phone", style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),),
                TextField(
                  keyboardType: TextInputType.phone,
                  decoration: InputDecoration(
                    // contentPadding: EdgeInsets.symmetric(vertical: 10, horizontal: 12),
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.black),
                          borderRadius: BorderRadius.circular(5)
                      ),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.black),
                          borderRadius: BorderRadius.circular(5)
                      ),
                      hintText: "Enter Phone",
                    prefixText: "+91"
                  ),
                ),
                SizedBox(height: 15,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                      width: 175,
                      height: 50,
                      child: const OutlinedButton(
                        style: ButtonStyle(
                            backgroundColor: MaterialStatePropertyAll(Colors.blue),
                            foregroundColor: MaterialStatePropertyAll(Colors.white),
                        ),
                        onPressed: null,
                        child: Text("Next",style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 16
                        ),),
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      )
    );
  }
}
