import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'CV App',
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  Widget buildSkillBar(String skill, double level) {
    return Container(
      margin: EdgeInsets.only(top: 8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            skill,
            style: TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
                color: Colors.green
            ),
          ),
          SizedBox(height: 8.0),
          LinearProgressIndicator(
            value: level,
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            color: Colors.black87,
            alignment: Alignment.center,
            child: SingleChildScrollView(
                child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          SizedBox(height: 16.0),
                          const Center(
                            child:CircleAvatar(
                              backgroundColor: Colors.lightBlueAccent,
                              radius: 110,
                              child: CircleAvatar(
                                radius: 100,
                                backgroundImage:
                                NetworkImage('https://scontent.fmux3-1.fna.fbcdn.net/v/t1.6435-9/190669956_316498453187605_7252785783136802179_n.jpg?_nc_cat=101&ccb=1-7&_nc_sid=174925&_nc_eui2=AeGjRUu7eTwSwwc-8HVqhfJQUeRAyEF7fy5R5EDIQXt_LmgJqR3kqcHiTMRMbA769-H_fZYIIcLnaa8xKzIrh6pP&_nc_ohc=uQrwGqyrca4AX9L39VD&_nc_ht=scontent.fmux3-1.fna&oh=00_AfA00c4LuxiY8zfssuluE4VrecKHTkDNTgNs_DbOxM00zw&oe=645230A8'),

                              ),
                            )
                          ),
                          SizedBox(height: 16.0),
                          Center(
                            child: Text(
                              'Ishfaq Ahmad',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 24.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          SizedBox(height: 16.0),
                          Text(
                            'PERSONAL INFORMATION',
                            style: TextStyle(
                                color: Colors.white,
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold,

                            ),
                          ),
                          SizedBox(height: 8.0),
                          Divider(),
                          SizedBox(height: 8.0),
                          Card(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15.0),),
                            color: Colors.white,
                            elevation: 8,
                              child: Padding(
                                padding: const EdgeInsets.all(10),
                            child: ListTile(
                              title: Text('Email'),
                                subtitle: Text('Ishfaq.doe@gmail.com'),
                              leading: Icon(Icons.email),

                            ),
                            ),
                          ),

                          SizedBox(height: 8.0),
                          Card(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15.0),),
                            color: Colors.white,
                              elevation: 8,
                              child: Padding(
                                padding: const EdgeInsets.all(10),
                            child: ListTile(
                              title: Text('Phone'),
                              subtitle: Text('+1 (123) 456-7890'),
                              leading: Icon(Icons.phone),
                            ),
                            ),
                          ),
                          SizedBox(height: 8.0),
                          Card(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15.0),),
                            color: Colors.white,
                              elevation: 8,
                              child: Padding(
                                padding: const EdgeInsets.all(10),
                            child: ListTile(
                              title: Text('Address'),
                              subtitle: Text('123 Main Street, Anytown USA'),
                              leading: Icon(Icons.location_on),
                            ),
                            ),
                          ),
                          SizedBox(height: 16.0),
                          Text(
                            'EDUCATION',
                            style: TextStyle(
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold,
                                color: Colors.white
                            ),
                          ),
                          SizedBox(height: 8.0),
                          Divider(),
                          SizedBox(height: 8.0),
                          Card(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15.0),),
                            color: Colors.white,
                              elevation: 8,
                              child: Padding(
                                padding: const EdgeInsets.all(10),
                            child: ListTile(
                              title: Text(
                                  'Bachelor of Science in Computer Science'),
                              subtitle: Text('XYZ University'),
                              trailing: Text('Graduated in May 2020'),
                            ),
                            ),
                          ),
                          SizedBox(height: 16.0),
                          Text(
                            'WORK EXPERIENCE',
                            style: TextStyle(
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold,
                                color: Colors.white
                            ),
                          ),
                          SizedBox(height: 8.0),
                          Divider(),
                          SizedBox(height: 8.0),
                          Card(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15.0),),
                              color: Colors.white,
                              elevation: 8,
                              child: Padding(
                                  padding: const EdgeInsets.all(10),
                              child: Column(children: <Widget>[
                                ListTile(
                                  title: Text('Software Engineer'),
                                  subtitle: Text('ABC Company'),
                                  trailing: Text('June 2020 - Present'),
                                ),
                              ]),),
                          ),
                          SizedBox(height: 16.0),
                          Text(
                            'SKILLS',
                            style: TextStyle(
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold,
                               color: Colors.white
                            ),
                          ),
                          SizedBox(height: 8.0),
                          Divider(),
                          SizedBox(height: 8.0),
                          buildSkillBar('Flutter', 0.9),
                          SizedBox(height: 8.0),
                          buildSkillBar('Figma', 0.8),
                          SizedBox(height: 8),
                          SizedBox(height: 16.0),
                          SizedBox(height: 8.0),
                          buildSkillBar('hobbies', 0.9),
                          SizedBox(height: 8.0),
                          Divider(),
                          Card(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15.0),),
                              elevation: 8,
                              child: Padding(
                                padding: const EdgeInsets.all(10),
                            child: Row(
                              children: [
                                Icon(Icons.airplanemode_active),
                                Text('Traveling'),
                                SizedBox(
                                  width: 50,
                                ),
                                Icon(Icons.shopping_cart),
                                Text('Shopping'),
                                SizedBox(
                                  width: 50,
                                ),
                                Icon(Icons.book),
                                Text('Reading Books'),
                                SizedBox(
                                  width: 50,
                                ),
                              ],
                            ),
                              ),
                          ),
                        ])))));
  }
}
