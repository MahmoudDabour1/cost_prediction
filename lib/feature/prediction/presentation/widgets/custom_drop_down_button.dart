import 'dart:developer';

import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/constants/app_constants.dart';
import '../../../../core/utils/cache_Helper.dart';

class CustomDropDownButton extends StatefulWidget {
  const CustomDropDownButton({super.key});

  @override
  State<CustomDropDownButton> createState() => _CustomDropDownButtonState();
}

class _CustomDropDownButtonState extends State<CustomDropDownButton> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
          height: 16.h,
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
            "Education",
            style: TextStyle(fontSize: 14.sp, color: Colors.black),
          ),
          items: AppConstants.educationItems
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
              return 'Please select Education.';
            }
            return null;
          },
          onChanged: (value) {
            log('onChanged Education: $value');
            CacheHelper.saveEducation(value!);
          },
          onSaved: (value) {
            CacheHelper.saveEducation(value.toString());
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
            "Work",
            style: TextStyle(fontSize: 14.sp, color: Colors.black),
          ),
          items: AppConstants.workItems
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
              return 'Please select Work.';
            }
            return null;
          },
          onChanged: (value) {
            log('onChanged Work: $value');
            CacheHelper.saveWork(value!);
          },
          onSaved: (value) {
            CacheHelper.saveWork(value.toString());
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
            "Place Code1",
            style: TextStyle(fontSize: 14.sp, color: Colors.black),
          ),
          items: AppConstants.placeCode1Items
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
              return 'Please select Place Code1.';
            }
            return null;
          },
          onChanged: (value) {
            log('onChanged Place Code1: $value');
            CacheHelper.savePlaceCode1(value!);
          },
          onSaved: (value) {
            CacheHelper.savePlaceCode1(value.toString());
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
            "Place Code2",
            style: TextStyle(fontSize: 14.sp, color: Colors.black),
          ),
          items: AppConstants.placeCode2Items
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
              return 'Please select Place Code2.';
            }
            return null;
          },
          onChanged: (value) {
            log('onChanged Place Code2: $value');
            CacheHelper.savePlaceCode2(value!);
          },
          onSaved: (value) {
            CacheHelper.savePlaceCode2(value.toString());
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
            "Order",
            style: TextStyle(fontSize: 14.sp, color: Colors.black),
          ),
          items: AppConstants.orderItems
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
              return 'Please select Order.';
            }
            return null;
          },
          onChanged: (value) {
            log('onChanged Order: $value');
            CacheHelper.saveOrder(value!);
          },
          onSaved: (value) {
            CacheHelper.saveOrder(value.toString());
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
            "Department",
            style: TextStyle(fontSize: 14.sp, color: Colors.black),
          ),
          items: AppConstants.departmentItems
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
              return 'Please select Department.';
            }
            return null;
          },
          onChanged: (value) {
            log('onChanged Department: $value');
            CacheHelper.saveDepartment(value!);
          },
          onSaved: (value) {
            CacheHelper.saveDepartment(value.toString());
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
            "Brand",
            style: TextStyle(fontSize: 14.sp, color: Colors.black),
          ),
          items: AppConstants.brandItems
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
              return 'Please select Brand.';
            }
            return null;
          },
          onChanged: (value) {
            log('onChanged Brand: $value');
            CacheHelper.saveBrand(value!);
          },
          onSaved: (value) {
            CacheHelper.saveBrand(value.toString());
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
            "Promotion Name",
            style: TextStyle(fontSize: 14.sp, color: Colors.black),
          ),
          items: AppConstants.promotionItems
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
              return 'Please select Promotion Name.';
            }
            return null;
          },
          onChanged: (value) {
            log('onChanged Promotion Name: $value');
            CacheHelper.savePromotionName(value!);
          },
          onSaved: (value) {
            CacheHelper.savePromotionName(value.toString());
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
            "Store Kind",
            style: TextStyle(fontSize: 14.sp, color: Colors.black),
          ),
          items: AppConstants.storeKindItems
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
              return 'Please select Store Kind.';
            }
            return null;
          },
          onChanged: (value) {
            log('onChanged Store Kind: $value');
            CacheHelper.saveStoreKind(value!);
          },
          onSaved: (value) {
            CacheHelper.saveStoreKind(value.toString());
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
            "Is Recyclable?",
            style: TextStyle(fontSize: 14.sp, color: Colors.black),
          ),
          items: AppConstants.isRecyclableItems
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
              return 'Please select Is Recyclable?.';
            }
            return null;
          },
          onChanged: (value) {
            log('onChanged Is Recyclable?: $value');
            CacheHelper.saveIsRecyclable(value!);
          },
          onSaved: (value) {
            CacheHelper.saveIsRecyclable(value.toString());
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
            "Yearly Income",
            style: TextStyle(fontSize: 14.sp, color: Colors.black),
          ),
          items: AppConstants.yearlyIncomeItems
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
              return 'Please select Yearly Income.';
            }
            return null;
          },
          onChanged: (value) {
            log('onChanged Yearly Income: $value');
            CacheHelper.saveYearlyIncome(value!);
          },
          onSaved: (value) {
            CacheHelper.saveYearlyIncome(value.toString());
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
      ],
    );
  }
}
