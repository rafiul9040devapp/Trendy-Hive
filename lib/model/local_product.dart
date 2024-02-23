import '../constants/assets.dart';

class LocalProduct {
  final String imageUrl;
  final String title;
  final String price;
  final String reviews;

  LocalProduct({
    required this.imageUrl,
    required this.title,
    required this.price,
    required this.reviews,
  });

   static final List<String> imageList = [
    AppImages.image1,
    AppImages.image2,
    AppImages.image3,
    AppImages.image4
  ];

  static List<LocalProduct> generateProductList() {

    final List<String> productTitles = ["Warm Zipper", "Knitted Woo!", "Zipper Win", "Child Win"];
    final List<String> prices = ["\$300", "\$650", "\$500", "\$400"];
    final List<String> reviews = ["54", "120", "541", "535"];

    List<LocalProduct> productList = [];

    for (int i = 0; i < 20; i++) {
      final int index = i % imageList.length;
      productList.add(LocalProduct(
        imageUrl: imageList[index],
        title: productTitles[index % productTitles.length],
        price: prices[index % prices.length],
        reviews: reviews[index % reviews.length],
      ));
    }
    return productList;
  }
}
