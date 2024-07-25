class Productdata {
  static Set<Map<String, dynamic>> cartdata = {};
  static List<Map<String, dynamic>> cartproductdata = [];

  static void convertuniquedata() {
    cartproductdata = cartdata.toList();
  }
}
