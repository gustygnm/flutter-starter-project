# Flutter Starter Project

[![style: very good analysis][very_good_analysis_badge]][very_good_analysis_link]
[![License: MIT][license_badge]][license_link]


- [Flutter Starter Project](#flutter-starter-project)
	- [Getting Started🚀](#getting-started)
	- [Setup GitLab🐱](#setup-gitlab)
		- [Git Branchs](#git-branchs)
		- [GitLab Flow](#gitlab-flow)
			- [Principles](#principles)
		- [CI Variables](#ci-variables)
		- [GitLab CI/CD](#gitlab-cicd)
			- [Stages](#stages)
				- [1. Test](#1-test)
				- [2. Build](#2-build)
				- [3. Staging](#3-staging)
				- [4. Internal Test](#4-internal-test)
				- [5. Production](#5-production)
	- [Running Test🧪](#running-test)
	- [Integration Testing📱](#integration-testing)
		- [Firebase Test Lab](#firebase-test-lab)
		- [Uploading an Android APK](#uploading-an-android-apk)
		- [Integration Testing in Real Device](#integration-testing-in-real-device)
		- [QA Testing Staging App](#qa-testing-staging-app)
	- [Working with Translations🌐](#working-with-translations)
		- [Usage](#usage)
			- [1. Create a Google Sheet](#1-create-a-google-sheet)
			- [2. Declare a localization delegate](#2-declare-a-localization-delegate)
			- [3. Generate your localizations](#3-generate-your-localizations)
			- [4. Display your labels](#4-display-your-labels)
	- [Generate Icon Android IOS](#generate-icon-android-ios)
	- [Generate Splashscreen Android IOS](#generate-splashscreen-android-ios)

---

## Getting Started🚀

This project contains 3 flavors:

- development
- staging
- production

To run the desired flavor either use the launch configuration in VSCode/Android Studio or use the following commands:

```sh
# Development
flutter run --flavor development --target lib/main_development.dart

# Staging
flutter run --flavor staging --target lib/main_staging.dart

# Production
flutter run --flavor production --target lib/main_production.dart
```

Before you push your local branch to remote branch always do this steps:

```sh
flutter format lib test
flutter analyze lib test
```

_\*Flutter Starter Project works on iOS, Android, and Web._

---

## Setup GitLab🐱

### Git Branchs

1. **master** as development branch (protected)
2. **staging** (protected) : for QA to testing App
3. **production** (protected) : for production, deploy to Play Store or App Store
4. features branch

### GitLab Flow

#### Principles

- Create a new local branch for the task and periodically **push a branch of the same name on the server**
- When the task is finished, **request a Merge Request** for the master branch
- When the submitted changes were reviewed/approved, merge them with the master branch
- Once in the master, the code must be **integrated into the company's internal environments** branches, until reaching the production branch.
- When being merged into the master, **delete the branch** where the task was developed leaving the repository more organized.
  ![https://github.com/jadsonjs/gitlab-flow/raw/master/images/flow14.png](https://github.com/jadsonjs/gitlab-flow/raw/master/images/flow14.png)

Features Branch > Master > Staging > Production

Read this for more information [GitHub - jadsonjs/gitlab-flow: Shows the Gitlab flow workflow](https://github.com/jadsonjs/gitlab-flow)

### CI Variables

In your project open **settings > CI/CD >** **Variables** , and this variabel:

![Gitlab CI Variables](https://github.com/m-noer/flutter_tdd_starter/blob/master/gitlab_ci_variables.png?raw=true)

- Encode the keystore: `base64 key.jks`
- Copy the base64 output and create a variable called `STORE_FILE`
- Save the store password as `STORE_PASSWORD` variable
- Save the key password as `KEY_PASSWORD`variable
- Save the key alias as `KEY_ALIAS` variable

To make the deployment via Fastlane working, you need to to get API access to Google Play console. To get an api key json file, follow the steps of the [Collect your Google credentials](https://docs.fastlane.tools/getting-started/android/setup/#setting-up-supply) section of the Fastlane guide

- Save the content of the key.json file as `JSON_KEY_DATA` variable.

To deploy to Firebase App Distribution via Fastlane, follow the steps [Firebase App Distribution](https://firebase.google.com/docs/app-distribution/android/distribute-fastlane#google-acc-fastlane).

- Save the Firebase app id as `FIREBASE_APP_ID` variable
- Save the firebase cli token as `FIREBASE_CLI_TOKEN` variable, to get firebase cli token follow [this steps](https://firebase.google.com/docs/app-distribution/android/distribute-fastlane#google-acc-fastlane)

### GitLab CI/CD

This is Gitlab pipeline visualize for this project:
![Gitlab Pipeline](https://github.com/m-noer/flutter_tdd_starter/blob/master/gitlab_pipeline.png?raw=true)

#### Stages

There are 4 stages:

1. Test
2. Build
3. Staging
4. Internal_test
5. Production

##### 1. Test

Test stage will run in all branchs and do this scripts

```sh
- flutter format --set-exit-if-changed lib test
- flutter analyze lib test
- flutter test --coverage
- lcov --remove coverage/lcov.info 'lib/*/*.g.dart' 'lib/core/**' -o coverage/lcov.info
- genhtml coverage/lcov.info --output=coverage
```

If when run `flutter format --set-exit-if-changed lib test` must no file changed or Gitlab CI will return fail, and make sure **no error** or **warning** in this project. So before you push the project to remote you need run this in your local branch

```sh
flutter format lib test
flutter analyze lib test
```

##### 2. Build

Build stage have two jobs `build_android_staging` will run when **master** merge to **staging** branch and `build_android_production` will run when merge to **production** branch.

##### 3. Staging

Staging stage only run in **staging** branch and will distribute app to **Firebase App Distribution** for testing by QA to testing the app in staging flavor. In **Firebase App Distribution** make group with name Tester and add tester's emails.

##### 4. Internal Test

Internal test stage will distribute production app to internal test in Playstore

##### 5. Production

Production stage will promote app from internal test to production. You need run this manually after internal test app passed from testing in **Gitlab CI/CD**.

---

## Running Test🧪

To run all unit and widget tests use the following command:

```sh
flutter test --coverage
```

To view the generated coverage report you can use [lcov](https://github.com/linux-test-project/lcov).

```sh
# Remove core file and generated file to get actual coverage
lcov --remove coverage/lcov.info 'lib/*/*.g.dart' 'lib/core/**' -o coverage/lcov.info

# Generate Coverage Report
genhtml coverage/lcov.info -o coverage/

# Open Coverage Report
open coverage/index.html
```

---

## Integration Testing📱

### Firebase Test Lab

Go to the [Firebase Console](http://console.firebase.google.com/), and create a new project if you don’t have one already. Then navigate to **Quality > Test Lab**:


### Uploading an Android APK

Create an APK using Gradle:

```bash
pushd android
# flutter build generates files in android/ for building the app
flutter build apk --flavor staging -t lib/main_staging.dart
./gradlew app:assembleAndroidTest
./gradlew app:assembleDebug -Ptarget=integration_test/<name>_test.dart
popd
```

Where `<name>_test.dart` is the file created in the **Project Setup** section.

Drag the “debug” APK from `<flutter_project_directory>/build/app/outputs/apk/debug` into the **Android Robo Test** target on the web page. This starts a Robo test and allows you to run other tests:

Click **Run a test**, select the **Instrumentation** test type and drag the following two files:

- `<flutter_project_directory>/build/app/outputs/apk/debug/<file>.apk`
- `<flutter_project_directory>/build/app/outputs/apk/androidTest/debug/<file>.apk`

If a failure occurs, you can view the output by selecting the red icon

For more information read [Flutter Integration Firebase Test Lab](https://medium.com/flutterdevs/flutter-integration-tests-on-firebase-test-lab-b07bcd9f801f) or from flutter doc [Integration Testing](https://flutter.dev/docs/testing/integration-tests).

[Flutter integration tests on Firebase Test Lab](https://medium.com/flutterdevs/flutter-integration-tests-on-firebase-test-lab-b07bcd9f801f)

[Integration testing](https://flutter.dev/docs/testing/integration-tests)

### Integration Testing in Real Device

```bash
flutter drive --driver=test_driver/integration_test.dart --target=integration_test/app_test.dart
```

---

### QA Testing Staging App

We will use **Firebase App Distribution** to distribute staging app to Tester.
To add tester add emails in folder **firebase_app_distribution/testers.txt**, or add groups in folder **firebase_app_distribution/groups.txt**, add emails or groups divided by comma.

Example add testers:

```txt
tester1@mail.com, tester2@mail.com
```

Example add groups:

```txt
Testers, QA
```

Group tester need set up in **Firebase Console** go to **App Distribution > Testers & Groups** and add tester to the group.

---

## Working with Translations🌐

This project relies on [flutter_sheet_localization][flutter_sheet_localization_link] and read documentation of [flutter_sheet_localization_generator][flutter_sheet_localization_generator_link]. for more information.

### Usage

#### 1. Create a Google Sheet

Create a sheet with your translations (following the bellow format, [an example sheet is available here](https://docs.google.com/spreadsheets/d/1AcjI1BjmQpjlnPUZ7aVLbrnVR98xtATnSjU4CExM9fs/edit#gid=0)) :

![example](https://github.com/aloisdeniel/flutter_sheet_localization/raw/master/flutter_sheet_localization_generator/example.png)

Make sure that your sheet is shared :

![share](https://github.com/aloisdeniel/flutter_sheet_localization/raw/master/flutter_sheet_localization_generator/share.png)

Extract from the link the `DOCID` and `SHEETID` values : `https://docs.google.com/spreadsheets/d/<DOCID>/edit#gid=<SHEETID>`) :

#### 2. Declare a localization delegate

Declare the following `AppLocalizationsDelegate` class with the `SheetLocalization` annotation pointing to your sheet in a `lib/l10n/localization.dart` file :

```dart
import 'package:flutter/widgets.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_sheet_localization/flutter_sheet_localization.dart';

part 'localization.g.dart';

@SheetLocalization("DOCID", "SHEETID", 1) // <- See 1. to get DOCID and SHEETID
// the `1` is the generated version. You must increment it each time you want to regenerate
// a new version of the labels.
class AppLocalizationsDelegate
    extends LocalizationsDelegate<AppLocalizationsData> {
  const AppLocalizationsDelegate();

  @override
  bool isSupported(Locale locale) => localizedLabels.containsKey(locale);

  @override
  Future<AppLocalizationsData> load(Locale locale) =>
      SynchronousFuture<AppLocalizationsData>(localizedLabels[locale]!);
  @override
  bool shouldReload(AppLocalizationsDelegate old) => false;
}
```

#### 3. Generate your localizations

Run the following command to generate a `lib/l10n/localization.g.dart` file :

```sh
flutter packages pub run build_runner build
```

#### 4. Display your labels

```dart
import 'package:flutter_starter_project/core/l10n/localizations.dart';

final labels = context.localizations;

print(labels.dates.month.february);
print(labels.templated.hello(firstName: "World"));
print(labels.templated.contact(Gender.male, lastName: "John"));
```

## Generate Icon Android IOS

Generate launcher icon for android and ios

```shell
#OLD
flutter pub run flutter_launcher_icons:main -f flutter_launcher_icons*
```

```shell
#NEW
#development
dart run flutter_launcher_icons:main -f pubspec.yaml development 
#staging
dart run flutter_launcher_icons:main -f pubspec.yaml staging
#production
dart run flutter_launcher_icons:main -f pubspec.yaml production   
```


## Generate Splashscreen Android IOS

Generate splashscreen for android and ios

```shell
flutter pub run flutter_native_splash:create
```

[coverage_badge]: coverage_badge.svg
[flutter_sheet_localization_link]: https://pub.dev/packages/flutter_sheet_localization
[flutter_sheet_localization_generator_link]: https://pub.dev/packages/flutter_sheet_localization_generator
[internationalization_link]: https://flutter.dev/docs/development/accessibility-and-localization/internationalization
[license_badge]: https://img.shields.io/badge/license-MIT-blue.svg
[license_link]: https://opensource.org/licenses/MIT
[very_good_analysis_badge]: https://img.shields.io/badge/style-very_good_analysis-B22C89.svg
[very_good_analysis_link]: https://pub.dev/packages/very_good_analysis
[nero_lab_cli_link]: https://github.com/VeryGoodOpenSource/very_good_cli
