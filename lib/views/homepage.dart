import 'package:advance_exam_app/model/helper/singalton_api.dart';
import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Homepage",
        ),
      ),
      body: GestureDetector(
        onTap: () {
          Navigator.of(context).pushNamed("detail");
        },
        child: GridView.builder(
            gridDelegate:
                SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
            itemBuilder: (context, index) {
              return FutureBuilder(
                future: ApiHelper.apiHelper.fetchalldata(),
                builder: (context, snapshot) {
                  if (snapshot.hasError) {
                    return Center(
                      child: Text("ERROR: ${snapshot.error}"),
                    );
                  } else if (snapshot.hasData) {
                    List? data = snapshot.data;

                    return Column(
                      children: [
                        Row(
                          children: [Text("${data}")],
                        )
                      ],
                    );
                  }
                  return Center(
                    child: CircularProgressIndicator(),
                  );
                },
              );
            }),
      ),
    );
  }
}
