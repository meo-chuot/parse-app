import 'package:flutter/widgets.dart';
import 'package:app/services/log_service.dart';
import 'package:app/ui/screens/base_page.dart';

abstract class BaseState<Page extends BasePage> extends State<Page> {
  final LogService log = LogService.getInstance();
}
