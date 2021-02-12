import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gshort/controller/category_controller.dart';
import 'package:gshort/resource/route.dart';

class CategoryPage extends GetView<CategoryController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        leading: IconButton(
            icon: Icon(
              Icons.settings,
              color: Colors.black,
            ),
            onPressed: () {
              //  Navigator.push(context, MaterialPageRoute(builder: (context)=>Settings(),),);
            }),
        title: Text(
          "Category",
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        actions: [
          Center(
              child: Text(
            "News >",
            style: TextStyle(
              color: Colors.black,
              fontSize: 20.0,
            ),
          )),
        ],
        elevation: 0,
        backgroundColor: Colors.white,
      ),
      // drawer: MyStatefulWidget(),
      body: Obx(() {
        if (controller.isLoading.value)
          return Center(
            child: CircularProgressIndicator(),
          );
        else
          return GridView.builder(
              gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                maxCrossAxisExtent: 150,
                crossAxisSpacing: 7.0,
                mainAxisSpacing: 10.0,
              ),
              itemCount: controller.productList.length,
              itemBuilder: (context, index) {
                return InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, CategoryBypost, arguments: controller.productList[index].name);
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.grey[200],
                      borderRadius: BorderRadius.circular(20),
                    ),
                    margin: EdgeInsets.fromLTRB(16, 12, 8, 8),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
                          child: Image.network(
                            'https://newswebsite786.000webhostapp.com/gshort/Category_image/${controller.productList[index].imageLink}',
                            width: 70,
                            height: 50,
                          ),
                        ),
                        Center(
                          child: Text(
                            controller.productList[index].name,
                            style: TextStyle(fontSize: 15),
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              });
      }),
    );
  }
}
