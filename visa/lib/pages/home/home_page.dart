import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:visa/pages/chuyen_khoan/chuyen_khoan.dart';
import 'package:visa/pages/thanh_toan/thanh_toan.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _current = 0;
  int _id = 0;
  List imgList = [
    'assets/images/news.png',
    'assets/images/news.png',
    'assets/images/news.png',
    'assets/images/news.png',
  ];

  List<T> map<T>(List list, Function handler) {
    List<T> result = [];
    for (var i = 0; i < list.length; i++) {
      result.add(handler(i, list[i]));
    }
    return result;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff1F68F4),
      // appBar: AppBar(
      //   backgroundColor: Color(0xff1F68F4),
      //   elevation: 0,
      //   automaticallyImplyLeading: false,
      // ),
      body: SafeArea(
        child: Container(
          color: Color(0xff1F68F4),
          child: Stack(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.fromLTRB(16, 12, 16, 16),
                child: Column(
                  children: <Widget>[
                    Container(
                      width: double.infinity,
                      margin: EdgeInsets.only(bottom: 12),
                      child: Text(
                        'Xin chào, Đỗ Quang Nguyên',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    Container(
                      width: double.infinity,
                      margin: EdgeInsets.only(bottom: 6),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text(
                            'Tài khoản thanh toán',
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w600,
                              color: Colors.white,
                            ),
                            textAlign: TextAlign.left,
                          ),
                          Text(
                            "1014686229",
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w600,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: double.infinity,
                      margin: EdgeInsets.only(bottom: 6),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text(
                            'Số dư hiện tại',
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w600,
                              color: Colors.white,
                            ),
                          ),
                          Text(
                            "12.000.000",
                            style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.w600,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      child: Align(
                        alignment: Alignment.centerRight,
                        child: Text(
                          'VND',
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w600,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Container(
                width: double.infinity,
                height: double.infinity,
                margin: EdgeInsets.only(top: 145),
                padding: EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(16),
                    topRight: Radius.circular(16),
                  ),
                ),
                child: Column(
                  children: <Widget>[
// Row Chức năng
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          'Chức năng',
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            color: Color(0xff323232),
                          ),
                        ),
                        FlatButton(
                          onPressed: this._showModalBottomSheet,
                          child: Text(
                            'Tất cả',
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              color: Color(0xff5289F4),
                            ),
                          ),
                        ),
                      ],
                    ),
// Slides Chức năng
                    CarouselSlider(
                      height: 166,
                      initialPage: 0,
                      viewportFraction: 1.0,
                      enableInfiniteScroll: false,
                      onPageChanged: (index) {
                        setState(() {
                          _current = index;
                        });
                      },
                      items: <Widget>[
// Slide 1
                        Container(
                          width: double.infinity,
                          // color: Colors.red,
                          child: Column(
                            children: <Widget>[
// Hàng 1
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Container(
                                    width: 94,
                                    height: 51,
                                    margin: EdgeInsets.only(top: 24),
                                    child: FloatingActionButton(
                                      heroTag: null,
                                      onPressed: chuyenKhoan,
                                      backgroundColor:
                                          Color.fromRGBO(255, 255, 255, 0),
                                      elevation: 0.0,
                                      child: Column(
                                        children: <Widget>[
                                          ImageIcon(
                                            AssetImage(
                                                'assets/icons/chuyen_khoan.png'),
                                            color: Color(0xff5077F7),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                top: 12.0),
                                            child: Text(
                                              'Chuyển khoản',
                                              style: TextStyle(
                                                  fontSize: 11,
                                                  fontWeight: FontWeight.w600,
                                                  color: Color(0xff444444)),
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                  Container(
                                    width: 95,
                                    height: 51,
                                    margin: EdgeInsets.only(top: 24),
                                    child: FloatingActionButton(
                                      heroTag: null,
                                      onPressed: thanhToan,
                                      backgroundColor:
                                          Color.fromRGBO(255, 255, 255, 0),
                                      elevation: 0.0,
                                      child: Column(
                                        children: <Widget>[
                                          ImageIcon(
                                            AssetImage(
                                                'assets/icons/thanh_toan.png'),
                                            color: Color(0xff5289F4),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                top: 12.0),
                                            child: Text(
                                              'Thanh toán',
                                              style: TextStyle(
                                                  fontSize: 11,
                                                  fontWeight: FontWeight.w600,
                                                  color: Color(0xff444444)),
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                  Container(
                                    width: 95,
                                    height: 51,
                                    margin: EdgeInsets.only(top: 24),
                                    child: FloatingActionButton(
                                      heroTag: null,
                                      onPressed: null,
                                      backgroundColor:
                                          Color.fromRGBO(255, 255, 255, 0),
                                      elevation: 0.0,
                                      child: Column(
                                        children: <Widget>[
                                          ImageIcon(
                                            AssetImage(
                                                'assets/icons/tiet_kiem.png'),
                                            color: Color(0xff5289F4),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                top: 12.0),
                                            child: Text(
                                              'Tiết kiệm',
                                              style: TextStyle(
                                                  fontSize: 11,
                                                  fontWeight: FontWeight.w600,
                                                  color: Color(0xff444444)),
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                  Container(
                                    width: 95,
                                    height: 51,
                                    margin: EdgeInsets.only(top: 24),
                                    child: FloatingActionButton(
                                      heroTag: null,
                                      onPressed: null,
                                      backgroundColor:
                                          Color.fromRGBO(255, 255, 255, 0),
                                      elevation: 0.0,
                                      child: Column(
                                        children: <Widget>[
                                          ImageIcon(
                                            AssetImage(
                                                'assets/icons/yc_thanh_toan.png'),
                                            color: Color(0xff5289F4),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                top: 12.0),
                                            child: Text(
                                              'Y/C thanh toán',
                                              style: TextStyle(
                                                  fontSize: 11,
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
// Hàng 2
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Container(
                                    width: 94,
                                    height: 51,
                                    margin: EdgeInsets.only(top: 24),
                                    child: FloatingActionButton(
                                      heroTag: null,
                                      onPressed: null,
                                      backgroundColor:
                                          Color.fromRGBO(255, 255, 255, 0),
                                      elevation: 0.0,
                                      child: Column(
                                        children: <Widget>[
                                          ImageIcon(
                                            AssetImage(
                                                'assets/icons/vi_tai_khoan.png'),
                                            color: Color(0xff5289F4),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                top: 12.0),
                                            child: Text(
                                              'Tài khoản',
                                              style: TextStyle(
                                                  fontSize: 11,
                                                  fontWeight: FontWeight.w600,
                                                  color: Color(0xff444444)),
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                  Container(
                                    width: 95,
                                    height: 51,
                                    margin: EdgeInsets.only(top: 24),
                                    child: FloatingActionButton(
                                      heroTag: null,
                                      onPressed: null,
                                      backgroundColor:
                                          Color.fromRGBO(255, 255, 255, 0),
                                      elevation: 0.0,
                                      child: Column(
                                        children: <Widget>[
                                          ImageIcon(
                                            AssetImage('assets/icons/the.png'),
                                            color: Color(0xff5289F4),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                top: 12.0),
                                            child: Text(
                                              'Dịch vụ thẻ',
                                              style: TextStyle(
                                                  fontSize: 11,
                                                  fontWeight: FontWeight.w600,
                                                  color: Color(0xff444444)),
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                  Container(
                                    width: 95,
                                    height: 51,
                                    margin: EdgeInsets.only(top: 24),
                                    child: FloatingActionButton(
                                      heroTag: null,
                                      onPressed: null,
                                      backgroundColor:
                                          Color.fromRGBO(255, 255, 255, 0),
                                      elevation: 0.0,
                                      child: Column(
                                        children: <Widget>[
                                          ImageIcon(
                                            AssetImage(
                                                'assets/icons/bao_hiem.png'),
                                            color: Color(0xff5289F4),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                top: 12.0),
                                            child: Text(
                                              'Bảo hiểm',
                                              style: TextStyle(
                                                  fontSize: 11,
                                                  fontWeight: FontWeight.w600,
                                                  color: Color(0xff444444)),
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                  Container(
                                    width: 95,
                                    height: 51,
                                    margin: EdgeInsets.only(top: 24),
                                    child: FloatingActionButton(
                                      heroTag: null,
                                      onPressed: null,
                                      backgroundColor:
                                          Color.fromRGBO(255, 255, 255, 0),
                                      elevation: 0.0,
                                      child: Column(
                                        children: <Widget>[
                                          ImageIcon(
                                            AssetImage(
                                                'assets/icons/nap_tien_dt.png'),
                                            color: Color(0xff5289F4),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                top: 12.0),
                                            child: Text(
                                              'Nạp tiền ĐT',
                                              style: TextStyle(
                                                  fontSize: 11,
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
// Slide 2
                        Container(
                          width: double.infinity,
                          child: Column(
                            children: <Widget>[
// Hàng 1
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Container(
                                    width: 94,
                                    height: 51,
                                    margin: EdgeInsets.only(top: 24),
                                    child: FloatingActionButton(
                                      heroTag: null,
                                      onPressed: null,
                                      backgroundColor:
                                          Color.fromRGBO(255, 255, 255, 0),
                                      elevation: 0.0,
                                      child: Column(
                                        children: <Widget>[
                                          ImageIcon(
                                            AssetImage(
                                                'assets/icons/atm_cn.png'),
                                            color: Color(0xff5077F7),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                top: 12.0),
                                            child: Text(
                                              'ATM/CN',
                                              style: TextStyle(
                                                  fontSize: 11,
                                                  fontWeight: FontWeight.w600,
                                                  color: Color(0xff444444)),
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                  Container(
                                    width: 95,
                                    height: 51,
                                    margin: EdgeInsets.only(top: 24),
                                    child: FloatingActionButton(
                                      heroTag: null,
                                      onPressed: null,
                                      backgroundColor:
                                          Color.fromRGBO(255, 255, 255, 0),
                                      elevation: 0.0,
                                      child: Column(
                                        children: <Widget>[
                                          ImageIcon(
                                            AssetImage(
                                                'assets/icons/rut_tien_qr.png'),
                                            color: Color(0xff5289F4),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                top: 12.0),
                                            child: Text(
                                              'Rút tiền QR',
                                              style: TextStyle(
                                                  fontSize: 11,
                                                  fontWeight: FontWeight.w600,
                                                  color: Color(0xff444444)),
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                  Container(
                                    width: 95,
                                    height: 51,
                                    margin: EdgeInsets.only(top: 24),
                                    child: FloatingActionButton(
                                      heroTag: null,
                                      onPressed: null,
                                      backgroundColor:
                                          Color.fromRGBO(255, 255, 255, 0),
                                      elevation: 0.0,
                                      child: Column(
                                        children: <Widget>[
                                          ImageIcon(
                                            AssetImage(
                                                'assets/icons/lai_xuat.png'),
                                            color: Color(0xff5289F4),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                top: 12.0),
                                            child: Text(
                                              'Lãi xuất',
                                              style: TextStyle(
                                                  fontSize: 11,
                                                  fontWeight: FontWeight.w600,
                                                  color: Color(0xff444444)),
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                  Container(
                                    width: 95,
                                    height: 51,
                                    margin: EdgeInsets.only(top: 24),
                                    child: FloatingActionButton(
                                      heroTag: null,
                                      onPressed: null,
                                      backgroundColor:
                                          Color.fromRGBO(255, 255, 255, 0),
                                      elevation: 0.0,
                                      child: Column(
                                        children: <Widget>[
                                          ImageIcon(
                                            AssetImage(
                                                'assets/icons/ty_gia.png'),
                                            color: Color(0xff5289F4),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                top: 12.0),
                                            child: Text(
                                              'Tỷ giá',
                                              style: TextStyle(
                                                  fontSize: 11,
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
// Hàng 2
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Container(
                                    width: 94,
                                    height: 51,
                                    margin: EdgeInsets.only(top: 24),
                                    child: FloatingActionButton(
                                      heroTag: null,
                                      onPressed: null,
                                      backgroundColor:
                                          Color.fromRGBO(255, 255, 255, 0),
                                      elevation: 0.0,
                                      child: Column(
                                        children: <Widget>[
                                          ImageIcon(
                                            AssetImage(
                                                'assets/icons/khuyen_mai.png'),
                                            color: Color(0xff5289F4),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                top: 12.0),
                                            child: Text(
                                              'Khuyến mại',
                                              style: TextStyle(
                                                  fontSize: 11,
                                                  fontWeight: FontWeight.w600,
                                                  color: Color(0xff444444)),
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                  Container(
                                    width: 95,
                                    height: 51,
                                    margin: EdgeInsets.only(top: 24),
                                    child: FloatingActionButton(
                                      heroTag: null,
                                      onPressed: null,
                                      backgroundColor:
                                          Color.fromRGBO(255, 255, 255, 0),
                                      elevation: 0.0,
                                      child: Column(
                                        children: <Widget>[
                                          ImageIcon(
                                            AssetImage(
                                                'assets/icons/dat_ve.png'),
                                            color: Color(0xff5289F4),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                top: 12.0),
                                            child: Text(
                                              'Đặt vé',
                                              style: TextStyle(
                                                  fontSize: 11,
                                                  fontWeight: FontWeight.w600,
                                                  color: Color(0xff444444)),
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                  Container(
                                    width: 95,
                                    height: 51,
                                    margin: EdgeInsets.only(top: 24),
                                    child: FloatingActionButton(
                                      heroTag: null,
                                      onPressed: null,
                                      backgroundColor:
                                          Color.fromRGBO(255, 255, 255, 0),
                                      elevation: 0.0,
                                      child: Column(
                                        children: <Widget>[
                                          ImageIcon(
                                            AssetImage(
                                                'assets/icons/ho_tro.png'),
                                            color: Color(0xff5289F4),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                top: 12.0),
                                            child: Text(
                                              'Hỗ trợ',
                                              style: TextStyle(
                                                  fontSize: 11,
                                                  fontWeight: FontWeight.w600,
                                                  color: Color(0xff444444)),
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                  Container(
                                    width: 95,
                                    height: 51,
                                    margin: EdgeInsets.only(top: 24),
                                    child: FloatingActionButton(
                                      heroTag: null,
                                      onPressed: null,
                                      backgroundColor:
                                          Color.fromRGBO(255, 255, 255, 0),
                                      elevation: 0.0,
                                      child: Column(
                                        children: <Widget>[
                                          ImageIcon(
                                            AssetImage(
                                                'assets/icons/tin_tuc.png'),
                                            color: Color(0xff5289F4),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                top: 12.0),
                                            child: Text(
                                              'Tin tức',
                                              style: TextStyle(
                                                  fontSize: 11,
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
                      ],
                    ),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: map<Widget>(imgList, (index, url) {
                        return Container(
                          width: _current == index ? 28 : 10,
                          height: 10,
                          margin: EdgeInsets.symmetric(horizontal: 2),
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: _current == index
                                  ? Color(0xff5289F4)
                                  : Color(0xffDDDDDD)),
                        );
                      }),
                    ),
// Row Tin tức
                    Container(
                      margin: EdgeInsets.only(top: 16, bottom: 6),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text(
                            'Tin tức',
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              color: Color(0xff323232),
                            ),
                          ),
                          Text(
                            'Tất cả',
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              color: Color(0xff5289F4),
                            ),
                          ),
                        ],
                      ),
                    ),
// Slides Tin tức
                    CarouselSlider(
                      height: 230,
                      initialPage: 0,
                      viewportFraction: 1.0,
                      onPageChanged: (index) {
                        setState(() {
                          _current = index;
                        });
                      },
                      items: imgList.map((img) {
                        return Builder(
                          builder: (BuildContext context) {
                            return Container(
                              width: double.infinity,
                              decoration: BoxDecoration(
                                  // color: Colors.amberAccent,
                                  ),
                              child: Image.asset(
                                img,
                                width: double.infinity,
                                // height: 212.0,
                              ),
                            );
                          },
                        );
                      }).toList(),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

// Modal
  void _showModalBottomSheet() {
    showModalBottomSheet(
      context: this.context,
      builder: (context) {
        return Container(
          width: double.infinity,
          decoration: BoxDecoration(
            color: Colors.white,
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
                    'Chức năng',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: Color(0xff323232),
                    ),
                  ),
                  IconButton(
                      icon: Icon(Icons.close),
                      onPressed: () {
                        Navigator.of(context).pop();
                      })
                ],
              ),
              Container(
                width: double.infinity,
                // color: Colors.red,
                child: Column(
                  children: <Widget>[
// Hàng 1
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Container(
                          width: 94,
                          height: 51,
                          margin: EdgeInsets.only(top: 24),
                          child: FloatingActionButton(
                            heroTag: null,
                            onPressed: null,
                            backgroundColor: Color.fromRGBO(255, 255, 255, 0),
                            elevation: 0.0,
                            child: Column(
                              children: <Widget>[
                                ImageIcon(
                                  AssetImage('assets/icons/chuyen_khoan.png'),
                                  color: Color(0xff5077F7),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 12.0),
                                  child: Text(
                                    'Chuyển khoản',
                                    style: TextStyle(
                                        fontSize: 11,
                                        fontWeight: FontWeight.w600,
                                        color: Color(0xff444444)),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                        Container(
                          width: 95,
                          height: 51,
                          margin: EdgeInsets.only(top: 24),
                          child: FloatingActionButton(
                            heroTag: null,
                            onPressed: null,
                            backgroundColor: Color.fromRGBO(255, 255, 255, 0),
                            elevation: 0.0,
                            child: Column(
                              children: <Widget>[
                                ImageIcon(
                                  AssetImage('assets/icons/thanh_toan.png'),
                                  color: Color(0xff5289F4),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 12.0),
                                  child: Text(
                                    'Thanh toán',
                                    style: TextStyle(
                                        fontSize: 11,
                                        fontWeight: FontWeight.w600,
                                        color: Color(0xff444444)),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                        Container(
                          width: 95,
                          height: 51,
                          margin: EdgeInsets.only(top: 24),
                          child: FloatingActionButton(
                            heroTag: null,
                            onPressed: null,
                            backgroundColor: Color.fromRGBO(255, 255, 255, 0),
                            elevation: 0.0,
                            child: Column(
                              children: <Widget>[
                                ImageIcon(
                                  AssetImage('assets/icons/tiet_kiem.png'),
                                  color: Color(0xff5289F4),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 12.0),
                                  child: Text(
                                    'Tiết kiệm',
                                    style: TextStyle(
                                        fontSize: 11,
                                        fontWeight: FontWeight.w600,
                                        color: Color(0xff444444)),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                        Container(
                          width: 95,
                          height: 51,
                          margin: EdgeInsets.only(top: 24),
                          child: FloatingActionButton(
                            heroTag: null,
                            onPressed: null,
                            backgroundColor: Color.fromRGBO(255, 255, 255, 0),
                            elevation: 0.0,
                            child: Column(
                              children: <Widget>[
                                ImageIcon(
                                  AssetImage('assets/icons/yc_thanh_toan.png'),
                                  color: Color(0xff5289F4),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 12.0),
                                  child: Text(
                                    'Y/C thanh toán',
                                    style: TextStyle(
                                        fontSize: 11,
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
// Hàng 2
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Container(
                          width: 94,
                          height: 51,
                          margin: EdgeInsets.only(top: 24),
                          child: FloatingActionButton(
                            heroTag: null,
                            onPressed: null,
                            backgroundColor: Color.fromRGBO(255, 255, 255, 0),
                            elevation: 0.0,
                            child: Column(
                              children: <Widget>[
                                ImageIcon(
                                  AssetImage('assets/icons/vi_tai_khoan.png'),
                                  color: Color(0xff5289F4),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 12.0),
                                  child: Text(
                                    'Tài khoản',
                                    style: TextStyle(
                                        fontSize: 11,
                                        fontWeight: FontWeight.w600,
                                        color: Color(0xff444444)),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                        Container(
                          width: 95,
                          height: 51,
                          margin: EdgeInsets.only(top: 24),
                          child: FloatingActionButton(
                            heroTag: null,
                            onPressed: null,
                            backgroundColor: Color.fromRGBO(255, 255, 255, 0),
                            elevation: 0.0,
                            child: Column(
                              children: <Widget>[
                                ImageIcon(
                                  AssetImage('assets/icons/the.png'),
                                  color: Color(0xff5289F4),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 12.0),
                                  child: Text(
                                    'Dịch vụ thẻ',
                                    style: TextStyle(
                                        fontSize: 11,
                                        fontWeight: FontWeight.w600,
                                        color: Color(0xff444444)),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                        Container(
                          width: 95,
                          height: 51,
                          margin: EdgeInsets.only(top: 24),
                          child: FloatingActionButton(
                            heroTag: null,
                            onPressed: null,
                            backgroundColor: Color.fromRGBO(255, 255, 255, 0),
                            elevation: 0.0,
                            child: Column(
                              children: <Widget>[
                                ImageIcon(
                                  AssetImage('assets/icons/bao_hiem.png'),
                                  color: Color(0xff5289F4),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 12.0),
                                  child: Text(
                                    'Bảo hiểm',
                                    style: TextStyle(
                                        fontSize: 11,
                                        fontWeight: FontWeight.w600,
                                        color: Color(0xff444444)),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                        Container(
                          width: 95,
                          height: 51,
                          margin: EdgeInsets.only(top: 24),
                          child: FloatingActionButton(
                            heroTag: null,
                            onPressed: null,
                            backgroundColor: Color.fromRGBO(255, 255, 255, 0),
                            elevation: 0.0,
                            child: Column(
                              children: <Widget>[
                                ImageIcon(
                                  AssetImage('assets/icons/nap_tien_dt.png'),
                                  color: Color(0xff5289F4),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 12.0),
                                  child: Text(
                                    'Nạp tiền ĐT',
                                    style: TextStyle(
                                        fontSize: 11,
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
              Container(
                width: double.infinity,
                child: Column(
                  children: <Widget>[
// Hàng 1
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Container(
                          width: 94,
                          height: 51,
                          margin: EdgeInsets.only(top: 24),
                          child: FloatingActionButton(
                            heroTag: null,
                            onPressed: null,
                            backgroundColor: Color.fromRGBO(255, 255, 255, 0),
                            elevation: 0.0,
                            child: Column(
                              children: <Widget>[
                                ImageIcon(
                                  AssetImage('assets/icons/atm_cn.png'),
                                  color: Color(0xff5077F7),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 12.0),
                                  child: Text(
                                    'ATM/CN',
                                    style: TextStyle(
                                        fontSize: 11,
                                        fontWeight: FontWeight.w600,
                                        color: Color(0xff444444)),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                        Container(
                          width: 95,
                          height: 51,
                          margin: EdgeInsets.only(top: 24),
                          child: FloatingActionButton(
                            heroTag: null,
                            onPressed: null,
                            backgroundColor: Color.fromRGBO(255, 255, 255, 0),
                            elevation: 0.0,
                            child: Column(
                              children: <Widget>[
                                ImageIcon(
                                  AssetImage('assets/icons/rut_tien_qr.png'),
                                  color: Color(0xff5289F4),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 12.0),
                                  child: Text(
                                    'Rút tiền QR',
                                    style: TextStyle(
                                        fontSize: 11,
                                        fontWeight: FontWeight.w600,
                                        color: Color(0xff444444)),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                        Container(
                          width: 95,
                          height: 51,
                          margin: EdgeInsets.only(top: 24),
                          child: FloatingActionButton(
                            heroTag: null,
                            onPressed: null,
                            backgroundColor: Color.fromRGBO(255, 255, 255, 0),
                            elevation: 0.0,
                            child: Column(
                              children: <Widget>[
                                ImageIcon(
                                  AssetImage('assets/icons/lai_xuat.png'),
                                  color: Color(0xff5289F4),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 12.0),
                                  child: Text(
                                    'Lãi xuất',
                                    style: TextStyle(
                                        fontSize: 11,
                                        fontWeight: FontWeight.w600,
                                        color: Color(0xff444444)),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                        Container(
                          width: 95,
                          height: 51,
                          margin: EdgeInsets.only(top: 24),
                          child: FloatingActionButton(
                            heroTag: null,
                            onPressed: null,
                            backgroundColor: Color.fromRGBO(255, 255, 255, 0),
                            elevation: 0.0,
                            child: Column(
                              children: <Widget>[
                                ImageIcon(
                                  AssetImage('assets/icons/ty_gia.png'),
                                  color: Color(0xff5289F4),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 12.0),
                                  child: Text(
                                    'Tỷ giá',
                                    style: TextStyle(
                                        fontSize: 11,
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
// Hàng 2
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Container(
                          width: 94,
                          height: 51,
                          margin: EdgeInsets.only(top: 24),
                          child: FloatingActionButton(
                            heroTag: null,
                            onPressed: null,
                            backgroundColor: Color.fromRGBO(255, 255, 255, 0),
                            elevation: 0.0,
                            child: Column(
                              children: <Widget>[
                                ImageIcon(
                                  AssetImage('assets/icons/khuyen_mai.png'),
                                  color: Color(0xff5289F4),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 12.0),
                                  child: Text(
                                    'Khuyến mại',
                                    style: TextStyle(
                                        fontSize: 11,
                                        fontWeight: FontWeight.w600,
                                        color: Color(0xff444444)),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                        Container(
                          width: 95,
                          height: 51,
                          margin: EdgeInsets.only(top: 24),
                          child: FloatingActionButton(
                            heroTag: null,
                            onPressed: null,
                            backgroundColor: Color.fromRGBO(255, 255, 255, 0),
                            elevation: 0.0,
                            child: Column(
                              children: <Widget>[
                                ImageIcon(
                                  AssetImage('assets/icons/dat_ve.png'),
                                  color: Color(0xff5289F4),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 12.0),
                                  child: Text(
                                    'Đặt vé',
                                    style: TextStyle(
                                        fontSize: 11,
                                        fontWeight: FontWeight.w600,
                                        color: Color(0xff444444)),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                        Container(
                          width: 95,
                          height: 51,
                          margin: EdgeInsets.only(top: 24),
                          child: FloatingActionButton(
                            heroTag: null,
                            onPressed: null,
                            backgroundColor: Color.fromRGBO(255, 255, 255, 0),
                            elevation: 0.0,
                            child: Column(
                              children: <Widget>[
                                ImageIcon(
                                  AssetImage('assets/icons/ho_tro.png'),
                                  color: Color(0xff5289F4),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 12.0),
                                  child: Text(
                                    'Hỗ trợ',
                                    style: TextStyle(
                                        fontSize: 11,
                                        fontWeight: FontWeight.w600,
                                        color: Color(0xff444444)),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                        Container(
                          width: 95,
                          height: 51,
                          margin: EdgeInsets.only(top: 24),
                          child: FloatingActionButton(
                            heroTag: null,
                            onPressed: null,
                            backgroundColor: Color.fromRGBO(255, 255, 255, 0),
                            elevation: 0.0,
                            child: Column(
                              children: <Widget>[
                                ImageIcon(
                                  AssetImage('assets/icons/tin_tuc.png'),
                                  color: Color(0xff5289F4),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 12.0),
                                  child: Text(
                                    'Tin tức',
                                    style: TextStyle(
                                        fontSize: 11,
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
            ],
          ),
        );
      },
    );
  }

  void thanhToan() {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => ThanhToanPage()));
  }

  void chuyenKhoan() {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => ChuyenKhoan()));
  }
}
