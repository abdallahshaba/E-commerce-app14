


import 'package:e_commerce_app14/core/class/crud.dart';
import 'package:e_commerce_app14/link_api.dart';

class FavoriteData {
  Crud crud ;
  FavoriteData(this.crud);

  addToFavorite(String userId , String itemId )async{
    var response = await crud.postData(AppLink.addFavorite, {
      "userId" : userId,
      "itemId" : itemId,
    });
    return response.fold((l) => l, (r) => r); 
  }
}