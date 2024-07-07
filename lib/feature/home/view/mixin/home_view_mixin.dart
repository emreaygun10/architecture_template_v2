import 'package:architecture_template/feature/home/view/home_view.dart';
import 'package:architecture_template/product/navigation/app_router.dart';
import 'package:architecture_template/product/service/manager/product_network_manager.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

mixin HomeViewMixin on State<HomeView> {
  late final ProductNetworkManager productNetworkManager;

  @override
  void initState() {
    super.initState();
    productNetworkManager = ProductNetworkManager.base();
    productNetworkManager.listenErrorState(
      onErrorStatus: (value) {
        context.router.push(HomeRoute());
      },
    );
  }
}
