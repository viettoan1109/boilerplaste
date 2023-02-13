library shared;

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:intl/intl.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:wave/config.dart';
import 'package:wave/wave.dart';

// constants
part 'constants/app_constants.dart';
part 'constants/assets_path.dart';

// utils/helpers
part 'utils/helpers/string_helper.dart';
part 'utils/helpers/type.dart';
part 'utils/helpers/extension.dart';
part 'utils/helpers/focus.dart';

// utils/mixins
part 'utils/mixins/navigation_mixin.dart';
part 'utils/mixins/validation_input_mixin.dart';

// utils/services
part 'utils/services/local_storage_services.dart';
part 'utils/services/native_api_services.dart';

// widgets
part 'widgets/chatting_card.dart';
part 'widgets/get_premium_card.dart';
part 'widgets/list_profile_image.dart';
part 'widgets/progress_card.dart';
part 'widgets/progress_report_card.dart';
part 'widgets/project_card.dart';
part 'widgets/responsive_builder.dart';
part 'widgets/search_field.dart';
part 'widgets/selection_button.dart';
part 'widgets/task_card.dart';
part 'widgets/today_text.dart';
part 'widgets/upgrade_premium_card.dart';
part 'widgets/app_bottomshet.dart';
part 'widgets/app_dialog.dart';
part 'widgets/app_snackbar.dart';
part 'widgets/common_widget.dart';
part 'widgets/gradient_background.dart';
part 'widgets/gradient_button.dart';
part 'widgets/input_field.dart';
part 'widgets/app_check_box.dart';
part 'widgets/app_button.dart';
