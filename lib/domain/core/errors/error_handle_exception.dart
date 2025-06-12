import '../../../l10n/app_localizations.dart';
import '../failures/base_failure.dart';

class ErrorHandleException {
  static String getLocalizedErrorMessage(BaseFailure failure, AppLocalizations l10n) {
    return switch (failure) {
      SessionExpired() => l10n.errorSessionExpired,
      FromServerException(serverMessage: final serverMessage) =>
        serverMessage?.isNotEmpty == true ? serverMessage! : l10n.errorServerError,
      FromCacheException(cacheMessage: final cacheMessage) =>
        cacheMessage?.isNotEmpty == true ? cacheMessage! : l10n.errorCacheError,
      Offline() => l10n.errorNoConnection,
      _ => l10n.errorUnexpected,
    };
  }

  static String getLocalizedErrorByCode(ErrorCode code, AppLocalizations l10n) {
    return switch (code) {
      ErrorCode.sessionExpired => l10n.errorSessionExpired,
      ErrorCode.serverError => l10n.errorServerError,
      ErrorCode.cacheError => l10n.errorCacheError,
      ErrorCode.noConnection => l10n.errorNoConnection,
      ErrorCode.unexpected => l10n.errorUnexpected,
    };
  }
}
