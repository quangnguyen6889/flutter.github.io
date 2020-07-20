import 'package:flutter/material.dart';
import 'package:visa/pages/home/home_page.dart';

class GiaoDichPage extends StatefulWidget {
  @override
  _GiaoDichPageState createState() => _GiaoDichPageState();
}

class _GiaoDichPageState extends State<GiaoDichPage> {
  var _months = [
    'Tháng 1',
    'Tháng 2',
    'Tháng 3',
    'Tháng 4',
    'Tháng 5',
    'Tháng 6',
    'Tháng 7',
    'Tháng 8',
    'Tháng 9',
    'Tháng 10'
  ];
  var _years = ['2017', '2018', '2019', '2020'];
  var _type = ['Từ', 'Đến', 'Tất cả'];

  var _currentMonthSelected = 'Tháng 1';
  var _currentYearSelected = '2020';
  var _currentTyleSelected = 'Tất cả';

  List giao_dich = [
    {
      'icon': 'arrow_upward',
      'color': '0xff5077F7',
      'time': 'Hôm nay 12:45',
      'chieu': 'Từ',
      'money': '+100.000'
    },
    {
      'icon': 'arrow_downward',
      'color': '0xffEB383D',
      'time': 'Hôm nay 12:45',
      'chieu': 'Đến',
      'money': '-100.000'
    },
    {
      'icon': 'arrow_downward',
      'color': '0xffEB383D',
      'time': '23/11/2019 12:45',
      'chieu': 'Đến',
      'money': '-1.000.000'
    },
    {
      'icon': 'arrow_downward',
      'color': '0xffEB383D',
      'time': '20/11/2019 12:45',
      'chieu': 'Đến',
      'money': '-500.000'
    },
    {
      'icon': 'arrow_upward',
      'color': '0xff5077F7',
      'time': '20/11/2019 12:45',
      'chieu': 'Từ',
      'money': '+8.000.000'
    },
    {
      'icon': 'arrow_downward',
      'color': '0xffEB383D',
      'time': '13/11/2019 12:45',
      'chieu': 'Đến',
      'money': '-500.000'
    },
    {
      'icon': 'arrow_upward',
      'color': '0xff5077F7',
      'time': '06/11/2019 12:45',
      'chieu': 'Từ',
      'money': '+8.000.000'
    },
    {
      'icon': 'arrow_downward',
      'color': '0xffEB383D',
      'time': '03/11/2019 12:45',
      'chieu': 'Đến',
      'money': '-500.000'
    },
    {
      'icon': 'arrow_upward',
      'color': '0xff5077F7',
      'time': '03/11/2019 12:45',
      'chieu': 'Từ',
      'money': '+2.000.000'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Lịch sử giao dịch'),
        centerTitle: true,
        backgroundColor: Color(0xff1F68F4),
        elevation: 0,
        automaticallyImplyLeading: false,
      ),
      body: SingleChildScrollView(
        child: Stack(
          children: <Widget>[
            Container(
              height: 40,
              color: Color(0xff1F68F4),
            ),
            Container(
              width: double.infinity,
              // height: 599,
              color: Colors.white,
              margin: EdgeInsets.only(top: 40),
              padding: EdgeInsets.fromLTRB(0, 51, 0, 0),
              alignment: Alignment.topCenter,
              child: Column(
                children: <Widget>[
// Dropdown
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Expanded(
                          child: Container(
                            height: 44,
                            // padding: EdgeInsets.symmetric(horizontal: 10),
                            padding: EdgeInsets.only(left: 10),
                            decoration: BoxDecoration(
                              color: Color(0xfff7f6f6),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(6)),
                            ),
                            child: DropdownButtonHideUnderline(
                              child: DropdownButton<String>(
                                elevation: 0,
                                dropdownColor: Color(0xfff7f6f6),
                                items: _months.map((String item) {
                                  return DropdownMenuItem<String>(
                                    value: item,
                                    child: Text(
                                      item,
                                      style:
                                          TextStyle(color: Color(0xff2E2E2E)),
                                    ),
                                  );
                                }).toList(),
                                onChanged: (String newItem) {
                                  setState(() {
                                    this._currentMonthSelected = newItem;
                                  });
                                },
                                value: _currentMonthSelected,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(width: 8),
                        Expanded(
                          child: Container(
                            height: 44,
                            // padding: EdgeInsets.symmetric(horizontal: 10),
                            padding: EdgeInsets.only(left: 10),
                            decoration: BoxDecoration(
                              color: Color(0xfff7f6f6),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(6)),
                            ),
                            child: DropdownButtonHideUnderline(
                              child: DropdownButton<String>(
                                elevation: 0,
                                dropdownColor: Color(0xfff7f6f6),
                                items: _years.map((String item) {
                                  return DropdownMenuItem<String>(
                                    value: item,
                                    child: Text(item),
                                  );
                                }).toList(),
                                onChanged: (String newItem) {
                                  setState(() {
                                    this._currentYearSelected = newItem;
                                  });
                                },
                                value: _currentYearSelected,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(width: 8),
                        Expanded(
                          child: Container(
                            height: 44,
                            // padding: EdgeInsets.symmetric(horizontal: 10),
                            padding: EdgeInsets.only(left: 10),
                            decoration: BoxDecoration(
                              color: Color(0xfff7f6f6),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(6)),
                            ),
                            child: DropdownButtonHideUnderline(
                              child: DropdownButton<String>(
                                elevation: 0,
                                dropdownColor: Color(0xfff7f6f6),
                                items: _type.map((String item) {
                                  return DropdownMenuItem<String>(
                                    value: item,
                                    child: Text(item),
                                  );
                                }).toList(),
                                onChanged: (String newItem) {
                                  setState(() {
                                    this._currentTyleSelected = newItem;
                                  });
                                },
                                value: _currentTyleSelected,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
// List View
                  Container(
                    width: double.infinity,
                    height: 490,
                    // color: Colors.cyan,
                    color: Colors.white,
                    padding: EdgeInsets.only(top: 10),
                    child: ListView.builder(
                      itemCount: giao_dich.length,
                      itemBuilder: (BuildContext context, int index) {
                        return Column(
                          children: <Widget>[
                            Container(
                              width: double.infinity,
                              height: 44,
                              margin: EdgeInsets.only(bottom: 16),
                              child: ListTile(
                                leading: Container(
                                  width: 44,
                                  height: 44,
                                  decoration: BoxDecoration(
                                    color: Color(0xfff7f6f6),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(6)),
                                  ),
                                  child: giao_dich[index]['chieu'] == 'Từ'
                                      ? Icon(Icons.arrow_upward,
                                          color: Color(0xff5077F7))
                                      : Icon(
                                          Icons.arrow_downward,
                                          color: Color(0xffEB383D),
                                        ),
                                ),
                                title: Text(
                                  giao_dich[index]['time'],
                                  style: TextStyle(
                                      fontSize: 12, color: Color(0xff666666)),
                                ),
                                subtitle: Text(
                                  giao_dich[index]['chieu'] + ' 1014686229',
                                  style: TextStyle(
                                      fontSize: 14,
                                      color: Color(0xff000000),
                                      fontWeight: FontWeight.w600),
                                ),
                                trailing: Text(
                                  giao_dich[index]['money'] + ' VND',
                                  style: TextStyle(
                                      fontSize: 13,
                                      color: giao_dich[index]['chieu'] == 'Từ'
                                          ? Color(0xff5077F7)
                                          : Color(0xffEB383D),
                                      fontWeight: FontWeight.bold),
                                ),
                                onTap: () {},
                              ),
                            )
                          ],
                        );
                      },
                    ),
                  )
                ],
              ),
            ),
// Thu + chi
            Container(
              width: double.infinity,
              height: 80,
              margin: EdgeInsets.symmetric(horizontal: 16),
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Color(0xffffffff),
                borderRadius: BorderRadius.all(
                  Radius.circular(6),
                ),
                boxShadow: [
                  BoxShadow(
                    color: Color.fromRGBO(0, 0, 0, 0.12),
                    blurRadius: 8,
                  ),
                ],
              ),
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        // color: Colors.amber,
                        border: Border(
                          right: BorderSide(
                            color: Color(0xffa1a1a1),
                            width: 1.0,
                          ),
                        ),
                      ),
                      child: Column(
                        children: <Widget>[
                          Row(
                            children: <Widget>[
                              Container(
                                width: 12,
                                height: 12,
                                margin: EdgeInsets.only(right: 10),
                                decoration: BoxDecoration(
                                  color: Color(0xff5077f7),
                                  borderRadius: BorderRadius.circular(100.0),
                                ),
                              ),
                              Text(
                                'Khoản thu',
                                style: TextStyle(
                                    fontSize: 14, color: Color(0xffA1A1A1)),
                              ),
                            ],
                          ),
                          SizedBox(height: 6),
                          Padding(
                            padding: const EdgeInsets.only(left: 22.0),
                            child: Row(
                              children: <Widget>[
                                Text(
                                  '16.100.000',
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w600,
                                      color: Color(0xff2e2e2e)),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: Column(
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            Container(
                              width: 12,
                              height: 12,
                              margin: EdgeInsets.only(left: 20, right: 10),
                              decoration: BoxDecoration(
                                color: Color(0xffD03339),
                                borderRadius: BorderRadius.circular(100.0),
                              ),
                            ),
                            Text(
                              'Khoản chi',
                              style: TextStyle(
                                  fontSize: 14, color: Color(0xffA1A1A1)),
                            ),
                          ],
                        ),
                        SizedBox(height: 6),
                        Padding(
                          padding: const EdgeInsets.only(left: 42.0),
                          child: Row(
                            children: <Widget>[
                              Text(
                                '2.100.000',
                                style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w600,
                                    color: Color(0xff2e2e2e)),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
