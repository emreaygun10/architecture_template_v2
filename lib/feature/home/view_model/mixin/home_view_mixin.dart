import 'package:architecture_template/feature/home/view/home_view.dart';
import 'package:architecture_template/product/navigation/app_router.dart';
import 'package:architecture_template/product/service/manager/product_network_manager.dart';
import 'package:architecture_template/product/state/base/base_state.dart';
import 'package:architecture_template/product/state/container/product_state_items.dart';
import 'package:auto_route/auto_route.dart';

mixin HomeViewMixin on BaseState<HomeView> {
  late final ProductNetworkManager productNetworkManager;

  @override
  void initState() {
    super.initState();
    productNetworkManager = ProductStateItems.productNetworkManager;
    productNetworkManager.listenErrorState(
      onErrorStatus: (value) {
        context.router.push(const HomeRoute());
      },
    );
  }
}
