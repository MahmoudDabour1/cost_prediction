abstract class Validator {




  static String? numberValidator(value) {
    if (value!.isEmpty) {
      return '* Filed is required';
    }
    return null;
  }

}