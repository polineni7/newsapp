
import 'package:newsapp/models/slider_model.dart';

List<sliderModel> GetSlidersdata(){

  List<sliderModel> categories =[];

  sliderModel catmodel = sliderModel();
  catmodel.name = "Business News";
  catmodel.image = "assets/images/business.jpg";
  categories.add(catmodel);
  catmodel = sliderModel();

  catmodel.name = "Entertainment News";
  catmodel.image = "assets/images/entertainment.jpg";
  categories.add(catmodel);
  catmodel = sliderModel();

  catmodel.name = "General News";
  catmodel.image = "assets/images/general.jpg";
  categories.add(catmodel);
  catmodel = sliderModel();

  catmodel.name = "Science News";
  catmodel.image = "assets/images/science.jpg";
  categories.add(catmodel);
  catmodel = sliderModel();
  
  catmodel.name = "Sports News";
  catmodel.image = "assets/images/sports.jpg";
  categories.add(catmodel);
  
  return categories;
}