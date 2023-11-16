import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:kmovie/utils/screen_util.dart';

@RoutePage()
class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();
  final List<String> _listIcon = [
    'lib/assets/images/4g.png',
    'lib/assets/images/google.png',
    'lib/assets/images/fb.png',
    'lib/assets/images/apple.png'
  ];
  final String _dummyData = '''
1. Quyền sở hữu Dịch vụ
- Dịch vụ này được phát triển và sở hữu bởi Tập đoàn Công nghiệp - Viễn thông Quân đội, tất cả các quyền sở hữu trí tuệ liên quan đến Dịch vụ (bao gồm nhưng không giới hạn mã nguồn, hình ảnh, dữ liệu, thông tin, nội dung chứa đựng trong Dịch vụ; các sửa đổi bổ sung, cập nhật của Dịch vụ) và các tài liệu hướng dẫn liên quan (nếu có) sẽ thuộc quyền sở hữu duy nhất bởi Tập đoàn Công nghiệp - Viễn thông Quân đội và không cá nhân, tổ chức nào được phép sao chép, tái tạo, phân phối, hoặc hình thức khác xâm phạm tới quyền của chủ sở hữu nếu không có sự đồng ý và cho phép bằng văn bản của Tập đoàn Công nghiệp - Viễn thông Quân đội.
- Để sử dụng Dịch vụ bạn phải tạo một tài khoản theo hướng dẫn của chúng tôi, bạn cam kết rằng việc sử dụng tài khoản phải tuân thủ các quy định của Tập đoàn Công nghiệp - Viễn thông Quân đội, đồng thời tất cả các thông tin bạn cung cấp cho chúng tôi là chính xác, đầy đủ tại thời điểm được yêu cầu. 
- Mọi quyền lợi và nghĩa vụ của bạn sẽ căn cứ trên thông tin tài khoản của bạn đã đăng ký, do vậy nếu có bất kỳ thông tin sai lệch nào chúng tôi sẽ không chịu trách nhiệm trong trường hợp thông tin đó làm ảnh hướng hoặc hạn chế quyền lợi của bạn.
- Với các khách hàng không có bất kỳ gói TV360 nào có thể xem các nội dung miễn phí trên TV360.
- Bạn có quyền sử dụng Dịch vụ TV360 và các dịch vụ khác mà chúng tôi cung cấp, tuy nhiên việc sử dụng đó sẽ không bao gồm các hành vi sau đây nếu không có sự đồng ý bằng văn bản của Tập đoàn Công nghiệp - Viễn thông Quân đội:
+ Sao chép, chỉnh sửa, tái tạo ra sản phẩm mới hoặc phiên bản tái sinh trên cơ sở Dịch vụ TV360;
+ Bán, chuyển giao, cấp quyền lại, tiết lộ hoặc hình thức chuyển giao khác hoặc đưa một phần hoặc toàn bộ Dịch vụ TV360 cho bất kỳ bên thứ ba;
+ Sử dụng Dịch vụ TV360 để cung cấp dịch vụ cho bất kỳ bên thứ ba (tổ chức, cá nhân);
+ Di chuyển, xóa bỏ, thay đổi bất kỳ thông báo chính đáng hoặc dấu hiệu nào của Dịch vụ (bao gồm nhưng không giới hạn các tuyên bố về bản quyền);
+ Thiết kế lại, biên dịch, tháo gỡ, chỉnh sửa, đảo lộn thiết kế của Dịch vụ, hoặc nội dung Dịch vụ;
+ Thay đổi hoặc hủy bỏ trạng thái ban đầu của Dịch vụ;
+ Sử dụng Dịch vụ để thực hiện bất kỳ hành động gây hại cho hệ thống an ninh mạng của Tập đoàn Công nghiệp - Viễn thông Quân đội, bao gồm nhưng không giới hạn sử dụng dữ liệu hoặc truy cập vào máy chủ hệ thống mạng để xóa bỏ, chỉnh sửa và thêm các thông tin; phát tán các chương trình độc hại, virut hoặc thực hiện bất kỳ hành động nào khác nhằm gây hại hoặc phá hủy hệ thống mạng;
+ Đăng nhập và sử dụng Dịch vụ bằng một phần mềm tương thích của bên thứ ba hoặc hệ thống không được phát triển, cấp quyền hoặc chấp thuận bởi Tập đoàn Công nghiệp - Viễn thông Quân đội;
+ Sử dụng, bán, cho mượn, sao chép, chỉnh sửa, kết nối tới, phiên dịch, phát hành, công bố các thông tin;
+ Các hình thức vi phạm khác…

2. Xử lý vi phạm
- Trường hợp bạn vi phạm bất kỳ Quy định nào trong Thỏa thuận này, Tập đoàn Công nghiệp - Viễn thông Quân đội có quyền ngay lập tức khóa tài khoản của bạn và hoặc xóa bỏ toàn bộ các thông tin, nội dung vi phạm, đồng thời tùy thuộc vào tính chất, mức độ vi phạm bạn sẽ phải chịu trách nhiệm trước cơ quan có thẩm quyền, Tập đoàn Công nghiệp - Viễn thông Quân đội và bên thứ ba về mọi thiệt hại gây ra bởi hoặc xuất phát từ hành vi vi phạm của bạn.

3. Thông tin về điều kiện giao dịch
- Giới hạn về địa lý: sử dụng xem trên lãnh thổ nước Việt Nam.
- Giới hạn về đối tượng sử dụng: chỉ áp dụng cho thuê bao di động mạng Viettel.
- TV360 không có chính sách hoàn trả hoặc lấy lại tiền khi giao dịch mua gói cước đã được giao dịch.

4. Thông tin vận chuyển và giao nhận 
- Hình thức mua dịch vụ là trực tuyến trên Dịch vụ TV360. 
- Dịch vụ được cung cấp theo thời gian thực, ngay khi thực hiện mua gói cước xong sẽ sử dụng được dịch vụ theo chính sách đã công bố.

5. Thông tin về các phương thức thanh toán
- Quý khách có thể xem miễn phí nội dung là các kênh truyền hình, phim truyện hay video do TV360 cung cấp. Nội dung các chương trình này có thể kèm thêm quảng cáo.
- Đối với nội dung mất phí, khách hàng cần trả tiền trọn gói để xem các chương trình trong gói đó, chu kỳ tính theo ngày tuần hoặc tháng.
- Khách hàng sẽ thanh toán một lần cho một gói cước để được xem toàn bộ nội dung trong gói cước đó với khoảng thời gian nhất định của gói cước.
- Khi đăng ký gói cước, khách hàng sẽ được hưởng ưu đãi đặc biệt là “không mất phí Data 4G Viettel khi xem trên Dịch vụ TV360”.
- Khi thực hiện đăng ký, khách hàng sẽ thực hiện 2 bước, cụ thể:
+ Bước 1: Yêu cầu Đăng Ký, hệ thống hiển thị popup thông báo gói cước, giá cước, chu kỳ gia hạn của dịch vụ và quyền lợi liên quan.
+ Bước 2: Xác Nhận đăng ký qua tin nhắn gửi lên đầu số 1331. Khi thực hiện thành công, hệ thống sẽ thông báo kết quả qua tin nhắn với đầy đủ thông tin gói cước, giá cước và chu kỳ gia hạn, quyền lợi liên quan khi sử dụng trên TV360.


''';
  void _showTerm(BuildContext context) {
    showGeneralDialog(
      context: context,
      barrierDismissible: true,
      barrierLabel: '',
      barrierColor: Colors.black.withOpacity(0.5),
      transitionDuration: const Duration(milliseconds: 300),
      transitionBuilder: (BuildContext context, Animation<double> animation,
          Animation<double> secondaryAnimation, Widget child) {
        return SlideTransition(
          position: Tween(begin: const Offset(0.0, 1.0), end: Offset.zero)
              .animate(animation),
          child: child,
        );
      },
      pageBuilder: (BuildContext context, Animation<double> animation,
          Animation<double> secondaryAnimation) {
        return GestureDetector(
          onVerticalDragUpdate: (details) {
            int sensitivity = 10;
            if (details.delta.dy > sensitivity ||
                details.delta.dy < -sensitivity) {
              Navigator.of(context).pop();
            }
          },
          child: Dialog(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(4.0),
            ),
            child: Container(
              color: const Color(0xFF141414),
              height: MediaQuery.of(context).size.height * 0.7,
              width: double.infinity,
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
              child: Column(children: [
                const Text('Điều khoản sử dụng',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.bold)),
                Expanded(
                  child: Container(
                    height: double.infinity,
                    width: double.infinity,
                    margin: EdgeInsets.symmetric(vertical: heightLize(16)),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Colors.white,
                    ),
                    padding:
                        const EdgeInsets.symmetric(horizontal: 16, vertical: 6),
                    child: SingleChildScrollView(
                      physics: const BouncingScrollPhysics(),
                      child: Text(
                        _dummyData,
                        style: const TextStyle(
                            color: Color(0xFF141414), fontSize: 14),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 12,
                ),
                const Column(
                  children: [
                    Text('Bằng việc đăng nhập, bạn đã đồng ý với',
                        style:
                            TextStyle(fontSize: 12, color: Color(0xFF656874))),
                    Text('Điều khoản sử dụng của Myclip',
                        style:
                            TextStyle(fontSize: 12, color: Color(0xFFFFD130)))
                  ],
                ),
                const SizedBox(
                  height: 12,
                ),
                Material(
                  borderRadius: BorderRadius.circular(10),
                  color: Theme.of(context).primaryColor,
                  clipBehavior: Clip.antiAlias,
                  child: Ink(
                    width: double.infinity,
                    child: InkWell(
                      onTap: () {
                        Navigator.of(context).pop();
                      },
                      splashColor: Colors.red,
                      child: Container(
                        padding: const EdgeInsets.symmetric(vertical: 10),
                        child: const Text(
                          'Đồng ý',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ),
                )
              ]),
            ),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
      ),
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Form(
          key: _formKey,
          child: SizedBox(
            width: double.infinity,
            height: MediaQuery.of(context).size.height -
                AppBar().preferredSize.height -
                MediaQuery.of(context).padding.top,
            child: Column(
              children: [
                Image.asset(
                  'lib/assets/images/logo.png',
                  fit: BoxFit.contain,
                  width: widthLize(64),
                  height: widthLize(64),
                ),
                SizedBox(
                  height: heightLize(10),
                ),
                Text(
                  'Đăng nhập',
                  style: TextStyle(
                      fontSize: fontSizeLize(20), fontWeight: FontWeight.bold),
                ),
                Text(
                  'Myclip và trải nghiệm',
                  style: TextStyle(
                      fontSize: fontSizeLize(20), fontWeight: FontWeight.bold),
                ),
                Container(
                    padding: EdgeInsets.symmetric(
                        vertical: heightLize(24), horizontal: widthLize(32)),
                    child: Column(
                      children: [
                        TextFormField(
                          keyboardType: TextInputType.phone,
                          decoration: const InputDecoration(
                              focusColor: Colors.white,
                              fillColor: Color(0xFF141414),
                              filled: true,
                              hintText: 'SĐT',
                              hintStyle: TextStyle(color: Color(0xFF8A8B93)),
                              focusedBorder: OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10)),
                                  borderSide: BorderSide(
                                      color: Colors.white, width: 2.0)),
                              border: OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10)),
                                  borderSide: BorderSide(
                                      color: Colors.white, width: 2.0))),
                        ),
                        SizedBox(
                          height: heightLize(16),
                        ),
                        TextFormField(
                          obscureText: true,
                          enableSuggestions: false,
                          autocorrect: false,
                          decoration: const InputDecoration(
                              focusColor: Colors.white,
                              fillColor: Color(0xFF141414),
                              filled: true,
                              hintText: 'Mật khẩu',
                              hintStyle: TextStyle(color: Color(0xFF8A8B93)),
                              focusedBorder: OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10)),
                                  borderSide: BorderSide(
                                      color: Colors.white, width: 2.0)),
                              border: OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10)),
                                  borderSide: BorderSide(
                                      color: Colors.white, width: 2.0))),
                        ),
                        SizedBox(
                          height: heightLize(16),
                        ),
                        SizedBox(
                            width: double.infinity,
                            child: ElevatedButton(
                                onPressed: () {},
                                style: ElevatedButton.styleFrom(
                                    padding: EdgeInsets.symmetric(
                                        vertical: heightLize(10)),
                                    backgroundColor:
                                        Theme.of(context).primaryColor,
                                    shape: const RoundedRectangleBorder(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(10)))),
                                child: Text(
                                  'Đăng nhập',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: fontSizeLize(16)),
                                ))),
                        SizedBox(
                          height: heightLize(24),
                        ),
                        Text(
                          'hoặc đăng nhập bằng',
                          style: TextStyle(
                              color: const Color(0xFFB8B8Ba),
                              fontSize: fontSizeLize(14),
                              fontWeight: FontWeight.w500),
                        ),
                        SizedBox(
                          height: heightLize(24),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: List.generate(_listIcon.length, (index) {
                            return Flexible(
                              child: Container(
                                margin: EdgeInsets.symmetric(
                                    horizontal: widthLize(12)),
                                child: ClipOval(
                                  child: Material(
                                    color: Colors.transparent,
                                    child: Ink.image(
                                      image: AssetImage(_listIcon[index]),
                                      fit: BoxFit.cover,
                                      width: widthLize(40),
                                      height: widthLize(40),
                                      child: InkWell(onTap: () {}),
                                    ),
                                  ),
                                ),
                              ),
                            );
                          }),
                        ),
                      ],
                    )),
                Expanded(
                    child: Container(
                  margin: EdgeInsets.only(top: heightLize(90)),
                  padding: EdgeInsets.only(
                      bottom: MediaQuery.of(context).padding.bottom),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Ink(
                        child: InkWell(
                          onTap: () {},
                          child: Text(
                            'Đăng ký  /  Quên mật khẩu',
                            style: TextStyle(
                                fontSize: 14,
                                color: Theme.of(context).primaryColor),
                          ),
                        ),
                      ),
                      Column(
                        children: [
                          const Text('Bằng việc đăng nhập, bạn đã đồng ý với',
                              style: TextStyle(
                                  fontSize: 12, color: Color(0xFF656874))),
                          Ink(
                            child: InkWell(
                              onTap: () {
                                _showTerm(context);
                              },
                              child: const Text('Điều khoản sử dụng của Myclip',
                                  style: TextStyle(
                                      fontSize: 12, color: Color(0xFFFFD130))),
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
