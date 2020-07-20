import 'package:flutter/material.dart';

class AccountPage extends StatefulWidget {
  @override
  _AccountPageState createState() => _AccountPageState();
}

class _AccountPageState extends State<AccountPage> {
  bool selected = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff6592F2),
      body: SafeArea(
        child: Stack(
          children: <Widget>[
// Profile
            Container(
              width: double.infinity,
              height: 124,
              padding: EdgeInsets.only(left: 16),
              child: Row(
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(bottom: 40),
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Color(0xffffffff),
                        width: 1,
                      ),
                      borderRadius: BorderRadius.circular(50.0),
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(50.0),
                      child: Image.network(
                        'https://u01.appmifile.com/images/2017/08/26/67afdbe3-4a20-49e5-adfa-9c3a5d6f9b87.png',
                        width: 38,
                        height: 38,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20.0),
                    child: Column(
                      children: <Widget>[
                        Text(
                          'Đỗ Quang Nguyên',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 8.0, left: 17),
                          child: Text(
                            'Chạm để xem và sửa thông tin',
                            style: TextStyle(
                              fontSize: 12,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            Container(
              width: double.infinity,
              // height: 572,
              color: Color(0xffe5e5e5),
              alignment: Alignment.topCenter,
              margin: EdgeInsets.only(top: 124),
              padding: EdgeInsets.only(top: 275),
              child: Text(
                'Phiên bản v2.0',
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w600,
                  color: Color(0xffa1a1a1),
                ),
              ),
            ),
// Main
            Container(
              width: double.infinity,
              height: 291,
              margin: EdgeInsets.fromLTRB(15, 92, 15, 0),
              padding: EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(
                  Radius.circular(16),
                ),
                boxShadow: [
                  BoxShadow(
                    color: Color.fromRGBO(0, 0, 0, 0.12),
                    blurRadius: 8,
                  ),
                ],
              ),
              child: ListView(
                children: ListTile.divideTiles(
                  context: context,
                  tiles: [
                    Container(
                      height: 45,
                      child: ListTile(
                        leading:
                            Icon(Icons.notifications, color: Color(0xff5077F7)),
                        title: Text('Thông báo',
                            style: TextStyle(
                                fontSize: 14, color: Color(0xff888888))),
                        trailing: Icon(Icons.arrow_forward_ios, size: 19),
                        onTap: () {
                          print('object');
                        },
                      ),
                    ),
                    Container(
                      height: 45,
                      child: ListTile(
                        leading: Icon(Icons.lock, color: Color(0xff5077F7)),
                        title: Text('Bảo mật',
                            style: TextStyle(
                                fontSize: 14, color: Color(0xff888888))),
                        trailing: Icon(Icons.arrow_forward_ios, size: 19),
                        onTap: () {
                          print('object');
                        },
                      ),
                    ),
                    Container(
                      height: 45,
                      child: ListTile(
                        leading: Icon(Icons.help, color: Color(0xff5077F7)),
                        title: Text('Trợ giúp',
                            style: TextStyle(
                                fontSize: 14, color: Color(0xff888888))),
                        trailing: Icon(Icons.arrow_forward_ios, size: 19),
                        onTap: () {
                          print('object');
                        },
                      ),
                    ),
                    Container(
                      height: 45,
                      child: ListTile(
                        leading:
                            Icon(Icons.headset_mic, color: Color(0xff5077F7)),
                        title: Text('Liên hệ',
                            style: TextStyle(
                                fontSize: 14, color: Color(0xff888888))),
                        trailing: Icon(Icons.arrow_forward_ios, size: 19),
                        onTap: () {
                          print('object');
                        },
                      ),
                    ),
                    Container(
                      height: 45,
                      child: ListTile(
                        leading:
                            Icon(Icons.translate, color: Color(0xff5077F7)),
                        title: Text('Ngôn ngữ',
                            style: TextStyle(
                                fontSize: 14, color: Color(0xff888888))),
                        trailing: Icon(Icons.arrow_forward_ios, size: 19),
                        onTap: _showModalBottomSheet,
                      ),
                    ),
                    Container(
                      height: 45,
                      child: ListTile(
                        leading:
                            Icon(Icons.exit_to_app, color: Color(0xff5077F7)),
                        title: Text('Đăng xuất',
                            style: TextStyle(
                                fontSize: 14, color: Color(0xff888888))),
                        // trailing: Icon(Icons.arrow_forward_ios, size: 19),
                        onTap: () {
                          print('object');
                        },
                      ),
                    ),
                  ],
                ).toList(),
              ),
            )
          ],
        ),
      ),
    );
  }

// Modal ngôn ngữ
  void _showModalBottomSheet() {
    showModalBottomSheet(
      context: this.context,
      builder: (context) {
        return Container(
          width: double.infinity,
          height: 200,
          padding: const EdgeInsets.fromLTRB(20, 24, 20, 0),
          decoration: BoxDecoration(
            // color: Colors.red[200],
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(16),
              topRight: Radius.circular(16),
            ),
          ),
          child: Column(
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    'Chọn ngôn ngữ',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: Color(0xff323232),
                    ),
                  ),
                  InkWell(
                      child: Icon(Icons.close),
                      onTap: () {
                        Navigator.of(context).pop();
                      })
                ],
              ),
              SizedBox(height: 8),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Bạn muốn sử dụng ngôn ngữ nào cho ứng dụng của mình?',
                  style: TextStyle(fontSize: 14, color: Color(0xff888888)),
                ),
              ),
              SizedBox(height: 12),
              ListTile(
                dense: true,
                leading: CircleAvatar(
                  radius: 12,
                  backgroundImage: NetworkImage(
                      'https://upload.wikimedia.org/wikipedia/commons/thumb/a/a6/Flag_of_North_Vietnam_%281955%E2%80%931975%29.svg/220px-Flag_of_North_Vietnam_%281955%E2%80%931975%29.svg.png'),
                ),
                title: Text(
                  'Tiếng Việt',
                  style: TextStyle(fontSize: 14, color: Color(0xff323232)),
                ),
                trailing:
                    selected ? Icon(Icons.arrow_forward_ios, size: 19) : null,
                // onTap: () => selected = !selected,
              ),
              ListTile(
                dense: true,
                leading: CircleAvatar(
                  radius: 12,
                  backgroundImage: NetworkImage(
                      'https://upload.wikimedia.org/wikipedia/commons/thumb/a/ae/Flag_of_the_United_Kingdom.svg/300px-Flag_of_the_United_Kingdom.svg.png'),
                ),
                title: Text(
                  'English',
                  style: TextStyle(fontSize: 14, color: Color(0xff323232)),
                ),
                trailing:
                    selected ? Icon(Icons.arrow_forward_ios, size: 19) : null,
                // onTap: () => selected = !selected,
              ),
            ],
          ),
        );
      },
    );
  }
}
