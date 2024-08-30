import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wheel_crm/core/app/router/app_routes.gr.dart';
import 'package:wheel_crm/features/on_board/data/model/on_board_model.dart';
import 'package:wheel_crm/features/on_board/domain/bloc/on_board_bloc.dart';
import 'package:wheel_crm/gen/fonts.gen.dart';
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
              height: 40,
            ),
            const Text(
              'Wheel',
              style: TextStyle(
                  color: Color(0xFF0029FF), fontFamily: FontFamily.raleway, fontSize: 60, fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 40,
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
                      Container(
                        width: 280,
                        height: 280,
                        child: Image.asset(contents[i].image),
                      ),
                      const SizedBox(
                        height: 45,
                      ),
                      Column(
                        children: [
                          Text(
                            contents[i].title,
                            style: const TextStyle(
                              fontFamily: FontFamily.inter,
                              fontWeight: FontWeight.bold,
                              fontSize: 28,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 53.0, vertical: 15),
                            child: Text(
                              contents[i].description,
                              textAlign: TextAlign.center,
                              style: const TextStyle(fontFamily: FontFamily.inter, fontSize: 18, color: Colors.grey),
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
                    children: List.generate(contents.length, (index) => buildDot(index, context)),
                  ),
                  const SizedBox(
                    height: 80,
                  ),
                  Builder(
                    builder: (context) {
                      return Container(
                        width: double.infinity,
                        margin: const EdgeInsets.symmetric(horizontal: 16),
                        child: TextButton(
                          style: ButtonStyle(
                              backgroundColor: const WidgetStatePropertyAll(Color(0xFF0029FF)),
                              shape: WidgetStateProperty.all<RoundedRectangleBorder>(RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(8.0)))),
                          onPressed: () {
                            context.read<OnBoardBloc>().add(const OnBoardEvent.isShown(isShown: true));
                            context.router.replace(const AuthRoute());
                            // context.router.popAndPush(const AuthRoute());
                          },
                          child: const Text(
                            'Начать',
                            style: TextStyle(fontFamily: FontFamily.raleway, color: Colors.white),
                          ),
                        ),
                      );
                    }
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    ),
);
  }

  Container buildDot(int index, BuildContext context) {
    return Container(
      height: 13,
      width: 13,
      margin: const EdgeInsets.only(right: 5),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20), color: _currentIndex == index ? const Color(0xff0029FF) : Colors.grey),
    );
  }
}
