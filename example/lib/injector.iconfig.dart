// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:example/register_module.dart';
import 'package:example/services.dart';
import 'package:get_it/get_it.dart';

Future<void> $initGetIt(GetIt g, {String environment}) async {
  final registerModule = _$RegisterModule();
  final apiClient = await registerModule.apiClient;
  g.registerFactory<ApiClient>(() => apiClient);
  final apiClient1 = await registerModule.apiClient2;
  g.registerFactory<ApiClient>(() => apiClient1);
  g.registerFactory<BackendService>(() => BackendService());
  g.registerFactory<CategoriesService>(() => CategoriesService());
  g.registerFactoryParam<ProductService, String, int>(
          (varName, varTwo) => ProductService.create(varName, varTwo));
  g.registerFactory<ServiceA>(() => ServiceA());
  g.registerFactory<ServiceB>(() => ServiceB(g<ServiceA>()));
  g.registerFactory<Service3>(() => Service3(g<ServiceB>()));

  //Eager singletons must be registered in the right order
  if (environment == 'dev') {
    g.registerSingleton<TestClass>(TestClass());
  }
  g.registerSingleton<ComponentBloc>(
      ComponentBloc(g<ProductService>(), g<CategoriesService>()));
}

class _$RegisterModule extends RegisterModule {}
