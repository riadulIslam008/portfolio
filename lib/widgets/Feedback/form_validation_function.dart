
class FormValidationFunction {

  /// NAME VALIDATION FUNCTION
  String? validateName(String? value) {
    if (value == null || value.trim().isEmpty) return 'Name is required';

    final nameRegex = RegExp(r"^[a-zA-Z\s]+$");
    if (!nameRegex.hasMatch(value.trim())) {
      return 'Name must contain only letters and spaces';
    }

    return null;
  }

  /// EMAIL VALIDATION FUNCTION
  String? validateEmail(String? value) {
    if (value == null || value.trim().isEmpty) return 'Email is required';
    final emailRegex = RegExp(r'^[^@]+@[^@]+\.[^@]+');
    if (!emailRegex.hasMatch(value)) return 'Enter a valid email';
    return null;
  }

  /// SUBJECT VALIDATION FUNCTION
  String? validateSubject(String? value) {
    if (value == null || value.trim().isEmpty) return 'Subject is required';
    return null;
  }

  /// MESSAGE VALIDATION FUNCTION
  String? validateMessage(String? value) {
    if (value == null || value.trim().isEmpty) return 'Message is required';
    return null;
  }

  /// SEND FEEDBACK
 
}
