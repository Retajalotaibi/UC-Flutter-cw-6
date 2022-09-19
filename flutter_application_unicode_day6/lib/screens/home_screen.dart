import 'package:flutter/material.dart';
import 'package:flutter_application_unicode_day6/screens/details_screen.dart';
import '../models/item.dart';

void main() {
  runApp(HomeScreen());
}

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  var items = [
    Item(
        name: 'أبراج الكويت',
        imageURL:
            'https://user-images.githubusercontent.com/24327781/188260105-52be6a2e-a6d3-4ceb-86c0-ddc83e0aa5b6.jpeg',
        description:
            "ابراج الكويت عباره عن اهم معالم الكويت والتي تتكون من ثلاثة ابراج تحتوي على كرات زرقاء"),
    Item(
        name: 'برج التحرير',
        imageURL:
            'https://user-images.githubusercontent.com/24327781/188260123-28de85b4-d272-4ebb-b2ad-22a9582079bf.jpeg',
        description:
            "برج التحرير كان برج للاتصالات ولكن بعد تحرير الكويت من الغزو العراقي تم تغير اسمه الى اسمه الحالـي"),
    Item(
        name: 'المسجد الكبير',
        imageURL:
            'https://user-images.githubusercontent.com/24327781/188260137-021d865a-625e-4941-ad75-6427c690e0cf.jpeg',
        description:
            "مسجد متناسق وجميل صمم ليشابه التراث الاندلسي ويعتبر معلم سياحي مهم "),
  ];
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: Text("معالم الكويت")),
        body: ListView.builder(
          itemCount: items.length,
          itemBuilder: (context, index) {
            return Card(
              elevation: 2,
              child: Row(
                children: [
                  CircleAvatar(
                    radius: 48,
                    backgroundImage: NetworkImage(
                      items[index].imageURL,
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(40),
                    child:
                        Text(items[index].name, style: TextStyle(fontSize: 20)),
                  ),
                  ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  DetailsScreen(detailedItem: items[index])),
                        );
                      },
                      child: Icon(Icons.arrow_forward_ios_rounded))
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
