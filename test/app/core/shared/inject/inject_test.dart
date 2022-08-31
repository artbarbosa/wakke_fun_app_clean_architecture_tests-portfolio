import 'package:flutter_test/flutter_test.dart';
import 'package:get_it/get_it.dart';
import 'package:wakke_fun_app/app/core/shared/inject/inject.dart';
import 'package:wakke_fun_app/app/core/shared/ui/controllers/custom_bottom_navigation_bar_controller.dart';

void main() {
  setUpAll(() async {
    await Inject.initialize();
  });
  // test('Should return Instance HttpClientMock', () async {
  //   final result = GetIt.I<IHttpService>();

  //   expect(result, isA<IHttpService>());
  //   expect(result, isA<HttpClientMock>());
  // });
  // test('Should return Instance IProductRepository', () async {
  //   final result = GetIt.I<IProductRepository>();

  //   expect(result, isA<IProductRepository>());
  //   expect(result, isA<ProductRepository>());
  // });

  // test('Should return Instance IProductDataSource', () async {
  //   final result = GetIt.I<IProductDataSource>();

  //   expect(result, isA<IProductDataSource>());
  //   expect(result, isA<ProductDataSource>());
  // });

  // test('Should return Instance IGetAllProductsUseCase', () async {
  //   final result = GetIt.I<IGetAllProductsUseCase>();

  //   expect(result, isA<IGetAllProductsUseCase>());
  //   expect(result, isA<GetAllProductsUseCase>());
  // });

  // test('Should return Instance ICalculatedTotalCartUseCase', () async {
  //   final result = GetIt.I<ICalculatedTotalCartUseCase>();

  //   expect(result, isA<ICalculatedTotalCartUseCase>());
  //   expect(result, isA<CalculatedTotalCartUseCase>());
  // });

  // test('Should return Instance IDecrementItemInCartUseCase', () async {
  //   final result = GetIt.I<IDecrementItemInCartUseCase>();

  //   expect(result, isA<IDecrementItemInCartUseCase>());
  //   expect(result, isA<DecrementItemInCartUseCase>());
  // });

  // test('Should return Instance IIcrementItemInCartUseCase', () async {
  //   final result = GetIt.I<IIcrementItemInCartUseCase>();

  //   expect(result, isA<IIcrementItemInCartUseCase>());
  //   expect(result, isA<IcrementItemInCartUseCase>());
  // });

  // test('Should return Instance IRemoveItemInCartUseCase', () async {
  //   final result = GetIt.I<IRemoveItemInCartUseCase>();

  //   expect(result, isA<IRemoveItemInCartUseCase>());
  //   expect(result, isA<RemoveItemInCartUseCase>());
  // });

  // test('Should return Instance IAddItemInCartUseCase', () async {
  //   final result = GetIt.I<IAddItemInCartUseCase>();

  //   expect(result, isA<IAddItemInCartUseCase>());
  //   expect(result, isA<AddItemInCartUseCase>());
  // });

  // test('Should return Instance CleanCartUseCase', () async {
  //   final result = GetIt.I<ICleanCartUseCase>();

  //   expect(result, isA<ICleanCartUseCase>());
  //   expect(result, isA<CleanCartUseCase>());
  // });

  // test('Should return Instance CustomBadgeController', () async {
  //   final result = GetIt.I<CustomBadgeController>();

  //   expect(result, isA<CustomBadgeController>());
  // });

  // test('Should return Instance HomeController', () async {
  //   final result = GetIt.I<HomeController>();

  //   expect(result, isA<HomeController>());
  // });

  // test('Should return Instance SplashController', () async {
  //   final result = GetIt.I<SplashController>();

  //   expect(result, isA<SplashController>());
  // });

  // test('Should return Instance CartController', () async {
  //   final result = GetIt.I<CartController>();

  //   expect(result, isA<CartController>());
  // });

  // test('Should return Instance DetailController', () async {
  //   final result = GetIt.I<DetailController>();

  //   expect(result, isA<DetailController>());
  // });

  test('Should return Instance CustomBottomNavigationBarController', () async {
    final result = GetIt.I<CustomBottomNavigationBarController>();

    expect(result, isA<CustomBottomNavigationBarController>());
  });
}
