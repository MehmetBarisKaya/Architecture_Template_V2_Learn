import 'package:architecture_template_v2/feature/home/view/mixin/home_view_mixin.dart';
import 'package:architecture_template_v2/product/init/config/app_environment.dart';
import 'package:architecture_template_v2/product/init/language/locale_keys.g.dart';
import 'package:architecture_template_v2/product/init/product_localization.dart';
import 'package:architecture_template_v2/product/navigation/app_router.dart';
import 'package:architecture_template_v2/product/utility/constant/enums/locales.dart';
import 'package:auto_route/auto_route.dart';
import 'package:common/common.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:gen/gen.dart';
import 'package:kartal/kartal.dart';
import 'package:uikit_widgets/uikit_widgets.dart';

part 'widget/home_app_bar.dart';

@RoutePage()

/// App Home View
class HomeView extends StatefulWidget {
  /// The line  is defining a constructor for the `HomeView` class.
  const HomeView({super.key});
  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> with HomeViewMixin {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          SuccessDialog.show(title: 'title', context: context);
        },
        child: const Icon(Icons.add),
      ),
      appBar: const _HomeAppBar(),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ResponsiveAllView(
              phone: Assets.lottie.animZombie.lottie(
                package: 'gen',
              ),
              tablet: Text(AppEnvironmentItems.baseUrl.value),
              desktop: Assets.images.imgFlags.image(
                package: 'gen',
              ),
            ),
            Text(''.ext.appName),
            const CustomCachedNetworkImage(
              imageUrl: 'http://',
              size: Size(100, 100),
            ),
            Assets.lottie.animZombie.lottie(
              package: 'gen',
            ),
            Assets.images.imgFlags.image(
              package: 'gen',
            ),
            const Text(LocaleKeys.home_title).tr(),
            ElevatedButton(
              onPressed: () async {
                await ProductLocalization.updateLanguage(
                  context: context,
                  value: Locales.en,
                );
                setState(() {});
              },
              child: const Text('English'),
            ),
            ElevatedButton(
              onPressed: () async {
                final response =
                    await context.router.push<bool>(HomeDetailRoute(id: '1'));
                // ignore: avoid_print
                print(response);
              },
              child: Text(AppEnvironmentItems.baseUrl.value),
            ),
          ],
        ),
      ),
    );
  }
}
