// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'recipe_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

APIRecipeResponse _$APIRecipeResponseFromJson(Map<String, dynamic> json) =>
    APIRecipeResponse(
      query: json['q'] as String,
      from: json['from'] as int,
      to: json['to'] as int,
      more: json['more'] as bool,
      count: json['count'] as int,
      hits: (json['hits'] as List<dynamic>)
          .map((e) => Hits.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$APIRecipeResponseToJson(APIRecipeResponse instance) =>
    <String, dynamic>{
      'q': instance.query,
      'from': instance.from,
      'to': instance.to,
      'more': instance.more,
      'count': instance.count,
      'hits': instance.hits,
    };

Hits _$HitsFromJson(Map<String, dynamic> json) => Hits(
      recipe: Recipe.fromJson(json['recipe'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$HitsToJson(Hits instance) => <String, dynamic>{
      'recipe': instance.recipe,
    };

Recipe _$RecipeFromJson(Map<String, dynamic> json) => Recipe(
      uri: json['uri'] as String,
      label: json['label'] as String,
      image: json['image'] as String,
      url: json['url'] as String,
      source: json['source'] as String,
      shareAs: json['shareAs'] as String,
      yield: json['yield'] as int,
      dietLabels: (json['dietLabels'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      healthLabels: (json['healthLabels'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      cautions:
          (json['cautions'] as List<dynamic>).map((e) => e as String).toList(),
      ingredientLines: (json['ingredientLines'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      ingredients: (json['ingredients'] as List<dynamic>)
          .map((e) => Ingredients.fromJson(e as Map<String, dynamic>))
          .toList(),
      calories: (json['calories'] as num).toDouble(),
      totalWeight: (json['totalWeight'] as num).toDouble(),
      totalTime: json['totalTime'] as int,
      cuisineType: (json['cuisineType'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      mealType:
          (json['mealType'] as List<dynamic>).map((e) => e as String).toList(),
      dishType:
          (json['dishType'] as List<dynamic>).map((e) => e as String).toList(),
      totalNutrients: TotalNutrients.fromJson(
          json['totalNutrients'] as Map<String, dynamic>),
      totalDaily:
          TotalDaily.fromJson(json['totalDaily'] as Map<String, dynamic>),
      digest: (json['digest'] as List<dynamic>)
          .map((e) => Digest.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$RecipeToJson(Recipe instance) => <String, dynamic>{
      'uri': instance.uri,
      'label': instance.label,
      'image': instance.image,
      'source': instance.source,
      'url': instance.url,
      'shareAs': instance.shareAs,
      'yield': instance.yield,
      'dietLabels': instance.dietLabels,
      'healthLabels': instance.healthLabels,
      'cautions': instance.cautions,
      'ingredientLines': instance.ingredientLines,
      'ingredients': instance.ingredients,
      'calories': instance.calories,
      'totalWeight': instance.totalWeight,
      'totalTime': instance.totalTime,
      'cuisineType': instance.cuisineType,
      'mealType': instance.mealType,
      'dishType': instance.dishType,
      'totalNutrients': instance.totalNutrients,
      'totalDaily': instance.totalDaily,
      'digest': instance.digest,
    };

Ingredients _$IngredientsFromJson(Map<String, dynamic> json) => Ingredients(
      text: json['text'] as String,
      quantity: (json['quantity'] as num).toDouble(),
      measure: json['measure'] as String?,
      food: json['food'] as String,
      weight: (json['weight'] as num).toDouble(),
      foodCategory: json['foodCategory'] as String,
      foodId: json['foodId'] as String,
      image: json['image'] as String,
    );

Map<String, dynamic> _$IngredientsToJson(Ingredients instance) =>
    <String, dynamic>{
      'text': instance.text,
      'quantity': instance.quantity,
      'measure': instance.measure,
      'food': instance.food,
      'weight': instance.weight,
      'foodCategory': instance.foodCategory,
      'foodId': instance.foodId,
      'image': instance.image,
    };

TotalNutrients _$TotalNutrientsFromJson(Map<String, dynamic> json) =>
    TotalNutrients(
      eNERCKCAL: json['eNERCKCAL'] == null
          ? null
          : ENERCKCAL.fromJson(json['eNERCKCAL'] as Map<String, dynamic>),
      fAT: json['fAT'] == null
          ? null
          : ENERCKCAL.fromJson(json['fAT'] as Map<String, dynamic>),
      fASAT: json['fASAT'] == null
          ? null
          : ENERCKCAL.fromJson(json['fASAT'] as Map<String, dynamic>),
      fATRN: json['fATRN'] == null
          ? null
          : ENERCKCAL.fromJson(json['fATRN'] as Map<String, dynamic>),
      fAMS: json['fAMS'] == null
          ? null
          : ENERCKCAL.fromJson(json['fAMS'] as Map<String, dynamic>),
      fAPU: json['fAPU'] == null
          ? null
          : ENERCKCAL.fromJson(json['fAPU'] as Map<String, dynamic>),
      cHOCDF: json['cHOCDF'] == null
          ? null
          : ENERCKCAL.fromJson(json['cHOCDF'] as Map<String, dynamic>),
      cHOCDFNet: json['cHOCDFNet'] == null
          ? null
          : CHOCDFNet.fromJson(json['cHOCDFNet'] as Map<String, dynamic>),
      fIBTG: json['fIBTG'] == null
          ? null
          : ENERCKCAL.fromJson(json['fIBTG'] as Map<String, dynamic>),
      sUGAR: json['sUGAR'] == null
          ? null
          : ENERCKCAL.fromJson(json['sUGAR'] as Map<String, dynamic>),
      sUGARAdded: json['sUGARAdded'] == null
          ? null
          : ENERCKCAL.fromJson(json['sUGARAdded'] as Map<String, dynamic>),
      pROCNT: json['pROCNT'] == null
          ? null
          : ENERCKCAL.fromJson(json['pROCNT'] as Map<String, dynamic>),
      cHOLE: json['cHOLE'] == null
          ? null
          : ENERCKCAL.fromJson(json['cHOLE'] as Map<String, dynamic>),
      nA: json['nA'] == null
          ? null
          : ENERCKCAL.fromJson(json['nA'] as Map<String, dynamic>),
      cA: json['cA'] == null
          ? null
          : ENERCKCAL.fromJson(json['cA'] as Map<String, dynamic>),
      mG: json['mG'] == null
          ? null
          : ENERCKCAL.fromJson(json['mG'] as Map<String, dynamic>),
      k: json['k'] == null
          ? null
          : ENERCKCAL.fromJson(json['k'] as Map<String, dynamic>),
      fE: json['fE'] == null
          ? null
          : ENERCKCAL.fromJson(json['fE'] as Map<String, dynamic>),
      zN: json['zN'] == null
          ? null
          : ENERCKCAL.fromJson(json['zN'] as Map<String, dynamic>),
      p: json['p'] == null
          ? null
          : ENERCKCAL.fromJson(json['p'] as Map<String, dynamic>),
      vITARAE: json['vITARAE'] == null
          ? null
          : ENERCKCAL.fromJson(json['vITARAE'] as Map<String, dynamic>),
      vITC: json['vITC'] == null
          ? null
          : ENERCKCAL.fromJson(json['vITC'] as Map<String, dynamic>),
      tHIA: json['tHIA'] == null
          ? null
          : ENERCKCAL.fromJson(json['tHIA'] as Map<String, dynamic>),
      rIBF: json['rIBF'] == null
          ? null
          : ENERCKCAL.fromJson(json['rIBF'] as Map<String, dynamic>),
      nIA: json['nIA'] == null
          ? null
          : ENERCKCAL.fromJson(json['nIA'] as Map<String, dynamic>),
      vITB6A: json['vITB6A'] == null
          ? null
          : ENERCKCAL.fromJson(json['vITB6A'] as Map<String, dynamic>),
      fOLDFE: json['fOLDFE'] == null
          ? null
          : ENERCKCAL.fromJson(json['fOLDFE'] as Map<String, dynamic>),
      fOLFD: json['fOLFD'] == null
          ? null
          : ENERCKCAL.fromJson(json['fOLFD'] as Map<String, dynamic>),
      fOLAC: json['fOLAC'] == null
          ? null
          : ENERCKCAL.fromJson(json['fOLAC'] as Map<String, dynamic>),
      vITB12: json['vITB12'] == null
          ? null
          : ENERCKCAL.fromJson(json['vITB12'] as Map<String, dynamic>),
      vITD: json['vITD'] == null
          ? null
          : ENERCKCAL.fromJson(json['vITD'] as Map<String, dynamic>),
      tOCPHA: json['tOCPHA'] == null
          ? null
          : ENERCKCAL.fromJson(json['tOCPHA'] as Map<String, dynamic>),
      vITK1: json['vITK1'] == null
          ? null
          : ENERCKCAL.fromJson(json['vITK1'] as Map<String, dynamic>),
      sugarAlcohol: json['sugarAlcohol'] == null
          ? null
          : CHOCDFNet.fromJson(json['sugarAlcohol'] as Map<String, dynamic>),
      wATER: json['wATER'] == null
          ? null
          : ENERCKCAL.fromJson(json['wATER'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$TotalNutrientsToJson(TotalNutrients instance) =>
    <String, dynamic>{
      'eNERCKCAL': instance.eNERCKCAL,
      'fAT': instance.fAT,
      'fASAT': instance.fASAT,
      'fATRN': instance.fATRN,
      'fAMS': instance.fAMS,
      'fAPU': instance.fAPU,
      'cHOCDF': instance.cHOCDF,
      'cHOCDFNet': instance.cHOCDFNet,
      'fIBTG': instance.fIBTG,
      'sUGAR': instance.sUGAR,
      'sUGARAdded': instance.sUGARAdded,
      'pROCNT': instance.pROCNT,
      'cHOLE': instance.cHOLE,
      'nA': instance.nA,
      'cA': instance.cA,
      'mG': instance.mG,
      'k': instance.k,
      'fE': instance.fE,
      'zN': instance.zN,
      'p': instance.p,
      'vITARAE': instance.vITARAE,
      'vITC': instance.vITC,
      'tHIA': instance.tHIA,
      'rIBF': instance.rIBF,
      'nIA': instance.nIA,
      'vITB6A': instance.vITB6A,
      'fOLDFE': instance.fOLDFE,
      'fOLFD': instance.fOLFD,
      'fOLAC': instance.fOLAC,
      'vITB12': instance.vITB12,
      'vITD': instance.vITD,
      'tOCPHA': instance.tOCPHA,
      'vITK1': instance.vITK1,
      'sugarAlcohol': instance.sugarAlcohol,
      'wATER': instance.wATER,
    };

ENERCKCAL _$ENERCKCALFromJson(Map<String, dynamic> json) => ENERCKCAL(
      label: json['label'] as String,
      quantity: (json['quantity'] as num).toDouble(),
      unit: json['unit'] as String,
    );

Map<String, dynamic> _$ENERCKCALToJson(ENERCKCAL instance) => <String, dynamic>{
      'label': instance.label,
      'quantity': instance.quantity,
      'unit': instance.unit,
    };

CHOCDFNet _$CHOCDFNetFromJson(Map<String, dynamic> json) => CHOCDFNet(
      label: json['label'] as String,
      quantity: json['quantity'] as int,
      unit: json['unit'] as String,
    );

Map<String, dynamic> _$CHOCDFNetToJson(CHOCDFNet instance) => <String, dynamic>{
      'label': instance.label,
      'quantity': instance.quantity,
      'unit': instance.unit,
    };

TotalDaily _$TotalDailyFromJson(Map<String, dynamic> json) => TotalDaily(
      eNERCKCAL: ENERCKCAL.fromJson(json['eNERCKCAL'] as Map<String, dynamic>),
      fAT: ENERCKCAL.fromJson(json['fAT'] as Map<String, dynamic>),
      fASAT: ENERCKCAL.fromJson(json['fASAT'] as Map<String, dynamic>),
      cHOCDF: ENERCKCAL.fromJson(json['cHOCDF'] as Map<String, dynamic>),
      fIBTG: ENERCKCAL.fromJson(json['fIBTG'] as Map<String, dynamic>),
      pROCNT: ENERCKCAL.fromJson(json['pROCNT'] as Map<String, dynamic>),
      cHOLE: ENERCKCAL.fromJson(json['cHOLE'] as Map<String, dynamic>),
      nA: ENERCKCAL.fromJson(json['nA'] as Map<String, dynamic>),
      cA: ENERCKCAL.fromJson(json['cA'] as Map<String, dynamic>),
      mG: ENERCKCAL.fromJson(json['mG'] as Map<String, dynamic>),
      k: ENERCKCAL.fromJson(json['k'] as Map<String, dynamic>),
      fE: ENERCKCAL.fromJson(json['fE'] as Map<String, dynamic>),
      zN: ENERCKCAL.fromJson(json['zN'] as Map<String, dynamic>),
      p: ENERCKCAL.fromJson(json['p'] as Map<String, dynamic>),
      vITARAE: ENERCKCAL.fromJson(json['vITARAE'] as Map<String, dynamic>),
      vITC: ENERCKCAL.fromJson(json['vITC'] as Map<String, dynamic>),
      tHIA: ENERCKCAL.fromJson(json['tHIA'] as Map<String, dynamic>),
      rIBF: ENERCKCAL.fromJson(json['rIBF'] as Map<String, dynamic>),
      nIA: ENERCKCAL.fromJson(json['nIA'] as Map<String, dynamic>),
      vITB6A: ENERCKCAL.fromJson(json['vITB6A'] as Map<String, dynamic>),
      fOLDFE: ENERCKCAL.fromJson(json['fOLDFE'] as Map<String, dynamic>),
      vITB12: ENERCKCAL.fromJson(json['vITB12'] as Map<String, dynamic>),
      vITD: ENERCKCAL.fromJson(json['vITD'] as Map<String, dynamic>),
      tOCPHA: ENERCKCAL.fromJson(json['tOCPHA'] as Map<String, dynamic>),
      vITK1: ENERCKCAL.fromJson(json['vITK1'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$TotalDailyToJson(TotalDaily instance) =>
    <String, dynamic>{
      'eNERCKCAL': instance.eNERCKCAL,
      'fAT': instance.fAT,
      'fASAT': instance.fASAT,
      'cHOCDF': instance.cHOCDF,
      'fIBTG': instance.fIBTG,
      'pROCNT': instance.pROCNT,
      'cHOLE': instance.cHOLE,
      'nA': instance.nA,
      'cA': instance.cA,
      'mG': instance.mG,
      'k': instance.k,
      'fE': instance.fE,
      'zN': instance.zN,
      'p': instance.p,
      'vITARAE': instance.vITARAE,
      'vITC': instance.vITC,
      'tHIA': instance.tHIA,
      'rIBF': instance.rIBF,
      'nIA': instance.nIA,
      'vITB6A': instance.vITB6A,
      'fOLDFE': instance.fOLDFE,
      'vITB12': instance.vITB12,
      'vITD': instance.vITD,
      'tOCPHA': instance.tOCPHA,
      'vITK1': instance.vITK1,
    };

Digest _$DigestFromJson(Map<String, dynamic> json) => Digest(
      label: json['label'] as String,
      tag: json['tag'] as String,
      schemaOrgTag: json['schemaOrgTag'] as String,
      total: (json['total'] as num).toDouble(),
      hasRDI: json['hasRDI'] as bool,
      daily: (json['daily'] as num).toDouble(),
      unit: json['unit'] as String,
      sub: (json['sub'] as List<dynamic>)
          .map((e) => Sub.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$DigestToJson(Digest instance) => <String, dynamic>{
      'label': instance.label,
      'tag': instance.tag,
      'schemaOrgTag': instance.schemaOrgTag,
      'total': instance.total,
      'hasRDI': instance.hasRDI,
      'daily': instance.daily,
      'unit': instance.unit,
      'sub': instance.sub,
    };

Sub _$SubFromJson(Map<String, dynamic> json) => Sub(
      label: json['label'] as String,
      tag: json['tag'] as String,
      schemaOrgTag: json['schemaOrgTag'] as String,
      total: (json['total'] as num).toDouble(),
      hasRDI: json['hasRDI'] as bool,
      daily: (json['daily'] as num).toDouble(),
      unit: json['unit'] as String,
    );

Map<String, dynamic> _$SubToJson(Sub instance) => <String, dynamic>{
      'label': instance.label,
      'tag': instance.tag,
      'schemaOrgTag': instance.schemaOrgTag,
      'total': instance.total,
      'hasRDI': instance.hasRDI,
      'daily': instance.daily,
      'unit': instance.unit,
    };
