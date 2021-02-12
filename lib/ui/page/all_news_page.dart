import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:gshort/controller/allnews_controller.dart';

class AllNews extends GetView<AllNewsController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        leading: InkWell(
            child: Center(
                child: Text(
              "< All",
              style: TextStyle(color: Colors.black, fontSize: 20),
            )),
            onTap: () {}),
        title: Text(
          "News",
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        actions: [
          IconButton(
              icon: Icon(
                Icons.refresh,
                color: Colors.black,
              ),
              onPressed: () {}),
        ],
        elevation: 0,
        backgroundColor: Colors.white,
      ),
      body: Obx(() {
        if (controller.isLoading.value)
          return Center(
            child: CircularProgressIndicator(),
          );
        else {
          return Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              child: PageView.builder(
                scrollDirection: Axis.vertical,
                itemCount: controller.productList.length,
                itemBuilder: (context, index) {
                  return Scaffold(
                    body: Container(
                      child: Stack(
                        fit: StackFit.loose,
                        children: <Widget>[
                          Image.network(
                            'https://newswebsite786.000webhostapp.com/gshort/uploads/${controller.productList[index].image}',
                            height: 250,
                            width: 450,
                            fit: BoxFit.cover,
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(8.0, 270, 8, 0),
                            child: Column(
                              children: <Widget>[
                                Text(
                                  controller.productList[index].titlle,
                                  style: TextStyle(
                                      fontSize: 25,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black),
                                ),
                                Padding(
                                  padding: const EdgeInsets.fromLTRB(0, 20, 8, 0),
                                  child: Container(
                                      width: 400,
                                      child: Text(
                                        controller.productList[index].body,
                                        style: TextStyle(
                                            fontSize: 16, color: Colors.black),
                                      )),
                                ),
                                Padding(
                                  padding: const EdgeInsets.fromLTRB(0, 20, 180, 0),
                                  child: Column(
                                    children: <Widget>[
                                      SizedBox(
                                        width: 5,
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Text(
                                          "Posted on : " +
                                              controller
                                                  .productList[index].postDate,
                                          style: TextStyle(
                                              fontSize: 16, color: Colors.grey),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    bottomNavigationBar: BottomAppBar(
                      child: Row(
                        children: [
                          IconButton(icon: Icon(Icons.bookmark), onPressed: () {}),
                          IconButton(icon: Icon(Icons.share), onPressed: () {}),
                          IconButton(icon: FaIcon(FontAwesomeIcons.whatsapp, color: Colors.green), onPressed: () {}),
                          Spacer(),
                          Text("Read More"),
                          IconButton(icon: Icon(Icons.arrow_forward_ios_outlined), onPressed: (){
                          //  launchURL(toLaunch);
                          },),
                        ],
                      ),
                    ),
                  );
                },
              ),
          );
        }
      }),
    );
  }
}
