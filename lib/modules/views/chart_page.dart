import 'package:flutter/material.dart';
import 'package:save_money/modules/common/app_line_chart.dart';
import 'package:save_money/util/theme/app_colors.dart';


class ChartPage extends StatefulWidget {
  const ChartPage({Key? key}) : super(key: key);

  @override
  _ChartPageState createState() => _ChartPageState();
}

class _ChartPageState extends State<ChartPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: light80,
        leading:  Icon(Icons.person,color: violet100,),
        title: Text('October',style: TextStyle(color: dark100,fontSize: 15.0,fontWeight: FontWeight.bold),),
        centerTitle: true,
        actions: [
          Icon(Icons.notifications_none_outlined,color:violet100),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 20.0,),
            Text('Account Balance',style: TextStyle(color: light20,fontSize: 20.0,fontWeight: FontWeight.bold),),
            const SizedBox(height: 10.0,),
            const Text('\$9400',style:TextStyle(color:Colors.black,fontSize: 32.0,fontWeight: FontWeight.bold ), ),
            Row(
              children: [
                Card(
                  color: green100,
                  clipBehavior: Clip.antiAlias,
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
                  child:  SizedBox(
                    width: 175,
                    height: 75,
                    child: Column(
                      children: [
                        ListTile(
                          leading: Image.asset('assets/ảnh xanh.png'),
                          title: const Text('Income \$5000',style: TextStyle(color: Colors.white,fontSize:20.0),),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(width: 25.0,),
                Card(
                  color: red100,
                  clipBehavior: Clip.antiAlias,
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
                  child:  SizedBox(
                    width: 175,
                    height: 75,
                    child: Column(
                      children: [
                        ListTile(
                          leading: Image.asset('assets/ảnh_đỏ.png'),
                          title: const Text('Expenses \$1200',style: TextStyle(color: Colors.white,fontSize:20.0),),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20.0,),
            Container(
              child: Column(
                children: const [
                  Text('Spend Frequency',style: TextStyle(color: Colors.black,fontSize: 20.0,fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            AppLineChart(),
          ],
        ),
      ),
    );
  }
}
