import 'package:contactapp/contact_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Contact app',
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List myContacts = listOfContacts;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        centerTitle: false,
        title: const Text(
          "My Contacts",
          style: TextStyle(
              color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),
        ),
        actions: [
          Container(
            margin: const EdgeInsets.only(right: 16),
            child: CircleAvatar(
              backgroundImage: AssetImage("images/image1.jfif"),
            ),
          ),
        ],
      ),
      body: ListView.builder(
          itemCount: myContacts.length,
          itemBuilder: (BuildContext context, index) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                if (index == 0)
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: TextField(
                        decoration: InputDecoration(
                            prefixIcon: Icon(Icons.search),
                            hintText: "Search by name or number",
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                            ))),
                  ),
                if (index == 0)
                  const Padding(
                    padding: EdgeInsets.all(16.0),
                    child: Text("Recents", style: TextStyle(fontSize: 25)),
                  ),
                if (index == 2)
                  const Padding(
                    padding: EdgeInsets.all(16.0),
                    child: Text("Contacts",
                        style: TextStyle(
                            fontSize: 25, fontWeight: FontWeight.bold)),
                  ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ContactPage(
                                  myContact: myContacts[index],
                                )));
                  },
                  child: ListTile(
                    leading: CircleAvatar(
                      backgroundImage: NetworkImage(myContacts[index]["image"]),
                    ),
                    title: Text(
                      myContacts[index]["name"],
                      style: TextStyle(fontWeight: FontWeight.w800),
                    ),
                    subtitle: Text(myContacts[index]["phone"]),
                    trailing: Icon(Icons.more_horiz),
                  ),
                ),
                const Divider(
                  height: 4,
                  color: Colors.grey,
                ),
              ],
            );
          }),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.black,
        child: const Icon(
          Icons.add,
          size: 50,
        ),
      ),
    );
  }
}

List listOfContacts = [
  {
    "name": "John Tia Raphael",
    "location": "Gudaayiri",
    "email": "johntiabomba.com",
    "phone": "0583826410",
    "group": "Jdunee family",
    "image": "https://picsum.photos/200/300?random=56",
  },
  {
    "name": "Kojo",
    "location": "Tampala",
    "email": "aminuict@gmail.com",
    "phone": "0553826410",
    "group": "Jor family",
    "image": "https://picsum.photos/200/300?random=5",
  },
  {
    "name": "Abu Naeem",
    "location": "tudaayi",
    "email": "iddrisuaminuict@gmail.com",
    "phone": "0583826410",
    "group": "Joradunee family",
    "image": "https://picsum.photos/200/300?random=45",
  },
  {
    "name": "Sayibu Kobena",
    "location": "Nyagli",
    "email": "iddrisuaminuict@gmail.com",
    "phone": "055382445",
    "group": "Joradunee family",
    "image": "https://picsum.photos/200/300?random=90",
  },
  {
    "name": "Sayibu Kobena",
    "location": "Slinvaala",
    "email": "iddrisuaminuict@gmail.com",
    "phone": "055382467",
    "group": "Joradunee family",
    "image": "https://picsum.photos/200/300?random=9",
  },
  {
    "name": "Suglo Bajaasoma",
    "location": "Yaruu",
    "email": "iddrisuaminuict@gmail.com",
    "phone": "055382400",
    "group": "Joradunee family",
    "image": "https://picsum.photos/200/300?random=3",
  },
  {
    "name": "Alhassan Musaariku",
    "location": "Konfaabiila",
    "email": "iddrisuaminuict@gmail.com",
    "phone": "055382400",
    "group": "Joradunee family",
    "image": "https://picsum.photos/200/300?random=8",
  },
  {
    "name": "Ansoyala Nenbataanee",
    "location": "Goringo",
    "email": "iddrisuaminuict@gmail.com",
    "phone": "055382400",
    "group": "Joradunee family",
    "image": "https://picsum.photos/200/300?random=56",
  },
];
