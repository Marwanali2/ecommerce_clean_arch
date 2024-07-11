import 'package:hive/hive.dart';

abstract class HomeLocalDataSource{
  // List<BookEntity> fetchFeaturedBooksLocalDomain({int pageNumber=0});
  // List<BookEntity> fetchBestBooksLocalDomain();

}

class HomeLocalDataSourceImpl implements HomeLocalDataSource{
//   @override
//   List<BookEntity> fetchFeaturedBooksLocalDomain({int pageNumber=0}) {
//     var box=Hive.box<BookEntity>(kFeaturedBooks);
//     int startIndex=pageNumber*10;
//     int endIndex=(pageNumber+1)*10;
//     int lengthList=box.values.length;
//     if(startIndex>=lengthList || endIndex>lengthList){
//       return [];
//     }
//     return box.values.toList().sublist(startIndex,endIndex);
//   }

//   @override
//   List<BookEntity> fetchBestBooksLocalDomain() {
//     var box=Hive.box<BookEntity>(kBestBooks);
//     return box.values.toList();
 
//  }
 
 }