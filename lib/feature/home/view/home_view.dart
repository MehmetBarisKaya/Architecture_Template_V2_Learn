import 'package:architecture_template_v2/feature/home/view/mixin/home_view_mixin.dart';
import 'package:architecture_template_v2/product/init/config/app_environment.dart';
import 'package:architecture_template_v2/product/init/language/locale_keys.g.dart';
import 'package:architecture_template_v2/product/init/product_localization.dart';
import 'package:architecture_template_v2/product/utility/constant/enums/locales.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:gen/gen.dart';

part 'widget/home_app_bar.dart';

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
      appBar: const _HomeAppBar(),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
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
              onPressed: () {},
              child: Text(AppEnvironmentItems.baseUrl.value),
            ),
          ],
        ),
      ),
    );
  }
}
