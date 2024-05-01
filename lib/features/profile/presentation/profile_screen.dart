import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:io_ui/io_ui.dart';
import 'package:wheel_crm/core/network/entity/state_status.dart';
import 'package:wheel_crm/features/profile/domain/bloc/profile_bloc.dart';
import 'package:wheel_crm/features/profile/presentation/widgets/change_password.dart';
import 'package:wheel_crm/gen/assets.gen.dart';
import 'package:wheel_crm/injection/injection.dart';

@RoutePage()
class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => getIt<ProfileBloc>()
        ..add(const ProfileEvent.getProfile())
        ..add(const ProfileEvent.getProfileTeam()),
      child: Scaffold(
        backgroundColor: AppColors.kPrimary,
        body: SafeArea(
          child: BlocBuilder<ProfileBloc, ProfileState>(
            builder: (context, state) {
              if (state.stateStatus is SuccessStatus) {
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: AppProps.kPageMargin,
                        vertical: AppProps.kBigMargin,
                      ),
                      child: Text(
                        'Настройки профиля',
                        style: AppTextStyle.titleStyle.copyWith(color: AppColors.kWhite),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        padding: const EdgeInsets.all(AppProps.kPageMargin),
                        decoration: const BoxDecoration(
                          color: AppColors.kWhite,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(AppProps.kTwentyRadius),
                            topRight: Radius.circular(AppProps.kTwentyRadius),
                          ),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  height: 100,
                                  width: 100,
                                  decoration: const BoxDecoration(
                                    color: AppColors.kGreyProfile,
                                    borderRadius: BorderRadius.all(Radius.circular(AppProps.kDefaultBorderRadius)),
                                  ),
                                  child: Assets.icons.icProfile.svg(),
                                ),
                                const SizedBox(width: AppProps.kPageMargin),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      state.profileEntity?.role == 'Owner' ? 'Владелец' : 'Сотрудник',
                                      style: AppTextStyle.bodyLargeStyle,
                                    ),
                                    const SizedBox(height: AppProps.kSmallMargin),
                                    if (state.profileEntity?.firstName != null && state.profileEntity?.lastName != null)
                                      Text(
                                        '${state.profileEntity?.firstName} ${state.profileEntity?.lastName}',
                                        style: AppTextStyle.mediumStyle,
                                      ),
                                  ],
                                ),
                              ],
                            ),
                            _divider(),
                            state.profileEntity?.role == 'Owner' ? _ownerColumn(state) : _employeeColumn(state),
                            if (state.teams.isNotEmpty && state.profileEntity?.role == 'Owner') _divider(),
                            const Text(
                              'Пароль',
                              style: AppTextStyle.titleStyle,
                            ),
                            const SizedBox(height: AppProps.kPageMargin),
                            _changePassword(context),
                          ],
                        ),
                      ),
                    ),
                  ],
                );
              } else if (state.stateStatus is LoadingStatus) {
                return const Center(child: CircularProgressIndicator(color: AppColors.kPrimary));
              }

              return const Center(
                child: Text(
                  'В разработке',
                  style: AppTextStyle.bodyLargeStyle,
                ),
              );
            },
          ),
        ),
      ),
    );
  }

  Widget _titleWithCheckBox(String title, bool value) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: AppTextStyle.bodyLargeStyle,
        ),
        AppCheckBox(
          selected: value,
          unSelectedSvgPicture: Assets.icons.icCheckBox.svg(),
          selectedSvgPicture: Assets.icons.icCheckBoxEnable.svg(),
        ),
      ],
    );
  }

  Widget _divider() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: AppProps.kPageMargin),
        Container(
          height: 1,
          decoration: const BoxDecoration(color: Color(0xFFCFD0D1)),
        ),
        const SizedBox(height: AppProps.kPageMargin),
      ],
    );
  }

  Widget _employeeColumn(ProfileState state) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text('Доступные функции', style: AppTextStyle.titleStyle),
        const SizedBox(height: AppProps.kMediumMargin),
        _titleWithCheckBox(
          'Создание приемки',
          state.profileEntity?.functions?.createAcceptance ?? false,
        ),
        _titleWithCheckBox(
          'Создание продаж',
          state.profileEntity?.functions?.createSales ?? false,
        ),
        _titleWithCheckBox(
          'Возврат',
          state.profileEntity?.functions?.returned ?? false,
        ),
        _titleWithCheckBox(
          'Брак',
          state.profileEntity?.functions?.defect ?? false,
        ),
      ],
    );
  }

  Widget _ownerColumn(ProfileState state) {
    final List<Widget> teams = [];
    for (var element in state.teams) {
      teams.add(_containerWithSettings('${element.firstName} ${element.lastName}'));
    }

    return teams.isNotEmpty
        ? Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text('Настройки сотрудников', style: AppTextStyle.titleStyle),
              const SizedBox(height: AppProps.kMediumMargin),
              ...teams,
            ],
          )
        : const SizedBox();
  }

  Widget _containerWithSettings(String title) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: AppProps.kSmallMarginX2, horizontal: AppProps.kSmallMargin),
      decoration: BoxDecoration(
        border: Border.all(color: AppColors.kGreyStroke),
        borderRadius: BorderRadius.circular(AppProps.kSmallMargin),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: AppTextStyle.bodyLargeStyle.copyWith(fontWeight: FontWeight.w400),
          ),
          const Icon(
            Icons.settings,
            color: AppColors.kPrimary,
          )
        ],
      ),
    );
  }

  Widget _changePassword(BuildContext context) {
    return GestureDetector(
      onTap: () {
        AppDialog.show(
          context,
          child: const ChangePassword(),
        );
      },
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: AppProps.kSmallMarginX2, horizontal: AppProps.kSmallMargin),
        decoration: BoxDecoration(
          border: Border.all(color: AppColors.kGreyStroke),
          borderRadius: BorderRadius.circular(AppProps.kSmallMargin),
        ),
        child: const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Изменить пароль',
              style: AppTextStyle.titleStyle,
            ),
            Icon(
              Icons.keyboard_arrow_right_sharp,
              color: AppColors.kPrimary,
            )
          ],
        ),
      ),
    );
  }
}
