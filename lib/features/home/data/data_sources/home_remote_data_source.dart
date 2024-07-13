import 'package:hive/hive.dart';
import 'package:route_attendence_task/core/utils/api_services.dart';

abstract class HomeRemoteDataSource {
  // Future<List<BookEntity>> fetchFeaturedBooksDomain({int pageNumber=0});
  // Future<List<BookEntity>> fetchBestBooksDomain();
}

class HomeRemoteDataSourceImpl implements HomeRemoteDataSource {
  final ApiServices apiServices;

  HomeRemoteDataSourceImpl(this.apiServices);

  // @override
  // Future<List<BookEntity>> fetchFeaturedBooksDomain({int pageNumber=0}) async{
  //   var featuredBooksMapDomain = await apiServices.get(
  //     endPoint:
  //     "volumes?Filtering=free-ebooks&q=subject:programming&Sorting=newest&startIndex=${pageNumber*10}",
  //   );
  //   List<BookEntity>featuredBooksListDomain=getBooksList(featuredBooksMapDomain);
  //   saveDataToBox(featuredBooksListDomain,kFeaturedBooks);
  //   return featuredBooksListDomain;
  // }

  // @override
  // Future<List<BookEntity>> fetchBestBooksDomain()async {

  //     var bestBooksMabDomainData = await apiServices.get(
  //       endPoint: "volumes?Filtering=free-ebooks&q=subject:flowers",
  //     );
  //     List<BookEntity> bestSellerBooksListDomain = getBooksList(bestBooksMabDomainData);
  //     saveDataToBox(bestSellerBooksListDomain,kBestBooks);
  //     return bestSellerBooksListDomain;

  // }

  // List<BookEntity> getBooksList(Map<String, dynamic> data) {
  //   List<BookEntity> books = [];
  //   for (var bookMap in data['items']) {
  //     books.add(BookModel.fromJson(bookMap));
  //   }
  //   return books;
  // }
}
