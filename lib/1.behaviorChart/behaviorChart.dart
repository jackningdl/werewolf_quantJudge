/*
 * behaviorChart 用来记录玩家行为记录的满值，多则表示行为记录越完整
 * 角色行为记录chart值为唯一引导玩家做判断的内容。
 */
import 'package:flutter/material.dart';
import '../models/individual.dart';
import '../models/behavior.dart';
import '../controllers/behaviorController.dart';

class BehaviorChart extends StatelessWidget {

  // 引进来的是从main里额外记录的behaviors，要转换成以player为主导的单人behaviors集合。
  
  /* Properties */
  final List<Behavior> behaviors;
  Map<int, IndividualRecord> individualRecords = {};

  BehaviorController chartObject = new BehaviorController();

  BehaviorChart(this.behaviors);



  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.blueGrey,
      elevation: 10,
      margin: EdgeInsets.all(10),
      child: Container(
        width: double.infinity,
        height: 150,
        child: Row(children: <Widget>[

        ],)
      ),
    );
  }
}
