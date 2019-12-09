/*
 * behaviorChart 用来记录玩家行为记录的满值，多则表示行为记录越完整
 * 角色行为记录chart值为唯一引导玩家做判断的内容。
 */
import 'package:flutter/material.dart';
import 'package:werewolf_quantjudge/1.behaviorChart/chartBar.dart';
import '../models/individual.dart';
import '../models/data.dart';

class BehaviorChart extends StatelessWidget {
  /* Properties */
  final List<IndividualRecord> individualRecords2;

  final List<IndividualRecord> individualRecords = SimulateData().individualRecords;

  /* Constructor */
  BehaviorChart(this.individualRecords2);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.blueGrey,
      elevation: 10,
      margin: EdgeInsets.all(8),
      child: Container(
          width: double.infinity,
          height: 150,
          margin: EdgeInsets.all(10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: individualRecords.map((individualRecord) {
              return ChartBar(
                individualRecord.player,
                individualRecord.maxBehaviorTotal,
                individualRecord.indBehaviorTotal,
                individualRecord.behaviorRecords,
              );
            }).toList(),
          )),
    );
  }
}
