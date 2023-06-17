import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

String? stringResponse;
Map? mapResponse;
Map? dataResponse;
List? listResponse;

class leson extends StatefulWidget {
  const leson({Key? key}) : super(key: key);

  @override
  State<leson> createState() => _lesonState();
}

class _lesonState extends State<leson> {
  Future fetchdata() async {
    http.Response response;
    response = await http.get(Uri.parse("https://632017e19f82827dcf24a655.mockapi.io/api/lessons"));
    if (response.statusCode == 200) {
      setState(() {
        mapResponse = json.decode(response.body);
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
      appBar: AppBar(title: const Text("API 1 call")),
      body: SingleChildScrollView(
        child:
      Center(
        child: Container(
          height: 950,
          width: 400,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Colors.blue.shade200,
          ),
          child: Center(
            child: listResponse == null ? const Text("please wait while data is loading....")  : Text(listResponse.toString()),
          ),
        ),
      ),
      ),
    );
  }
}
