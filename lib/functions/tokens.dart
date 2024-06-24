import 'dart:convert';
import 'dart:developer';

Map<String, dynamic>? parseJwt(String token) {
  final parts = token.split('.');
  if (parts.length != 3) {
    log('Invalid Token');
    return null;
  }

  late final String payload;

  try {
    payload = _decodeBase64(parts[1]);
  } catch (e) {
    log(e.toString());
    return null;
  }

  final payloadMap = json.decode(payload);
  if (payloadMap is! Map<String, dynamic>) {
    log('Invalid Payload');
    return null;
  }

  return payloadMap;
}

String _decodeBase64(String str) {
  String output = str.replaceAll('-', '+').replaceAll('_', '/');

  switch (output.length % 4) {
    case 0:
      break;
    case 2:
      output += '==';
      break;
    case 3:
      output += '=';
      break;
    default:
      throw Exception('Illegal base64url string!"');
  }

  return utf8.decode(base64Url.decode(output));
}
