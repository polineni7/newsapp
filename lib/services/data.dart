
import 'package:newsapp/models/category_model.dart';

List<CategoryModel> GetCategories(){

  List<CategoryModel> categories =[];

  CategoryModel catmodel = CategoryModel();
  catmodel.categoryName = "Business";
  catmodel.image = "assets/images/business.jpg";
  categories.add(catmodel);
  catmodel = CategoryModel();

  catmodel.categoryName = "Entertainment";
  catmodel.image = "assets/images/entertainment.jpg";
  categories.add(catmodel);
  catmodel = CategoryModel();

  catmodel.categoryName = "General";
  catmodel.image = "assets/images/general.jpg";
  categories.add(catmodel);
  catmodel = CategoryModel();

  catmodel.categoryName = "Science";
  catmodel.image = "assets/images/science.jpg";
  categories.add(catmodel);
  catmodel = CategoryModel();
  
  catmodel.categoryName = "Sports";
  catmodel.image = "assets/images/sports.jpg";
  categories.add(catmodel);
  
  return categories;
}