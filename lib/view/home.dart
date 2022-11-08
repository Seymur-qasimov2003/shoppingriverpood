import 'package:app1/components/custom_appbar.dart';
import 'package:app1/model/category_model.dart';
import 'package:app1/riverpood/home_riverpood.dart';
import 'package:app1/view/productdetails.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:carousel_slider/carousel_slider.dart';

import 'home.dart';
import 'home.dart';

final homeRiverPood = ChangeNotifierProvider((ref) => Home_RiverPood());

class Home extends ConsumerStatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends ConsumerState<Home> {
  @override
  @override
  @override
  Widget build(BuildContext context) {
    var watch = ref.watch(homeRiverPood);
    var read = ref.read(homeRiverPood);
    final List<AssetImage> images = [
      AssetImage('assets/images/image1.png'),
      AssetImage('assets/images/image2.png'),
      AssetImage('assets/images/image3.png'),
      AssetImage('assets/images/image4.png'),
    ];

    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            iconSize: 30,
            onPressed: () {},
            icon: const Icon(Icons.search),
          ),
        ],
        title: Text(
          'Shopping App',
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
        backgroundColor: Colors.grey,
        elevation: 0,
      ),
      drawer: Drawer(
        backgroundColor: Colors.grey,
        child: ListView(
          children: [
            Container(
              color: Colors.grey,
              child: UserAccountsDrawerHeader(
                accountName:
                    Text('Seymur', style: TextStyle(color: Colors.black)),
                accountEmail: Text(
                  'Qasimov',
                  style: TextStyle(color: Colors.black),
                ),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: NetworkImage(
                      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTwFJZ3JaffX_9zWM_wqaUYPQeBVyN6n-By2d-bdyg&s'),
                ),
              ),
            ),
            ListTile(
              title: const Text('Home'),
              leading: const Icon(Icons.home),
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => const Home(),
                ));
              },
            ),
            ListTile(
              title: const Text('Profile'),
              leading: const Icon(Icons.person),
              onTap: () {},
            ),
            ListTile(
              title: const Text('Settings'),
              leading: const Icon(Icons.settings),
              onTap: () {},
            ),
            ListTile(
              title: const Text('Logout'),
              leading: const Icon(Icons.logout),
              onTap: () {},
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 14,
            ),
            CarouselSlider(
              options: CarouselOptions(
                height: 200.0,
                autoPlay: true,
                autoPlayInterval: const Duration(seconds: 3),
                autoPlayAnimationDuration: const Duration(milliseconds: 800),
                autoPlayCurve: Curves.fastOutSlowIn,
                enlargeCenterPage: true,
                scrollDirection: Axis.horizontal,
              ),
              items: images.map((i) {
                return Builder(
                  builder: (BuildContext context) {
                    return Container(
                      width: MediaQuery.of(context).size.width,
                      margin: const EdgeInsets.symmetric(horizontal: 22.0),
                      decoration: BoxDecoration(
                        color: Colors.green,
                      ),
                      child: Image(
                        image: i,
                        fit: BoxFit.fill,
                      ),
                    );
                  },
                );
              }).toList(),
            ),
            SizedBox(
              height: 8,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                child: Text(
                  '35% discount on all products',
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            homeProductsCategories(read.hotcategory, context),
            SizedBox(
              height: 10,
            ),
            homeProductsCategories(read.mostpopular, context),
          ],
        ),
      ),
    );
  }
}

// Path: lib\view\home.dart
// Compare this snippet from lib\view\splash.dart:
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
//
// class Splash extends StatefulWidget {
//   const Splash({Key? key}) : super(key: key);
//
//   @override
//   State<Splash> createState() => _SplashState();
// }
//
// class _SplashState extends State<Splash> {
//   @override
//   void initState() {
Widget homeProductsCategories(CategoryModel model, BuildContext context) {
  return Column(
    children: [
      Padding(
        padding: const EdgeInsets.only(left: 18.0, right: 18.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(model.categoryName,
                style: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: Colors.black)),
            Text(
              'See All',
              style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                  decoration: TextDecoration.underline,
                  color: Colors.grey),
            ),
          ],
        ),
      ),
      SizedBox(
        height: 250,
        child: InkWell(
          onTap: () {
            var image = model.products[0].image;
            Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => ProductDetails(),
            ));
          },
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: model.products.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: 150,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 5,
                        blurRadius: 7,
                        offset:
                            const Offset(0, 3), // changes position of shadow
                      ),
                    ],
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: 150,
                        width: 150,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          image: DecorationImage(
                            image: AssetImage(model.products[index].image),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              'Model:' + model.products[index].name,
                              style: const TextStyle(
                                  fontSize: 14, fontWeight: FontWeight.bold),
                            ),
                          ),
                          model.products[index].isFavourite
                              ? const Icon(
                                  Icons.bookmark,
                                  color: Colors.red,
                                )
                              : const Icon(
                                  Icons.bookmark,
                                  color: Colors.grey,
                                ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 8.0, right: 8.0),
                        child: Text(
                          'Price:  ${model.products[index].price}',
                          style: const TextStyle(
                              fontSize: 14, fontWeight: FontWeight.bold),
                        ),
                      ),
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              'Raiting:   ${model.products[index].rating}',
                              style: const TextStyle(
                                  fontSize: 14, fontWeight: FontWeight.bold),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(bottom: 2.0),
                            child: const Icon(
                              Icons.star,
                              color: Colors.yellow,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        ),
      ),
    ],
  );
}
