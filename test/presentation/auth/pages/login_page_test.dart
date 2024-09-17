import 'package:flutter_starter_project/presentation/login/pages/login_page.dart';
import 'package:flutter_starter_project/presentation/login/widgets/login_view.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../../helpers/helpers.dart';

void main() {
  widgetSetup();

  group('Login Page ...', () {
    testWidgets('Login View ...', (tester) async {
      await tester.pumpApp(
        LoginPage(),
      );

      expect(find.byType(LoginView), findsOneWidget);
    });
  });
}
