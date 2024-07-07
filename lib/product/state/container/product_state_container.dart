import 'package:architecture_template/product/service/manager/product_network_manager.dart';
import 'package:get_it/get_it.dart';

final class ProductContainer {
  const ProductContainer._();
  static final _getIt = GetIt.I;

  /// use singleton pattern setup
  static void setup() {
    _getIt
        .registerSingleton<ProductNetworkManager>(ProductNetworkManager.base());
  }

  /// Read your dependency item for [ProductContainer]
  static T read<T extends Object>() => _getIt<T>();
}
