import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

import 'service_locator.config.dart';

GetIt sl = GetIt.instance;

@InjectableInit()
Future<void> initGetIt() async => $initGetIt(sl);
