import 'package:bookly_application/Features/home/model/filmdetailsmodel.dart';
import 'package:bookly_application/Features/home/presenations/views/widgets/best_seller_listViewItem.dart';
import 'package:bookly_application/Features/home/repo/Recommendationsapi.dart';
import 'package:bookly_application/Features/user/presentation/repos/loginApi.dart';
import 'package:bookly_application/Features/user/presentation/repos/regestrationApi.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class firstregrListView extends StatefulWidget {
  const firstregrListView({super.key});
  @override
  State<firstregrListView> createState() => _firstregrListViewState();
}

class _firstregrListViewState extends State<firstregrListView> {

  Future<List<Films>> filmsFuture= recommendationApi();
  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<Films>>(


      future: filmsFuture,
      builder: (BuildContext context, AsyncSnapshot<List<Films>> snapshot)
      {if (snapshot.connectionState == ConnectionState.waiting) {
        // until data is fetched, show loader
        return Center(heightFactor:40,child: const CircularProgressIndicator(color: Colors.white,));
      } else if (snapshot.hasData) {
        // once data is fetched, display it on screen (call buildPosts())
        final films = snapshot.data!;
        return BestSellerListViewItem(films:films ,);
      } else {
        // if no data, show simple Text
        return const Text("No data available");
      }  },
    );
  }
}
