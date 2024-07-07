
import 'package:e_commerce_app14/core/class/crud.dart';
import 'package:e_commerce_app14/link_api.dart';

class ItemsData {
  Crud crud ;
  ItemsData(this.crud);

  getData (String id , String userId)async {
    var response = await crud.postData(AppLink.items, {
      "userId" : userId,
      "id" : id
    });
    return response.fold((l) => l, (r) => r);
  }
}