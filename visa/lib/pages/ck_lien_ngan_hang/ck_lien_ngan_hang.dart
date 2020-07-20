import 'package:flutter/material.dart';
import 'package:visa/pages/giao_dich/xac_nhan_gd.dart';

class CKLienNganHang extends StatefulWidget {
  @override
  _CKLienNganHangState createState() => _CKLienNganHangState();
}

class _CKLienNganHangState extends State<CKLienNganHang> {
  var _banks = ['ACB bank', 'MSB bank', 'VCB', 'Agri'];
  var _currentBankSelected;

  var _tien_te = ['VND', 'USD', 'EUR'];
  var _currentTienTeSelected = 'VND';
  var _thu_phi = ['Người chuyển', 'Người nhận'];
  var _currentThuPhiSelected = 'Người chuyển';

  bool value4 = true;
  void onChangedValue4(bool value) {
    setState(() {
      value4 = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('CK Liên ngân hàng'),
        centerTitle: true,
        backgroundColor: Color(0xff1F68F4),
        elevation: 0,
      ),
      body: Stack(
        children: <Widget>[
          Container(
            height: 54,
            color: Color(0xff1F68F4),
          ),
          Container(
            width: double.infinity,
            // color: Colors.red,
            margin: EdgeInsets.only(top: 123),
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: ListView(
              children: <Widget>[
                Text(
                  'Đến',
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 8),
                Container(
                  alignment: Alignment.center,
                  height: 44,
                  padding: EdgeInsets.only(left: 12),
                  decoration: BoxDecoration(
                    // color: Color(0xfff7f6f6),
                    color: Color(0xffe9e9e9),
                    borderRadius: BorderRadius.all(Radius.circular(6)),
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Số tài khoản / Số thẻ',
                      hintStyle: TextStyle(
                        fontSize: 14,
                        color: Color(0xffa1a1a1),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 8),
                Container(
                  width: double.infinity,
                  height: 44,
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  decoration: BoxDecoration(
                    // color: Color(0xfff7f6f6),
                    color: Color(0xffe9e9e9),
                    borderRadius: BorderRadius.all(Radius.circular(6)),
                  ),
                  child: DropdownButtonHideUnderline(
                    child: DropdownButton<String>(
                      hint: Text('Chọn ngân hàng'),
                      elevation: 0,
                      dropdownColor: Color(0xffe5e5e5),
                      items: _banks.map((String item) {
                        return DropdownMenuItem<String>(
                          value: item,
                          child: Text(
                            item,
                            style: TextStyle(color: Color(0xff2E2E2E)),
                          ),
                        );
                      }).toList(),
                      onChanged: (String newItem) {
                        setState(() {
                          this._currentBankSelected = newItem;
                        });
                      },
                      value: _currentBankSelected,
                    ),
                  ),
                ),
                Container(
                  alignment: Alignment.topLeft,
                  margin: EdgeInsets.symmetric(vertical: 16),
                  child: Text(
                    'Thông tin chuyển khoản',
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                  ),
                ),
                Container(
                  height: 44,
                  padding: EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                  decoration: BoxDecoration(
                    // color: Color(0xfff7f6f6),
                    color: Color(0xffe9e9e9),
                    borderRadius: BorderRadius.all(Radius.circular(6)),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Container(
                        width: 200,
                        child: TextField(
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: 'Số tiền',
                            hintStyle: TextStyle(
                              fontSize: 14,
                              color: Color(0xffa1a1a1),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(left: 12),
                        decoration: BoxDecoration(
                          // color: Colors.amber,
                          border: Border(
                            left: BorderSide(
                              color: Color(0xffD7DBE6),
                              width: 1.0,
                            ),
                          ),
                        ),
                        child: DropdownButtonHideUnderline(
                          child: DropdownButton<String>(
                            elevation: 0,
                            dropdownColor: Color(0xffe5e5e5),
                            items: _tien_te.map((String item) {
                              return DropdownMenuItem<String>(
                                value: item,
                                child: Text(
                                  item,
                                  style: TextStyle(color: Color(0xff5289F4)),
                                ),
                              );
                            }).toList(),
                            onChanged: (String newItem) {
                              setState(() {
                                this._currentTienTeSelected = newItem;
                              });
                            },
                            value: _currentTienTeSelected,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 10),
                Container(
                  height: 44,
                  padding: EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                  decoration: BoxDecoration(
                    // color: Color(0xfff7f6f6),
                    color: Color(0xffe9e9e9),
                    borderRadius: BorderRadius.all(Radius.circular(6)),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Container(
                        width: 150,
                        child: TextField(
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: 'Thu phí',
                            hintStyle: TextStyle(
                              fontSize: 14,
                              color: Color(0xffa1a1a1),
                            ),
                          ),
                        ),
                      ),
                      DropdownButtonHideUnderline(
                        child: DropdownButton<String>(
                          elevation: 0,
                          dropdownColor: Color(0xffe5e5e5),
                          items: _thu_phi.map((String item) {
                            return DropdownMenuItem<String>(
                              value: item,
                              child: Text(
                                item,
                                style: TextStyle(color: Color(0xff5289F4)),
                              ),
                            );
                          }).toList(),
                          onChanged: (String newItem) {
                            setState(() {
                              this._currentThuPhiSelected = newItem;
                            });
                          },
                          value: _currentThuPhiSelected,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 16),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      'Lưu người hưởng thụ',
                      style:
                          TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                    ),
                    Switch(value: value4, onChanged: onChangedValue4)
                  ],
                ),
                // SizedBox(height: 16),
                Container(
                  alignment: Alignment.topLeft,
                  height: 88,
                  padding: EdgeInsets.symmetric(horizontal: 12),
                  decoration: BoxDecoration(
                    // color: Color(0xfff7f6f6),
                    color: Color(0xffe9e9e9),
                    borderRadius: BorderRadius.all(Radius.circular(6)),
                  ),
                  child: TextField(
                    maxLines: null,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Nội dung',
                      hintStyle: TextStyle(
                        fontSize: 14,
                        color: Color(0xffa1a1a1),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 16),
                SizedBox(
                  width: double.infinity,
                  height: 44,
                  child: RaisedButton(
                    onPressed: _xacNhanGD,
                    color: Color(0xff1F68F4),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(6))),
                    child: Text(
                      'Chuyển khoản',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                          fontWeight: FontWeight.w600),
                    ), //`Text` to display
                  ),
                ),
                SizedBox(height: 16),
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

  void _xacNhanGD() {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => XacNhanGD()));
  }
}
