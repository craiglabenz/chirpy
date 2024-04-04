# Server
generate:
	cd chirpy_server && serverpod generate

migration:
	cd chirpy_server && serverpod create-migration

migrate:
	cd chirpy_server && dart bin/main.dart --role maintenance --apply-migrations

server:
	cd chirpy_server && dart bin/main.dart

# Flutter app
build:
	cd chirpy_flutter && dart run build_runner build --delete-conflicting-outputs
	cd chirpy_flutter && flutter pub get
	
app:
	cd chirpy_flutter && flutter run -d macos --target lib/main_development.dart