// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Vietnamese (`vi`).
class AppLocalizationsVi extends AppLocalizations {
  AppLocalizationsVi([String locale = 'vi']) : super(locale);

  @override
  String get serverError => 'Không thể kết nối đến máy chủ';

  @override
  String get offline => 'Mất kết nối Internet, vui lòng kiểm tra mạng của bạn';

  @override
  String get emailNotExist => 'Email không tồn tại';

  @override
  String get emailAlreadyInUse => 'Email đã được sử dụng';

  @override
  String get wrongPassword => 'Mật khẩu không chính xác';

  @override
  String get tooManyRequests =>
      'Bạn đã đăng nhập sai nhiều lần, vui lòng thử lại sau 30 phút';

  @override
  String get unexpected => 'Lỗi không xác định';

  @override
  String get wrongInput => 'Sai thông tin đầu vào';

  @override
  String get loginSuccess => 'Đăng nhập thành công';

  @override
  String get loginFailed => 'Đăng nhập thất bại, vui lòng thử lại';

  @override
  String get registerSuccess => 'Đăng ký thành công';

  @override
  String get registerFailed => 'Đăng ký thất bại, vui lòng thử lại';

  @override
  String get vietnamese => 'Tiếng Việt';

  @override
  String get american => 'Tiếng Anh';

  @override
  String get emptyPost => 'Nội dung bài viết không được để trống';

  @override
  String get wrongPostId => 'ID bài viết không hợp lệ';

  @override
  String get postNotExist => 'Bài viết không tồn tại';

  @override
  String get getAllPostFailed => 'Lấy danh sách bài viết thất bại';

  @override
  String get commentPostFailed => 'Bình luận bài viết thất bại';

  @override
  String get creatPostFailed => 'Tạo bài viết thất bại';

  @override
  String get deletePostFailed => 'Xóa bài viết thất bại';

  @override
  String get likePostFailed => 'Thích bài viết thất bại';

  @override
  String get unLikePostFailed => 'Bỏ thích bài viết thất bại';

  @override
  String get tokenExpired =>
      'Phiên đăng nhập đã hết hạn, vui lòng đăng nhập lại';

  @override
  String get invalidToken => 'Token không hợp lệ';

  @override
  String get tokenNotProvided => 'Token không được cung cấp hoặc hết hạn';

  @override
  String get invalidUserIdInToken => 'Người dùng không hợp lệ';

  @override
  String get passwordLabel => 'Mật khẩu';

  @override
  String get loginLabel => 'Đăng nhập';

  @override
  String get registerLabel => 'Đăng ký';

  @override
  String get invalidEmail => 'Email không hợp lệ';

  @override
  String get createAccount => 'Tạo tài khoản';

  @override
  String get passwordAtLeast => 'Mật khẩu phải nhiều hơn hoặc bằng 6 ký tự';

  @override
  String get emailAddressLabel => 'Địa chỉ email';

  @override
  String get fullNameLabel => 'Họ và tên';

  @override
  String get enterFullName => 'Vui lòng nhập tên người dùng';

  @override
  String get phoneNumberLabel => 'Số điện thoại';

  @override
  String get enterPhoneNumber => 'Vui lòng nhập số điện thoại';

  @override
  String get addressLabel => 'Địa chỉ';

  @override
  String get enterAddress => 'Please enter an address';

  @override
  String get confirmPasswordLabel => 'Mật khẩu xác thực';

  @override
  String get confirmPasswordMustBeSameAsPassword =>
      'Mật khẩu xác thực phải giống mật khẩu';

  @override
  String get genderLabel => 'Giới tính';

  @override
  String get selectGender => 'Vui lòng chọn giới tính';

  @override
  String get male => 'Nam';

  @override
  String get female => 'Nữ';

  @override
  String get other => 'Khác';

  @override
  String get errorSessionExpired => 'Phiên đăng nhập đã hết hạn';

  @override
  String get errorServerError => 'Đã xảy ra lỗi từ máy chủ';

  @override
  String get errorCacheError => 'Lỗi bộ nhớ đệm';

  @override
  String get errorNoConnection => 'Không có kết nối internet';

  @override
  String get errorUnexpected => 'Đã xảy ra lỗi không mong muốn';
}
