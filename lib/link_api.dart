

class AppLink {

static const String linkServerName = "http://10.0.2.2/eCommerceApp";
static const String test = "$linkServerName/test.php";
 //==========================Images===============================//
  static const String imageStatic = "$linkServerName/upload";
  static const String imageCategories = "$imageStatic/categories";
  static const String imageItems = "$imageStatic/items";

  //============================Auth===============================//
  static const String signUp = "$linkServerName/auth/signup.php";
  static const String signIn = "$linkServerName/auth/signin.php";

  //============================Home===============================//
  static const String home = "$linkServerName/home/home.php";
  //============================Home===============================//
  static const String items = "$linkServerName/itemss/view.php";
 //============================Favorite===============================//
  static const String addFavorite = "$linkServerName/favorite/add.php";
  static const String removeFavorite = "$linkServerName/favorite/remove.php";

} 
