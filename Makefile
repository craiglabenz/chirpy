# Server
server/build:
	cd chirpy_server && serverpod generate

server/migration:
	cd chirpy_server && serverpod create-migration

server/migrate:
	cd chirpy_server && dart bin/main.dart --role maintenance --apply-migrations

server/run:
	cd chirpy_server && dart bin/main.dart

# Flutter app
app/build:
	cd chirpy_flutter && dart run build_runner build --delete-conflicting-outputs
	cd chirpy_flutter && flutter pub get
	
app/run:
	cd chirpy_flutter && flutter run -d macos --target lib/main_development.dart