import 'package:cost_prediction/feature/prediction/domain/entities/prediction_entity.dart';

class PredictionModel extends PredictionEntity{
  const PredictionModel({required super.status, required super.gender, required super.children, required super.education, required super.work, required super.placeCode1, required super.placeCode2, required super.order, required super.department, required super.brand, required super.additionalFeaturesNumber, required super.promotionName, required super.storeKind, required super.storeSales, required super.netWeight, required super.packageWeight, required super.isRecyclable, required super.yearlyIncome, required super.storeArea, required super.frozenArea});

  factory PredictionModel.fromJson(Map<String, dynamic> json) {
    return PredictionModel(
      additionalFeaturesNumber: json["Additional Features Number"],
      brand: json["Brand"],
      children: json["Children"],
      department: json["Department"],
      education: json["Education"],
      frozenArea: json["Frozen Area"],
      gender: json["Gender"],
      isRecyclable: json["Is Recyclable?"],
      netWeight: json["Net Weight"],
      order: json["Order"],
      packageWeight: json["Package Weight"],
      placeCode1: json["Place Code1"],
      placeCode2: json["Place Code2"],
      promotionName: json["Promotion Name"],
      status: json["Status"],
      storeArea: json["Store Area"],
      storeKind: json["Store Kind"],
      storeSales: json["Store Sales"],
      work: json["Work"],
      yearlyIncome: json["Yearly Income"],

    );
  }

  Map<String, dynamic> toJson() {
    return {
      "Status": status,
      "Gender": gender,
      "Children": children,
      "Education": education,
      "Work": work,
      "Place Code1": placeCode1,
      "Place Code2": placeCode2,
      "Order": order,
      "Department": department,
      "Brand": brand,
      "Additional Features Number": additionalFeaturesNumber,
      "Promotion Name":promotionName,
      "Store Kind": storeKind,
      "Store Sales":storeSales,
      "Net Weight": netWeight,
      "Package Weight": packageWeight,
      "Is Recyclable?": isRecyclable,
      "Yearly Income": yearlyIncome,
      "Store Area": storeArea,
      "Frozen Area": frozenArea,
    };
  }
}