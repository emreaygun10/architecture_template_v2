import 'package:architecture_template/product/state/container/product_state_items.dart';
import 'package:architecture_template/product/state/view_model/product_view_model.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

final class StateInitialize extends StatelessWidget {
  const StateInitialize({super.key, required this.child});
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<ProductViewModel>.value(
          value: ProductStateItems.productViewModel,
        ),
      ],
      child: child,
    );
  }
}
