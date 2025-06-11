import '../../../infrastructure/core/di/infrastructure_injection.dart';
import '../theme/app_themes.dart';
import '../theme/app_sizes.dart';

mixin ResourcesApp {
  final appSizes = injector<AppSizes>();
  final appColors = injector<AppThemes>();
}
