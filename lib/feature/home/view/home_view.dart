import 'package:architecture_template_v2/feature/home/view/mixin/home_view_mixin.dart';
import 'package:architecture_template_v2/feature/home/view/widget/home_post_list.dart';
import 'package:architecture_template_v2/feature/home/viewmodel/home_view_model.dart';
import 'package:architecture_template_v2/feature/home/viewmodel/state/home_view_state.dart';
import 'package:architecture_template_v2/product/state/base/base_state.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gen/gen.dart';

part 'widget/home_app_bar.dart';

@RoutePage()

/// App Home View
class HomeView extends StatefulWidget {
  /// The line  is defining a constructor for the `HomeView` class.
  const HomeView({super.key});
  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends BaseState<HomeView> with HomeViewMixin {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => homeViewModel,
      child: Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () async {
            productViewModel.changeThemeMode(ThemeMode.dark);
            await homeViewModel.getPosts();
            //SuccessDialog.show(title: 'title', context: context);
          },
          child: const Icon(Icons.add),
        ),
        appBar: const _HomeAppBar(),
        body: const Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(child: PostBlocList()),
          ],
        ),
      ),
    );
  }
}

class PostBlocList extends StatelessWidget {
  const PostBlocList({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<HomeViewModel, HomeViewState>(
      listener: (context, state) {
        final items = state.posts;
        if (items == null) return;
      },
      child: BlocSelector<HomeViewModel, HomeViewState, List<PostModel>>(
        selector: (state) {
          return state.posts ?? [];
        },
        builder: (context, state) {
          if (state.isEmpty) return const SizedBox.shrink();
          return HomePostList(
            posts: state,
          );
        },
      ),
    );
  }
}
