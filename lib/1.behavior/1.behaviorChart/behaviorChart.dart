/*
 * behaviorChart 用来记录玩家行为记录的满值，多则表示行为记录越完整
 * 角色行为记录chart值为唯一引导玩家做判断的内容。
 */
import 'package:flutter/material.dart';
import 'chartBar.dart';
import '../../models/individual.dart';
import '../../data/simulatedData.dart';

class BehaviorChart extends StatelessWidget {

  /* Constructor */
  BehaviorChart(this.individualRecords);

  /* Properties */
  final List<IndividualRecord> individualRecords;
  // final List<IndividualRecord> individualRecords = SimulateData().individualRecords;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.grey[200],
      elevation: 10,
      margin: EdgeInsets.all(8),
      child: Container(
          width: double.infinity,
          //height: MediaQuery.of(context).size.height * 0.2,
          margin: EdgeInsets.all(6),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: individualRecords.map((individualRecord) {
              return Flexible(
                fit: FlexFit.tight,
                child: ChartBar(
                  individualRecord.player,
                  individualRecord.maxBehaviorTotal,
                  individualRecord.indBehaviorTotal,
                  individualRecord.behaviorRecords,
                ),
              );
            }).toList(),
          )),
    );
  }
}
