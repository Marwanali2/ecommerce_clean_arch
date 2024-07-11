import 'dart:core';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:route_attendence_task/core/errors/failure.dart';
import 'package:route_attendence_task/features/home/data/data_sources/home_local_data_source.dart';
import 'package:route_attendence_task/features/home/data/data_sources/home_remote_data_source.dart';

// class HomeRepoImpl extends HomeRepoDomain {
//   final HomeRemoteDataSource homeRemoteDataSource;
//   final HomeLocalDataSource homeLocalDataSource;

//   HomeRepoImpl(
//       {required this.homeRemoteDataSource, required this.homeLocalDataSource});

//   // @override
//   // Future<Either<Failure, List<BookEntity>>> fetchFeaturedBooksDomain(
//   //     {int pageNumber = 0}) async {
//   //   try {
//   //     var featuredBooksListLocal =
//   //         homeLocalDataSource.fetchFeaturedBooksLocalDomain(
//   //           pageNumber: pageNumber
//   //         );
//   //     if (featuredBooksListLocal.isNotEmpty) {
//   //       return right(featuredBooksListLocal);
//   //     }
//   //     var featuredBooksListRemote =
//   //         await homeRemoteDataSource.fetchFeaturedBooksDomain(pageNumber: pageNumber);
//   //     return right(featuredBooksListRemote);
//   //   } catch (e) {
//   //     if (e is DioException) {
//   //       return left(ServerFailure(errorMessage: e.toString()));
//   //     } else {
//   //       return left(
//   //         ServerFailure(
//   //           errorMessage: e.toString(),
//   //         ),
//   //       );
//   //     }
//   //   }
//   // }

//   // @override
//   // Future<Either<Failure, List<BookEntity>>> fetchBestBooksDomain() async {
//   //   try {
//   //     var bestBooksLocal = homeLocalDataSource.fetchBestBooksLocalDomain();
//   //     if (bestBooksLocal.isNotEmpty) {
//   //       return right(bestBooksLocal);
//   //     }
//   //     var bestBooksRemote = await homeRemoteDataSource.fetchBestBooksDomain();
//   //     return right(bestBooksRemote);
//   //   } catch (e) {
//   //     return left(ServerFailure(errorMessage: e.toString()));
//   //   }
//   // }

// }
