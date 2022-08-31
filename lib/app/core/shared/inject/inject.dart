import 'package:get_it/get_it.dart';

import '../ui/controllers/custom_bottom_navigation_bar_controller.dart';

class Inject {
  static initialize() {
    final getIt = GetIt.I;

    // getIt.registerLazySingleton<IHttpService>(() => HttpClientMock());

    // getIt.registerLazySingleton<IProductRepository>(
    //     () => ProductRepository(datasource: getIt()));

    // getIt.registerLazySingleton<IProductDataSource>(
    //     () => ProductDataSource(httpClient: getIt()));

    // getIt.registerFactory<IGetAllProductsUseCase>(
    //   () => GetAllProductsUseCase(getIt()),
    // );

    // getIt.registerFactory<ICalculatedTotalCartUseCase>(
    //   () => CalculatedTotalCartUseCase(),
    // );

    // getIt.registerFactory<IDecrementItemInCartUseCase>(
    //   () => DecrementItemInCartUseCase(),
    // );
    // getIt.registerFactory<IIcrementItemInCartUseCase>(
    //   () => IcrementItemInCartUseCase(),
    // );

    // getIt.registerFactory<IRemoveItemInCartUseCase>(
    //   () => RemoveItemInCartUseCase(),
    // );

    // getIt.registerFactory<IAddItemInCartUseCase>(
    //   () => AddItemInCartUseCase(),
    // );

    // getIt.registerFactory<ICleanCartUseCase>(
    //   () => CleanCartUseCase(),
    // );

    // getIt.registerLazySingleton<CustomBadgeController>(
    //   () => CustomBadgeController(),
    // );

    // getIt.registerFactory<HomeController>(
    //   () => HomeController(getIt()),
    // );
    // getIt.registerFactory<SplashController>(
    //   () => SplashController(),
    // );

    // getIt.registerSingleton<CartController>(
    //   CartController(
    //     badgeController: getIt(),
    //     cleanCartUseCase: getIt(),
    //     calculatedTotalCartUseCase: getIt(),
    //     decrementItemInCartUseCase: getIt(),
    //     icrementItemInCartUseCase: getIt(),
    //     removeItemInCartUseCase: getIt(),
    //   ),
    // );

    // getIt.registerFactory<DetailController>(
    //   () => DetailController(
    //     badgeController: getIt(),
    //     addItemInCartUseCase: getIt(),
    //     cartController: getIt(),
    //   ),
    // );

    getIt.registerLazySingleton<CustomBottomNavigationBarController>(
      () => CustomBottomNavigationBarController(0),
    );
  }
}
