<<<<<<< HEAD

import 'package:bookly_application/Features/home/model/filmdetailsmodel.dart';
import 'package:bookly_application/Features/home/presenations/views/widgets/film_rating.dart';
import 'package:bookly_application/core/utils/app_router.dart';
import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
=======
import 'package:bookly_application/Features/home/presenations/views/widgets/film_rating.dart';
import 'package:bookly_application/core/utils/app_router.dart';
import 'package:flutter/material.dart';
>>>>>>> fe59cd21b46370310a8b128e9dfc49cc064f10de
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';

import '../../../../../constants.dart';
import '../../../../../core/utils/assets.dart';
import '../../../../../core/utils/styles.dart';

class BestSellerListViewItem extends StatelessWidget {
<<<<<<< HEAD
  const BestSellerListViewItem({super.key, required this.films});
 final List<Films> films;
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: films.length,
      itemBuilder: (context,index) {
        final film =films[index];
        return Padding(
          padding: const EdgeInsets.only(bottom: 8.0),
          child: GestureDetector(
            onTap: (() {
              print(film.movieId);
              GoRouter.of(context).push(AppRouter.kBookDetailsView);
            }),
            child: SizedBox(
              height: 120,
              child: Row(
                children: [
                  AspectRatio(
                    aspectRatio: 2.5 / 4,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),

                      ),
                      child: FittedBox(child: Image.network(film.poster),fit: BoxFit.fill,),
                    ),
                  ),
                  const SizedBox(
                    width: 30,
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.5,
                          child: Text(
                            film.title,
                            style: Styles.textStyle20.copyWith(
                              fontFamily: kAlegreya,
                            ),
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                        const SizedBox(
                          height: 3,
                        ),
                         Text(
                          film.cast.first,
                          style: Styles.textStyle14,
                        ),
                        const SizedBox(
                          height: 3,
                        ),
                        Text(
                          film.genres.first,
                          style: Styles.textStyle14,
                        ),

                      ],
                    ),
=======
  const BestSellerListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (() {
        GoRouter.of(context).push(AppRouter.kBookDetailsView);
      }),
      child: SizedBox(
        height: 120,
        child: Row(
          children: [
            AspectRatio(
              aspectRatio: 2.5 / 4,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  image: const DecorationImage(
                    image: AssetImage(AssetsData.testImage),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
            ),
            const SizedBox(
              width: 30,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.5,
                    child: Text(
                      'Divergent',
                      style: Styles.textStyle20.copyWith(
                        fontFamily: kAlegreya,
                      ),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  const SizedBox(
                    height: 3,
                  ),
                  const Text(
                    'Neil Burger',
                    style: Styles.textStyle14,
                  ),
                  const SizedBox(
                    height: 3,
                  ),
                  Row(
                    children: [
                      /* Text(
                        '19.99 €',
                        style: Styles.textStyle20.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                      ), */
                      const Spacer(),
                      FilmRating(),
                    ],
>>>>>>> fe59cd21b46370310a8b128e9dfc49cc064f10de
                  ),
                ],
              ),
            ),
<<<<<<< HEAD
          ),
        );
      },
=======
          ],
        ),
      ),
>>>>>>> fe59cd21b46370310a8b128e9dfc49cc064f10de
    );
  }
}
