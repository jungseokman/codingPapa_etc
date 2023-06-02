import 'package:json_annotation/json_annotation.dart';

part 'recipe_model.g.dart';

@JsonSerializable()
class APIRecipeResponse {
  @JsonKey(name: 'q')
  String query;
  int from;
  int to;
  bool more;
  int count;
  List<Hits> hits;

  APIRecipeResponse(
      {required this.query,
      required this.from,
      required this.to,
      required this.more,
      required this.count,
      required this.hits});

  factory APIRecipeResponse.fromJson(Map<String, dynamic> json) =>
      _$APIRecipeResponseFromJson(json);

  Map<String, dynamic> toJson() => _$APIRecipeResponseToJson(this);
}

@JsonSerializable()
class Hits {
  Recipe recipe;

  Hits({required this.recipe});

  factory Hits.fromJson(Map<String, dynamic> json) => _$HitsFromJson(json);

  Map<String, dynamic> toJson() => _$HitsToJson(this);
}

@JsonSerializable()
class Recipe {
  String uri;
  String label;
  String image;
  String source;
  String url;
  String shareAs;
  int yield;
  List<String> dietLabels;
  List<String> healthLabels;
  List<String> cautions;
  List<String> ingredientLines;
  List<Ingredients> ingredients;
  double calories;
  double totalWeight;
  int totalTime;
  List<String> cuisineType;
  List<String> mealType;
  List<String> dishType;
  TotalNutrients totalNutrients;
  TotalDaily totalDaily;
  List<Digest> digest;

  Recipe(
      {required this.uri,
      required this.label,
      required this.image,
      required this.url,
      required this.source,
      required this.shareAs,
      required this.yield,
      required this.dietLabels,
      required this.healthLabels,
      required this.cautions,
      required this.ingredientLines,
      required this.ingredients,
      required this.calories,
      required this.totalWeight,
      required this.totalTime,
      required this.cuisineType,
      required this.mealType,
      required this.dishType,
      required this.totalNutrients,
      required this.totalDaily,
      required this.digest});

  factory Recipe.fromJson(Map<String, dynamic> json) => _$RecipeFromJson(json);

  Map<String, dynamic> toJson() => _$RecipeToJson(this);
}

@JsonSerializable()
class Ingredients {
  String text;
  double quantity;
  String? measure;
  String food;
  double weight;
  String foodCategory;
  String foodId;
  String image;

  Ingredients(
      {required this.text,
      required this.quantity,
      this.measure,
      required this.food,
      required this.weight,
      required this.foodCategory,
      required this.foodId,
      required this.image});

  factory Ingredients.fromJson(Map<String, dynamic> json) =>
      _$IngredientsFromJson(json);

  Map<String, dynamic> toJson() => _$IngredientsToJson(this);
}

@JsonSerializable()
class TotalNutrients {
  ENERCKCAL? eNERCKCAL;
  ENERCKCAL? fAT;
  ENERCKCAL? fASAT;
  ENERCKCAL? fATRN;
  ENERCKCAL? fAMS;
  ENERCKCAL? fAPU;
  ENERCKCAL? cHOCDF;
  CHOCDFNet? cHOCDFNet;
  ENERCKCAL? fIBTG;
  ENERCKCAL? sUGAR;
  ENERCKCAL? sUGARAdded;
  ENERCKCAL? pROCNT;
  ENERCKCAL? cHOLE;
  ENERCKCAL? nA;
  ENERCKCAL? cA;
  ENERCKCAL? mG;
  ENERCKCAL? k;
  ENERCKCAL? fE;
  ENERCKCAL? zN;
  ENERCKCAL? p;
  ENERCKCAL? vITARAE;
  ENERCKCAL? vITC;
  ENERCKCAL? tHIA;
  ENERCKCAL? rIBF;
  ENERCKCAL? nIA;
  ENERCKCAL? vITB6A;
  ENERCKCAL? fOLDFE;
  ENERCKCAL? fOLFD;
  ENERCKCAL? fOLAC;
  ENERCKCAL? vITB12;
  ENERCKCAL? vITD;
  ENERCKCAL? tOCPHA;
  ENERCKCAL? vITK1;
  CHOCDFNet? sugarAlcohol;
  ENERCKCAL? wATER;

