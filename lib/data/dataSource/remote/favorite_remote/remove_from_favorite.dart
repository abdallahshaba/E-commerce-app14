

import 'package:e_commerce_app14/core/class/crud.dart';
import 'package:e_commerce_app14/link_api.dart';

class RemoveFromFavorite{
  Crud crud;
  RemoveFromFavorite(this.crud);

  removeData(String userId , String itemId)async{
    var response = await crud.postData(AppLink.removeFavorite, {
      "userId" : userId,
      "itemId" : itemId,
    });
    return response.fold((l) => l, (r) => r);
  }
}