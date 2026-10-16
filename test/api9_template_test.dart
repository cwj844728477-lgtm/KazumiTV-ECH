import 'package:flutter_test/flutter_test.dart';
import 'package:kazumi/plugins/api_rule_config.dart';
void main(){test('API9 source template survives round trip',(){ final c=ApiSearchConfig.fromJson({'sourceTemplate':'https://example.com/@source'}); expect(c.sourceTemplate,'https://example.com/@source'); expect(ApiSearchConfig.fromJson(c.toJson()).sourceTemplate,c.sourceTemplate);});}