  TotalNutrients(
      {this.eNERCKCAL,
      this.fAT,
      this.fASAT,
      this.fATRN,
      this.fAMS,
      this.fAPU,
      this.cHOCDF,
      this.cHOCDFNet,
      this.fIBTG,
      this.sUGAR,
      this.sUGARAdded,
      this.pROCNT,
      this.cHOLE,
      this.nA,
      this.cA,
      this.mG,
      this.k,
      this.fE,
      this.zN,
      this.p,
      this.vITARAE,
      this.vITC,
      this.tHIA,
      this.rIBF,
      this.nIA,
      this.vITB6A,
      this.fOLDFE,
      this.fOLFD,
      this.fOLAC,
      this.vITB12,
      this.vITD,
      this.tOCPHA,
      this.vITK1,
      this.sugarAlcohol,
      this.wATER});

  factory TotalNutrients.fromJson(Map<String, dynamic> json) =>
      _$TotalNutrientsFromJson(json);

  Map<String, dynamic> toJson() => _$TotalNutrientsToJson(this);
}

@JsonSerializable()
class ENERCKCAL {
  String label;
  double quantity;
  String unit;

  ENERCKCAL({
    required this.label,
    required this.quantity,
    required this.unit,
  });

  factory ENERCKCAL.fromJson(Map<String, dynamic> json) =>
      _$ENERCKCALFromJson(json);

  Map<String, dynamic> toJson() => _$ENERCKCALToJson(this);
}

@JsonSerializable()
class CHOCDFNet {
  String label;
  int quantity;
  String unit;

  CHOCDFNet({required this.label, required this.quantity, required this.unit});

  factory CHOCDFNet.fromJson(Map<String, dynamic> json) =>
      _$CHOCDFNetFromJson(json);

  Map<String, dynamic> toJson() => _$CHOCDFNetToJson(this);
}

@JsonSerializable()
class TotalDaily {
  ENERCKCAL eNERCKCAL;
  ENERCKCAL fAT;
  ENERCKCAL fASAT;
  ENERCKCAL cHOCDF;
  ENERCKCAL fIBTG;
  ENERCKCAL pROCNT;
  ENERCKCAL cHOLE;
  ENERCKCAL nA;
  ENERCKCAL cA;
  ENERCKCAL mG;
  ENERCKCAL k;
  ENERCKCAL fE;
  ENERCKCAL zN;
  ENERCKCAL p;
  ENERCKCAL vITARAE;
  ENERCKCAL vITC;
  ENERCKCAL tHIA;
  ENERCKCAL rIBF;
  ENERCKCAL nIA;
  ENERCKCAL vITB6A;
  ENERCKCAL fOLDFE;
  ENERCKCAL vITB12;
  ENERCKCAL vITD;
  ENERCKCAL tOCPHA;
  ENERCKCAL vITK1;

  TotalDaily(
      {required this.eNERCKCAL,
      required this.fAT,
      required this.fASAT,
      required this.cHOCDF,
      required this.fIBTG,
      required this.pROCNT,
      required this.cHOLE,
      required this.nA,
      required this.cA,
      required this.mG,
      required this.k,
      required this.fE,
      required this.zN,
      required this.p,
      required this.vITARAE,
      required this.vITC,
      required this.tHIA,
      required this.rIBF,
      required this.nIA,
      required this.vITB6A,
      required this.fOLDFE,
      required this.vITB12,
      required this.vITD,
      required this.tOCPHA,
      required this.vITK1});

  factory TotalDaily.fromJson(Map<String, dynamic> json) =>
      _$TotalDailyFromJson(json);

  Map<String, dynamic> toJson() => _$TotalDailyToJson(this);
}

@JsonSerializable()
class Digest {
  String label;
  String tag;
  String schemaOrgTag;
  double total;
  bool hasRDI;
  double daily;
  String unit;
  List<Sub> sub;

  Digest(
      {required this.label,
      required this.tag,
      required this.schemaOrgTag,
      required this.total,
      required this.hasRDI,
      required this.daily,
      required this.unit,
      required this.sub});

  factory Digest.fromJson(Map<String, dynamic> json) => _$DigestFromJson(json);

  Map<String, dynamic> toJson() => _$DigestToJson(this);
}

@JsonSerializable()
class Sub {
  String label;
  String tag;
  String schemaOrgTag;
  double total;
  bool hasRDI;
  double daily;
  String unit;

  Sub(
      {required this.label,
      required this.tag,
      required this.schemaOrgTag,
      required this.total,
      required this.hasRDI,
      required this.daily,
      required this.unit});

  factory Sub.fromJson(Map<String, dynamic> json) => _$SubFromJson(json);

  Map<String, dynamic> toJson() => _$SubToJson(this);
}
