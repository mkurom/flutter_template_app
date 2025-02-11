.PHONY: build run run_dev run_stg run_pro build_dev build_stg build_pro repair pub clean test

# freezed, riverpod generate用
build:
	flutter pub run build_runner build --delete-conflicting-outputs

# flutter run command
run_dev:
	flutter run --dart-define-from-file=dart_defines/dev.json

run_stg:
	flutter run --dart-define-from-file=dart_defines/stg.json

run_pro:
	flutter run --dart-define-from-file=dart_defines/pro.json

# flutter build command
build_ios_dev:
	flutter build ios --dart-define-from-file=dart_defines/dev.json

build_ios_stg:
	flutter build ios --dart-define-from-file=dart_defines/stg.json

build_ios:
	flutter build ios --dart-define-from-file=dart_defines/pro.json

build_android_dev:
	flutter build appbundle --flavor=dev --dart-define-from-file=dart_defines/dev.json

build_android_stg:
	flutter build appbundle --flavor=stg --dart-define-from-file=dart_defines/stg.json

build_android:
	flutter build appbundle --flavor=pro --dart-define-from-file=dart_defines/pro.json

# repair command
repair:
	flutter pub cache repair

pub:
	flutter pub add $(p)

clean:
	flutter clean

test:
	flutter test ${f}

# splash screen
splash_create:
	flutter clean
	flutter pub get
	flutter pub run flutter_native_splash:create

splash_remove:
	flutter clean
	flutter pub get
	flutter pub run flutter_native_splash:remove

# launcher app icon
launcher:
	flutter pub get
	flutter pub run flutter_launcher_icons