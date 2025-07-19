import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:web/web.dart' as web;
class EmailMessageSend {
  static Future<bool> sendEmail({
    required String name,
    required String email,
    required String subject,
    required String message,
  }) async {
    const serviceId = 'service_58llkq8';
    const templateId = 'template_esvq7dp';
    const userId = '87IWMJXQ4yqiZXaKH';

    final url = Uri.parse('https://api.emailjs.com/api/v1.0/email/send');

    try {
      final response = await http.post(
        url,
        headers: {
          'origin':  web.window.location.origin,
          'Content-Type': 'application/json',
        },
        body: json.encode({
          'service_id': serviceId,
          'template_id': templateId,
          'user_id': userId,
          'template_params': {
            'user_name': name,
            'user_email': email,
            'user_subject': subject,
            'user_message': message,
          },
        }),
      );

      if (response.statusCode == 200) {
        return true;
      } else {
        print('Failed to send email: ${response.body}');
        return false;
      }
    } catch (e) {
      print('Exception while sending email: $e');
      return false;
    }
  }
}
