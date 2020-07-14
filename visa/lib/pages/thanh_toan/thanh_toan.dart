import 'package:flutter/material.dart';

class ThanhToanPage extends StatefulWidget {
  @override
  _ThanhToanPageState createState() => _ThanhToanPageState();
}

class _ThanhToanPageState extends State<ThanhToanPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Thanh toán'),
        centerTitle: true,
        backgroundColor: Color(0xff1F68F4),
        elevation: 0,
        // leading: IconButton(
        //   icon: Icon(
        //     Icons.arrow_back_ios,
        //     size: 20,
        //     color: Colors.white,
        //   ),
        //   onPressed: null,
        // ),
        // automaticallyImplyLeading: false,
      ),
      body: Stack(
        children: <Widget>[
          Container(
            height: 54,
            color: Color(0xff1F68F4),
          ),
          Container(
            width: double.infinity,
            height: 500,
            // color: Colors.red,
            // color: Color(0xfff7f6f6),
            margin: EdgeInsets.only(top: 123),
            padding: EdgeInsets.all(16),
            alignment: Alignment.topLeft,
            child: Column(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(bottom: 24),
                  child: Text(
                    'Chọn loại hóa đơn cần thanh toán',
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                  ),
                ),
                Row(
                  children: <Widget>[
                    chucNang('assets/icons/tien_dien.png', 'Tiền điện'),
                    SizedBox(width: 12),
                    chucNang('assets/icons/tien_nuoc.png', 'Tiền nước'),
                    SizedBox(width: 12),
                    chucNang('assets/icons/ve_may_bay.png', 'Vé máy bay'),
                  ],
                ),
                SizedBox(height: 12),
                Row(
                  children: <Widget>[
                    chucNang('assets/icons/internet.png', 'Internet'),
                    SizedBox(width: 12),
                    chucNang('assets/icons/truyen_hinh.png', 'Truyền hình'),
                    SizedBox(width: 12),
                    chucNang('assets/icons/nap_tien_dt.png', 'Nạp tiền ĐT'),
                  ],
                ),
                SizedBox(height: 12),
                Row(
                  children: <Widget>[
                    Container(
                      width: MediaQuery.of(context).size.width * 0.282666,
                      padding:
                          EdgeInsets.symmetric(vertical: 16, horizontal: 8),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(
                          Radius.circular(8),
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: Color.fromRGBO(0, 0, 0, 0.12),
                            blurRadius: 8,
                          ),
                        ],
                      ),
                      child: FlatButton(
                        onPressed: null,
                        child: Column(
                          children: <Widget>[
                            ImageIcon(
                              AssetImage('assets/icons/bao_hiem.png'),
                              color: Color(0xff5289F4),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 20.0),
                              child: Text(
                                'Bảo hiểm',
                                style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w600,
                                    color: Color(0xff444444)),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
// Thông tin tài khoản
          Container(
            width: double.infinity,
            height: 107,
            margin: EdgeInsets.symmetric(horizontal: 16),
            padding: EdgeInsets.all(16),
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
            child: Column(
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      'Chuyển từ',
                      style:
                          TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      'Thay đổi',
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          color: Color(0xff5289f4)),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: <Widget>[
                    Expanded(
                      child: Text(
                        'Tài khoản:',
                        style:
                            TextStyle(fontSize: 12, color: Color(0xff888888)),
                      ),
                    ),
                    Expanded(
                      child: Text(
                        'Số dư:',
                        style:
                            TextStyle(fontSize: 12, color: Color(0xff888888)),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 8,
                ),
                Row(
                  children: <Widget>[
                    Expanded(
                      child: Text(
                        '1014686229',
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Expanded(
                      child: Text(
                        '15.200.000 VND',
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget chucNang(String url, String name) {
    return Expanded(
      child: Container(
        // height: 108,
        padding: EdgeInsets.symmetric(vertical: 16, horizontal: 8),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(
            Radius.circular(8),
          ),
          boxShadow: [
            BoxShadow(
              color: Color.fromRGBO(0, 0, 0, 0.12),
              blurRadius: 8,
            ),
          ],
        ),
        child: InkWell(
          onTap: null,
          child: Column(
            children: <Widget>[
              ImageIcon(
                AssetImage('$url'),
                color: Color(0xff5289F4),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20.0),
                child: Text(
                  '$name',
                  style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w600,
                      color: Color(0xff444444)),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
