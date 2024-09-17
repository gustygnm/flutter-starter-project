import 'package:flutter_starter_project/core/constants/key_constants.dart';
import 'package:flutter_starter_project/core/di/injection.dart';
import 'package:flutter_starter_project/core/utils/services/shared_prefs.dart';
import 'package:flutter_starter_project/presentation/app/app.dart';
import 'package:flutter_starter_project/presentation/home/pages/home_page.dart';
import 'package:flutter_starter_project/presentation/login/pages/login_page.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:network_image_mock/network_image_mock.dart';

import '../../helpers/helpers.dart';

void main() {
  widgetSetup();

  group('App', () {
    testWidgets('App initial route to LoginPage', (tester) async {
      await tester.pumpWidget(App());

      expect(find.byType(LoginPage), findsOneWidget);
    });

    testWidgets('App initial route to DashboardPage', (tester) async {
      final prefs = sl<SharedPrefs>();
      await prefs.putString(KeyConstants.keyAccessToken, 'token');

      await mockNetworkImagesFor(() => tester.pumpWidget(App()));

      expect(find.byType(HomePage), findsOneWidget);
    });
  });
}
