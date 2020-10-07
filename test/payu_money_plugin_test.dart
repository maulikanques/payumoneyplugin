import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:payu_money_plugin/payu_money_plugin.dart';

void main() {
  const MethodChannel channel = MethodChannel('payu_money_plugin');

  TestWidgetsFlutterBinding.ensureInitialized();

  setUp(() {
    channel.setMockMethodCallHandler((MethodCall methodCall) async {
      return '42';
    });
  });

  tearDown(() {
    channel.setMockMethodCallHandler(null);
  });

  test('getPlatformVersion', () async {
    expect(await PayuMoneyPlugin.platformVersion, '42');
  });
}
