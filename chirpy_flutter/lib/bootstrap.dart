import 'dart:async';
import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:chirpy_client/chirpy_client.dart';
import 'package:chirpy_flutter/data/data.dart';
import 'package:flutter/widgets.dart';
import 'package:get_it/get_it.dart';
import 'package:serverpod_auth_shared_flutter/serverpod_auth_shared_flutter.dart';
import 'package:chirpy_flutter/dependency_injection.dart';

class AppBlocObserver extends BlocObserver {
  const AppBlocObserver();

  @override
  void onChange(BlocBase<dynamic> bloc, Change<dynamic> change) {
    super.onChange(bloc, change);
    log('onChange(${bloc.runtimeType}, $change)');
  }

  @override
  void onError(BlocBase<dynamic> bloc, Object error, StackTrace stackTrace) {
    log('onError(${bloc.runtimeType}, $error, $stackTrace)');
    super.onError(bloc, error, stackTrace);
  }
}

Future<void> bootstrap(FutureOr<Widget> Function() builder) async {
  FlutterError.onError = (details) {
    log(details.exceptionAsString(), stackTrace: details.stack);
  };

  Bloc.observer = const AppBlocObserver();

  // Add cross-flavor configuration here

  GetIt.I.registerSingleton<ModelBindings<Post>>(const PostBindings());
  configureDependencies();
  await GetIt.I<SessionManager>()
    ..initialize();
  runApp(await builder());
}
