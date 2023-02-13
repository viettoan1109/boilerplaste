library home;

import 'dart:developer';

import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutterboilerplatev2/app/shared/widgets/file_recent.dart';
import 'package:flutterboilerplatev2/app/shared/widgets/storage_detail.dart';
import '../../shared/shared.dart';
import 'package:data_table_2/data_table_2.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter/foundation.dart' show kIsWeb;

import '../../shared/widgets/file_info_card_grid_view.dart';
import '../../shared/widgets/my_file.dart';

// binding
part 'home_binding.dart';

// controller
part 'home_controller.dart';

// screen
part 'home_screen.dart';
part 'home_responsive_screen.dart';

// tabs
part 'tabs/dashboard_tab.dart';
part 'tabs/calendar_tab.dart';
part 'tabs/email_tab.dart';
part 'tabs/profile_tab.dart';
part 'tabs/reports_tab.dart';
part 'tabs/setting_tab.dart';

// models
part '../../models/profile.dart';

// component
part 'components/active_project_card.dart';
part 'components/header.dart';
part 'components/overview_header.dart';
part 'components/profile_tile.dart';
part 'components/recent_messages.dart';
part 'components/sidebar.dart';
part 'components/team_member.dart';

enum HomePageTabs { dashboard, report, calendar, email, profile, setting }
