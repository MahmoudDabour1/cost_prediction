import 'dart:developer';

import 'package:cost_prediction/core/utils/validator.dart';
import 'package:cost_prediction/feature/prediction/data/models/prediction_model.dart';
import 'package:cost_prediction/feature/prediction/presentation/controller/prediction_cubit.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/constants/app_constants.dart';
import '../../../../core/services/services_locator.dart';
import '../../../../core/utils/cache_Helper.dart';
import '../../../../core/widgets/custom_button.dart';
import '../../../../core/widgets/text_form_widget.dart';
import '../widgets/custom_drop_down_button.dart';

class PredictionScreen extends StatefulWidget {
  const PredictionScreen({super.key});

  @override
  State<PredictionScreen> createState() => _PredictionScreenState();
}

class _PredictionScreenState extends State<PredictionScreen> {
  final _formKey = GlobalKey<FormState>();

  final childrenController = TextEditingController();
  final additionalFeaturesNumberController = TextEditingController();
  final storeSalesController = TextEditingController();
  final netWeightController = TextEditingController();
  final packageWeightController = TextEditingController();
  final storeAreaController = TextEditingController();
  final frozenAreaController = TextEditingController();
  String gender = 'Male';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.pink,
        title: Text(
          "Prediction ",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 20.sp,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: BlocProvider(
          create: (context) => PredictionCubit(sl()),
          child: BlocConsumer<PredictionCubit, PredictionStates>(
            listener: (context, state) {
              if (state is PredictionSuccessState) {
                showDialog(
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                      title: Text(
                        'Prediction Result',
                        style: TextStyle(
                          fontSize: 22.sp,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      content: Text(
                        'The Cost is ${state.resultModel.prediction.toStringAsFixed(3)}',
                        style: TextStyle(
                          fontSize: 18.sp,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      actions: [
                        CustomRoundedButton(
                          buttonText: 'OK',
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                          heroTag: '3',
                        ),
                      ],
                    );
                  },
                );
                // btnController.success();
              } else if (state is PredictionFailedState) {
                // btnController.stop();
                showDialog(
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                      title: const Text('Error'),
                      content: Text(state.message),
                      actions: [
                        CustomRoundedButton(
                          buttonText: 'OK',
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                          heroTag: '2',
                        ),
                      ],
                    );
                  },
                );
              }
            },
            builder: (context, state) {
              var cubit = PredictionCubit.get(context);
              return Padding(
                padding: EdgeInsets.symmetric(horizontal: 15.w),
                child: Form(
                  key: _formKey,
                  child: Column(
                    children: [
                      SizedBox(
                        height: 20.h,
                      ),
                      DropdownButtonFormField2<String>(
                        isExpanded: true,
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.symmetric(vertical: 16.h),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15.r),
                          ),
                          // Add more decoration..
                        ),
                        hint: Text(
                          "Status",
                          style:
                              TextStyle(fontSize: 14.sp, color: Colors.black),
                        ),
                        items: AppConstants.statusItems
                            .map((item) => DropdownMenuItem<String>(
                                  value: item,
                                  child: Text(
                                    item,
                                    style: TextStyle(
                                      fontSize: 14.sp,
                                    ),
                                  ),
                                ))
                            .toList(),
                        validator: (value) {
                          if (value == null) {
                            return 'Please select Status.';
                          }
                          return null;
                        },
                        onChanged: (value) {
                          log('onChanged Status: $value');
                          CacheHelper.saveStatus(value!);
                        },
                        onSaved: (value) {
                          CacheHelper.saveStatus(value.toString());
                        },
                        buttonStyleData: ButtonStyleData(
                          padding: EdgeInsets.only(right: 8.w),
                        ),
                        iconStyleData: IconStyleData(
                          icon: const Icon(
                            Icons.arrow_drop_down,
                            color: Colors.black,
                          ),
                          iconSize: 24.sp,
                        ),
                        dropdownStyleData: DropdownStyleData(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15).r,
                          ),
                        ),
                        menuItemStyleData: MenuItemStyleData(
                          padding: const EdgeInsets.symmetric(horizontal: 16).w,
                        ),
                      ),
                      SizedBox(
                        height: 16.h,
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: InkWell(
                              onTap: () {
                                setState(() {
                                  gender = "Male";
                                  CacheHelper.saveGender(gender);
                                  print(CacheHelper.getGender());
                                });
                              },
                              child: Container(
                                height: 120.h,
                                width: double.infinity.w,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20.r),
                                    color: Colors.white,
                                    border: gender == "Male"
                                        ? Border.all(
                                            color: Colors.pink, width: 3.w)
                                        : null),
                                child: Column(
                                  children: [
                                    Image.asset(
                                      "assets/images/male.jpg",
                                      width: 80.w,
                                      fit: BoxFit.cover,
                                    ),
                                    Text(
                                      "Male",
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20.sp,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 20.w,
                          ),
                          Expanded(
                            child: InkWell(
                              onTap: () {
                                setState(() {
                                  gender = "Female";
                                  CacheHelper.saveGender(gender);
                                  print(CacheHelper.getGender());
                                });
                              },
                              child: Container(
                                height: 120.h,
                                width: double.infinity.w,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20.r),
                                    color: Colors.white,
                                    border: gender == "Female"
                                        ? Border.all(
                                            color: Colors.pink,
                                            width: 3.w,
                                          )
                                        : null),
                                child: Column(
                                  children: [
                                    Image.asset(
                                      "assets/images/female.jpg",
                                      width: 80.w,
                                      fit: BoxFit.cover,
                                    ),
                                    Text(
                                      "Female",
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20.sp,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 16.h,
                      ),
                      TextFormWidget(
                        controller: childrenController,
                        text: "Children",
                        keyboardType: TextInputType.number,
                        validation: Validator.numberValidator,
                      ),
                      SizedBox(
                        height: 16.h,
                      ),
                      TextFormWidget(
                        controller: additionalFeaturesNumberController,
                        text: "Additional Features Number",
                        keyboardType: TextInputType.number,
                        validation: Validator.numberValidator,
                      ),
                      SizedBox(
                        height: 16.h,
                      ),
                      TextFormWidget(
                        controller: storeSalesController,
                        text: "Store Sales",
                        keyboardType: TextInputType.number,
                        validation: Validator.numberValidator,
                      ),
                      SizedBox(
                        height: 16.h,
                      ),
                      TextFormWidget(
                        controller: netWeightController,
                        text: "Net Weight",
                        keyboardType: TextInputType.number,
                        validation: Validator.numberValidator,
                      ),
                      SizedBox(
                        height: 16.h,
                      ),
                      TextFormWidget(
                        controller: packageWeightController,
                        text: "Package Weight",
                        keyboardType: TextInputType.number,
                        validation: Validator.numberValidator,
                      ),
                      SizedBox(
                        height: 16.h,
                      ),
                      TextFormWidget(
                        controller: storeAreaController,
                        text: "Store Area",
                        keyboardType: TextInputType.number,
                        validation: Validator.numberValidator,
                      ),
                      SizedBox(
                        height: 16.h,
                      ),
                      TextFormWidget(
                        controller: frozenAreaController,
                        text: "Frozen Area",
                        keyboardType: TextInputType.number,
                        validation: Validator.numberValidator,
                        isLastInput: true,
                      ),
                      const CustomDropDownButton(),
                      state is PredictionLoadingState
                          ? Center(
                              child: CircularProgressIndicator(
                                color: Colors.pink,
                              ),
                            )
                          : ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.pink,
                                fixedSize: Size(380.w, 60.h),
                              ),
                              onPressed: () {
                                if (_formKey.currentState!.validate()) {
                                  cubit.predict(
                                    PredictionModel(
                                      status: CacheHelper.getStatus(),
                                      gender: CacheHelper.getGender(),
                                      children:
                                          int.parse(childrenController.text),
                                      education: CacheHelper.getEducation(),
                                      work: CacheHelper.getWork(),
                                      placeCode1: CacheHelper.getPlaceCode1(),
                                      placeCode2: CacheHelper.getPlaceCode2(),
                                      order: CacheHelper.getOrder(),
                                      department: CacheHelper.getDepartment(),
                                      brand: CacheHelper.getBrand(),
                                      additionalFeaturesNumber: int.parse(
                                          additionalFeaturesNumberController
                                              .text),
                                      promotionName:
                                          CacheHelper.getPromotionName(),
                                      storeKind: CacheHelper.getStoreKind(),
                                      storeSales: double.parse(
                                          storeSalesController.text),
                                      netWeight: double.parse(
                                          netWeightController.text),
                                      packageWeight: double.parse(
                                          packageWeightController.text),
                                      isRecyclable:
                                          CacheHelper.getIsRecyclable(),
                                      yearlyIncome:
                                          CacheHelper.getYearlyIncome(),
                                      storeArea: double.parse(
                                          storeAreaController.text),
                                      frozenArea: double.parse(
                                          frozenAreaController.text),
                                    ),
                                  );
                                }
                              },
                              child: Text(
                                "Predict",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                  fontSize: 22.sp,
                                ),
                              )),
                      SizedBox(
                        height: 30.h,
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
