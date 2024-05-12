import 'package:shared_preferences/shared_preferences.dart';

class CacheHelper {
  static late SharedPreferences prefs;

  static init() async {
    prefs = await SharedPreferences.getInstance();
  }

  static Future<bool> saveStatus(String status) async {
    return await prefs.setString("status", status);
  }

  static String getStatus() {
    return prefs.getString("status") ?? '';
  }

  static Future<bool> saveGender(String gender) async {
    return await prefs.setString("gender", gender);
  }

  static String getGender() {
    return prefs.getString("gender") ?? '';
  }

  static Future<bool> saveEducation(String education) async {
    return await prefs.setString("education", education);
  }

  static String getEducation() {
    return prefs.getString("education") ?? '';
  }

  static Future<bool> saveWork(String work) async {
    return await prefs.setString("work", work);
  }

  static String getWork() {
    return prefs.getString("work") ?? '';
  }

  static Future<bool> savePlaceCode1(String placeCode1) async {
    return await prefs.setString("placeCode1", placeCode1);
  }

  static String getPlaceCode1() {
    return prefs.getString("placeCode1") ?? '';
  }

  static Future<bool> savePlaceCode2(String placeCode2) async {
    return await prefs.setString("placeCode2", placeCode2);
  }

  static String getPlaceCode2() {
    return prefs.getString("placeCode2") ?? '';
  }

  static Future<bool> saveOrder(String order) async {
    return await prefs.setString("order", order);
  }

  static String getOrder() {
    return prefs.getString("order") ?? '';
  }

  static Future<bool> saveDepartment(String department) async {
    return await prefs.setString("department", department);
  }

  static String getDepartment() {
    return prefs.getString("department") ?? '';
  }

  static Future<bool> saveBrand(String brand) async {
    return await prefs.setString("brand", brand);
  }

  static String getBrand() {
    return prefs.getString("brand") ?? '';
  }

  static Future<bool> savePromotionName(String promotionName) async {
    return await prefs.setString("promotionName", promotionName);
  }

  static String getPromotionName() {
    return prefs.getString("promotionName") ?? '';
  }

  static Future<bool> saveStoreKind(String storeKind) async {
    return await prefs.setString("storeKind", storeKind);
  }

  static String getStoreKind() {
    return prefs.getString("storeKind") ?? '';
  }

  static Future<bool> saveIsRecyclable(String isRecyclable) async {
    return await prefs.setString("isRecyclable", isRecyclable);
  }

  static String getIsRecyclable() {
    return prefs.getString("isRecyclable") ?? '';
  }

  static Future<bool> saveYearlyIncome(String yearlyIncome) async {
    return await prefs.setString("yearlyIncome", yearlyIncome);
  }

  static String getYearlyIncome() {
    return prefs.getString("yearlyIncome") ?? '';
  }
}
