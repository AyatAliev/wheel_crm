library io_ui;

import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:intl/intl.dart';
import 'package:io_ui/gen/fonts.gen.dart';
import 'package:logger/logger.dart';

 /// Utils
part 'src/utils/debugging/logcat.dart';
part 'src/utils/extension/logic_ext.dart';
part 'src/utils/extension/string_ext.dart';
part 'src/utils/extension/time_ext.dart';
part 'src/utils/extension/widget_ext.dart';
part 'src/utils/input_validator/input_validation_mixins.dart';
part 'src/utils/input_validator/input_validator_model.dart';

/// Widgets
part 'src/widgets/buttons/app_button.dart';
part 'src/widgets/check_box/app_check_box.dart';
part 'src/widgets/inputs/app_input.dart';
part 'src/widgets/snackbars/app_snackbar.dart';
part 'src/widgets/layout/infinite_list_pagination.dart';
part 'src/widgets/dropdown/app_dropdown_button.dart';
part 'src/widgets/bottom_sheets/app_bottom_sheet.dart';
part 'src/widgets/dialogs/app_dialog.dart';
part 'src/widgets/dialogs/app_date_picker.dart';

/// Shared
part 'src/shared/app_colors.dart';
part 'src/shared/app_props.dart';
part 'src/shared/app_styles.dart';

/// Enum
part 'src/enum/date_format_enum.dart';