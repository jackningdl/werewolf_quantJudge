import 'package:flutter/material.dart';
import 'package:werewolf_quantjudge/models/behavior.dart';

class IndividualRecord {
  int player;
  List<TurnRecord> turnRecords;
  List<Behavior> behaviorRecords;

  IndividualRecord({
    this.player,
    this.turnRecords,
    this.behaviorRecords,
  });
}

class TurnRecord {
  int turn;
  List<Behavior> behaviors;
  TurnRecord({this.turn, this.behaviors});
}

