import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

String? stringResponse;
Map? mapResponse;
Map? dataResponse;
List? listResponse;

class progrms extends StatefulWidget {
  const progrms({Key? key}) : super(key: key);

  @override
  State<progrms> createState() => _progrmsState();
}

class _progrmsState extends State<progrms> {
  Future fetchdata() async {
    http.Response response;
    response = await http.get(
        Uri.parse("https://632017e19f82827dcf24a655.mockapi.io/api/programs"));
    if (response.statusCode == 200) {
      setState(() {
        mapResponse = json.decode(response.body);
        print(mapResponse);
        listResponse = mapResponse!['items'];
      });
    }
  }

  @override
  void initState() {
    fetchdata();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text("API 2 call")),
        body: ListView.builder(
          itemBuilder: (context, index) {
            return Container(
              child: Column(
                children: [
                  const Padding(padding: EdgeInsets.all(8.0)),
                  Text(listResponse![index]['createdAt'].toString()),
                  Text(listResponse![index]['name'].toString()),
                  Text(listResponse![index]['category'].toString()),
                  Text(listResponse![index]['lesson'].toString()),
                  Text(listResponse![index]['id'].toString()),
                ],
              ),
            );
          },
          itemCount: listResponse == null ? 0 : listResponse!.length,
        ));
  }
}
