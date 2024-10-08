import 'package:architecture_template/feature/home/view_model/mixin/home_view_mixin.dart';
import 'package:architecture_template/product/init/language/locale_keys.g.dart';
import 'package:architecture_template/product/state/base/base_state.dart';
import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:gen/gen.dart';
import 'package:kartal/kartal.dart';
import 'package:widgets/widgets.dart';

part 'widget/home_app_bar.dart';

@RoutePage()
final class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends BaseState<HomeView> with HomeViewMixin {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      floatingActionButton: FloatingActionButton(onPressed: () {
        SuccessDialog.show(title: 'Success Dialog', context: context);
      }),
      appBar: const _HomeAppBar(),
      body: SizedBox(
        height: context.sized.height,
        width: context.sized.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Assets.lotties.kupa.toGetLottie(),
            ElevatedButton(
              onPressed: () {
                productViewModel.changeThemeMode(ThemeMode.dark);
              },
              child: const Text(LocaleKeys.general_buttons_save).tr(),
            ),
          ],
        ),
      ),
    );
  }
}
