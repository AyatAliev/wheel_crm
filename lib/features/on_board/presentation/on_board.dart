import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:io_ui/io_ui.dart';
import 'package:wheel_crm/core/app/router/app_routes.gr.dart';
import 'package:wheel_crm/features/on_board/data/model/on_board_model.dart';
import 'package:wheel_crm/features/on_board/domain/bloc/on_board_bloc.dart';
import 'package:wheel_crm/features/on_board/presentation/build_dot.dart';
import 'package:wheel_crm/gen/fonts.gen.dart';
import 'package:wheel_crm/gen/strings.g.dart';
import 'package:wheel_crm/injection/injection.dart';

@RoutePage()
class OnBoardScreen extends StatefulWidget {
  const OnBoardScreen({super.key});

  @override
  State<OnBoardScreen> createState() => _OnBoardScreenState();
}

class _OnBoardScreenState extends State<OnBoardScreen> {
  late PageController _pageController;
  int _currentIndex = 0;

  @override
  void initState() {
    _pageController = PageController(initialPage: _currentIndex);
    super.initState();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<OnBoardBloc>(),
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(
                height: AppProps.kForty,
              ),
              const Text(
                'Wheel',
                style: TextStyle(
                    color: AppColors.kBlueDark,
                    fontFamily: FontFamily.raleway,
                    fontSize: AppProps.kSixty,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: AppProps.kForty,
              ),
              Expanded(
                flex: 3,
                child: PageView.builder(
                  onPageChanged: (int index) {
                    setState(() {
                      _currentIndex = index;
                    });
                  },
                  itemCount: contents.length,
                  itemBuilder: (_, i) {
                    return Column(
                      children: [
                        SizedBox(
                          width: 280,
                          height: 280,
                          child: Image.asset(contents[i].image),
                        ),
                        const SizedBox(height: AppProps.kPageMarginX3),
                        Column(
                          children: [
                            Text(contents[i].title,
                                style: AppTextStyle.heading1Style.copyWith(
                                  fontFamily: FontFamily.inter,
                                  fontWeight: FontWeight.w700,
                                  fontSize: AppProps.kTwentyEight,
                                )),
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                horizontal: AppProps.kFiftySix,
                                vertical: AppProps.kDefaultBorderRadius,
                              ),
                              child: Text(
                                contents[i].description,
                                textAlign: TextAlign.center,
                                style: AppTextStyle.titleStyle.copyWith(
                                    color: AppColors.kGrey,
                                    fontFamily: FontFamily.inter,
                                    fontWeight: FontWeight.normal),
                              ),
                            ),
                          ],
                        ),
                      ],
                    );
                  },
                ),
              ),
              Expanded(
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: List.generate(contents.length, (index) => buildDot(_currentIndex, index, context)),
                    ),
                    const SizedBox(height: AppProps.kPageMarginX5),
                    Builder(builder: (context) {
                      return Container(
                        width: double.infinity,
                        margin: const EdgeInsets.symmetric(horizontal: 16),
                        child: TextButton(
                          style: ButtonStyle(
                              backgroundColor: const WidgetStatePropertyAll(Color(0xFF0029FF)),
                              shape: WidgetStateProperty.all<RoundedRectangleBorder>(
                                  RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.0)))),
                          onPressed: () {
                            context.read<OnBoardBloc>().add(const OnBoardEvent.isShown(isShown: true));
                            context.router.replace(const AuthRoute());
                          },
                          child: Text(
                            t.start,
                            style: AppTextStyle.mediumStyle.copyWith(
                              color: AppColors.kWhite,
                              fontSize: 16,
                            ),
                          ),
                        ),
                      );
                    }),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
