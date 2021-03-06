import 'package:flutter/material.dart';
import 'package:werewolf_quantjudge/models/gameIntroModel.dart';
import '../models/individual.dart';
import '../models/behavior.dart';
import '../models/mappedBehavior.dart';
import '../models/category.dart';

class SimulateData {
  List<MappedBehavior> get mappedBehaviors {
    List<MappedBehavior> mappedBehaviors = [
      MappedBehavior(
        turn: 1,
        turnBehaviors: [
          Behavior(
            turn: 1,
            id: '1',
            player: 1,
            describeTab: "坐姿表情",
            quantity: 50,
            date: DateTime.now(),
          ),
          Behavior(
            turn: 1,
            id: '2',
            player: 1,
            describeTab: "发言逻辑",
            quantity: 50,
            date: DateTime.now(),
          ),
          Behavior(
            turn: 1,
            id: '3',
            player: 2,
            describeTab: "站边举票",
            quantity: 50,
            date: DateTime.now(),
          ),
          Behavior(
            turn: 1,
            id: '4',
            player: 3,
            describeTab: "站边举票行为",
            quantity: 40,
            date: DateTime.now(),
          ),
        ],
      ),
      MappedBehavior(
        turn: 2,
        turnBehaviors: [
          Behavior(
            turn: 1,
            id: '5',
            player: 1,
            describeTab: "坐姿表情2",
            quantity: 50,
            date: DateTime.now(),
          ),
          Behavior(
            turn: 1,
            id: '6',
            player: 2,
            describeTab: "站边举票2",
            quantity: 50,
            date: DateTime.now(),
          ),
          Behavior(
            turn: 1,
            id: '7',
            player: 3,
            describeTab: "站边举票行为2",
            quantity: 40,
            date: DateTime.now(),
          ),
        ],
      ),
      MappedBehavior(
        turn: 3,
        turnBehaviors: [
          Behavior(
            turn: 1,
            id: '8',
            player: 1,
            describeTab: "坐姿表情3",
            quantity: 50,
            date: DateTime.now(),
          ),
          Behavior(
            turn: 1,
            id: '9',
            player: 2,
            describeTab: "站边举票3",
            quantity: 50,
            date: DateTime.now(),
          ),
        ],
      ),
    ];
    return mappedBehaviors;
  }

  List<Behavior> get behaviors {
    final List<Behavior> behaviors = [
      Behavior(
        id: '1',
        player: 1,
        turn: 2,
        describeTab: '坐姿状态',
        quantity: 50,
        date: DateTime.now(),
      ),
      Behavior(
        id: '2',
        player: 1,
        describeTab: '发言逻辑',
        quantity: 30,
        date: DateTime.now(),
        turn: 1,
      ),
      Behavior(
        id: '3',
        player: 2,
        describeTab: '站边举票',
        quantity: 20,
        date: DateTime.now(),
        turn: 1,
      ),
      Behavior(
        id: '4',
        player: 2,
        describeTab: '站边举票',
        quantity: 20,
        date: DateTime.now(),
        turn: 2,
      ),
      Behavior(
        id: '5',
        player: 3,
        describeTab: '站边举票行为',
        quantity: 20,
        date: DateTime.now(),
        turn: 3,
      ),
    ];
    return behaviors;
  }

  List<IndividualRecord> get individualRecords {
    List<IndividualRecord> individualRecords = [
      IndividualRecord(
        player: 1,
        indBehaviorTotal: 140,
        maxBehaviorTotal: 160,
        turnRecords: [
          TurnRecord(
            turn: 1,
            behaviors: [
              Behavior(
                turn: 1,
                player: 1,
                describeTab: "坐姿表情",
                quantity: 50,
              ),
              Behavior(
                turn: 1,
                player: 1,
                describeTab: "发言逻辑",
                quantity: 30,
              ),
            ],
          ),
          TurnRecord(
            turn: 2,
            behaviors: [
              Behavior(
                turn: 2,
                player: 1,
                describeTab: "坐姿表情",
                quantity: 60,
              ),
            ],
          ),
        ],
        behaviorRecords: [
          BehaviorRecord(
            behaviorTag: '坐姿表情',
            behaviorQuantity: 110,
          ),
          BehaviorRecord(
            behaviorTag: '发言逻辑',
            behaviorQuantity: 30,
          ),
        ],
      ),
      IndividualRecord(
        player: 2,
        indBehaviorTotal: 150,
        maxBehaviorTotal: 160,
        turnRecords: [
          TurnRecord(
            turn: 1,
            behaviors: [
              Behavior(
                turn: 1,
                describeTab: "坐姿表情2",
                quantity: 50,
              ),
              Behavior(
                turn: 1,
                describeTab: "发言逻辑2",
                quantity: 40,
              ),
            ],
          ),
          TurnRecord(
            turn: 2,
            behaviors: [
              Behavior(
                turn: 2,
                describeTab: "坐姿表情",
                quantity: 60,
              ),
            ],
          ),
        ],
        behaviorRecords: [
          BehaviorRecord(
            behaviorTag: '坐姿表情',
            behaviorQuantity: 110,
          ),
          BehaviorRecord(
            behaviorTag: '发言逻辑',
            behaviorQuantity: 40,
          ),
        ],
      ),
      IndividualRecord(
        player: 3,
        indBehaviorTotal: 150,
        maxBehaviorTotal: 160,
        turnRecords: [
          TurnRecord(
            turn: 1,
            behaviors: [
              Behavior(
                turn: 1,
                player: 1,
                describeTab: "坐姿表情",
                quantity: 40,
              ),
              Behavior(
                turn: 1,
                player: 1,
                describeTab: "发言逻辑",
                quantity: 50,
              ),
            ],
          ),
          TurnRecord(
            turn: 2,
            behaviors: [
              Behavior(
                turn: 2,
                player: 1,
                describeTab: "坐姿表情",
                quantity: 60,
              ),
            ],
          ),
        ],
        behaviorRecords: [
          BehaviorRecord(
            behaviorTag: '坐姿表情',
            behaviorQuantity: 100,
          ),
          BehaviorRecord(
            behaviorTag: '发言逻辑',
            behaviorQuantity: 50,
          ),
        ],
      ),
      IndividualRecord(
        player: 4,
        indBehaviorTotal: 140,
        maxBehaviorTotal: 160,
        turnRecords: [
          TurnRecord(
            turn: 1,
            behaviors: [
              Behavior(
                turn: 1,
                player: 1,
                describeTab: "坐姿表情",
                quantity: 50,
              ),
              Behavior(
                turn: 1,
                player: 1,
                describeTab: "发言逻辑",
                quantity: 30,
              ),
            ],
          ),
          TurnRecord(
            turn: 2,
            behaviors: [
              Behavior(
                turn: 2,
                player: 1,
                describeTab: "坐姿表情",
                quantity: 60,
              ),
            ],
          ),
        ],
        behaviorRecords: [
          BehaviorRecord(
            behaviorTag: '坐姿表情',
            behaviorQuantity: 110,
          ),
          BehaviorRecord(
            behaviorTag: '发言逻辑',
            behaviorQuantity: 30,
          ),
        ],
      ),
      IndividualRecord(
        player: 5,
        indBehaviorTotal: 150,
        maxBehaviorTotal: 160,
        turnRecords: [
          TurnRecord(
            turn: 1,
            behaviors: [
              Behavior(
                turn: 1,
                describeTab: "坐姿表情2",
                quantity: 50,
              ),
              Behavior(
                turn: 1,
                describeTab: "发言逻辑2",
                quantity: 40,
              ),
            ],
          ),
          TurnRecord(
            turn: 2,
            behaviors: [
              Behavior(
                turn: 2,
                describeTab: "坐姿表情",
                quantity: 60,
              ),
            ],
          ),
        ],
        behaviorRecords: [
          BehaviorRecord(
            behaviorTag: '坐姿表情',
            behaviorQuantity: 110,
          ),
          BehaviorRecord(
            behaviorTag: '发言逻辑',
            behaviorQuantity: 40,
          ),
        ],
      ),
      IndividualRecord(
        player: 6,
        indBehaviorTotal: 150,
        maxBehaviorTotal: 160,
        turnRecords: [
          TurnRecord(
            turn: 1,
            behaviors: [
              Behavior(
                turn: 1,
                player: 1,
                describeTab: "坐姿表情",
                quantity: 40,
              ),
              Behavior(
                turn: 1,
                player: 1,
                describeTab: "发言逻辑",
                quantity: 50,
              ),
            ],
          ),
          TurnRecord(
            turn: 2,
            behaviors: [
              Behavior(
                turn: 2,
                player: 1,
                describeTab: "坐姿表情",
                quantity: 60,
              ),
            ],
          ),
        ],
        behaviorRecords: [
          BehaviorRecord(
            behaviorTag: '坐姿表情',
            behaviorQuantity: 100,
          ),
          BehaviorRecord(
            behaviorTag: '发言逻辑',
            behaviorQuantity: 50,
          ),
        ],
      ),
      IndividualRecord(
        player: 7,
        indBehaviorTotal: 140,
        maxBehaviorTotal: 160,
        turnRecords: [
          TurnRecord(
            turn: 1,
            behaviors: [
              Behavior(
                turn: 1,
                player: 1,
                describeTab: "坐姿表情",
                quantity: 50,
              ),
              Behavior(
                turn: 1,
                player: 1,
                describeTab: "发言逻辑",
                quantity: 30,
              ),
            ],
          ),
          TurnRecord(
            turn: 2,
            behaviors: [
              Behavior(
                turn: 2,
                player: 1,
                describeTab: "坐姿表情",
                quantity: 60,
              ),
            ],
          ),
        ],
        behaviorRecords: [
          BehaviorRecord(
            behaviorTag: '坐姿表情',
            behaviorQuantity: 110,
          ),
          BehaviorRecord(
            behaviorTag: '发言逻辑',
            behaviorQuantity: 30,
          ),
        ],
      ),
      IndividualRecord(
        player: 8,
        indBehaviorTotal: 150,
        maxBehaviorTotal: 160,
        turnRecords: [
          TurnRecord(
            turn: 1,
            behaviors: [
              Behavior(
                turn: 1,
                describeTab: "坐姿表情2",
                quantity: 50,
              ),
              Behavior(
                turn: 1,
                describeTab: "发言逻辑2",
                quantity: 40,
              ),
            ],
          ),
          TurnRecord(
            turn: 2,
            behaviors: [
              Behavior(
                turn: 2,
                describeTab: "坐姿表情",
                quantity: 60,
              ),
            ],
          ),
        ],
        behaviorRecords: [
          BehaviorRecord(
            behaviorTag: '坐姿表情',
            behaviorQuantity: 110,
          ),
          BehaviorRecord(
            behaviorTag: '发言逻辑',
            behaviorQuantity: 40,
          ),
        ],
      ),
      IndividualRecord(
        player: 9,
        indBehaviorTotal: 150,
        maxBehaviorTotal: 160,
        turnRecords: [
          TurnRecord(
            turn: 1,
            behaviors: [
              Behavior(
                turn: 1,
                player: 1,
                describeTab: "坐姿表情",
                quantity: 40,
              ),
              Behavior(
                turn: 1,
                player: 1,
                describeTab: "发言逻辑",
                quantity: 50,
              ),
            ],
          ),
          TurnRecord(
            turn: 2,
            behaviors: [
              Behavior(
                turn: 2,
                player: 1,
                describeTab: "坐姿表情",
                quantity: 60,
              ),
            ],
          ),
        ],
        behaviorRecords: [
          BehaviorRecord(
            behaviorTag: '坐姿表情',
            behaviorQuantity: 100,
          ),
          BehaviorRecord(
            behaviorTag: '发言逻辑',
            behaviorQuantity: 50,
          ),
        ],
      ),
      IndividualRecord(
        player: 10,
        indBehaviorTotal: 140,
        maxBehaviorTotal: 160,
        turnRecords: [
          TurnRecord(
            turn: 1,
            behaviors: [
              Behavior(
                turn: 1,
                player: 1,
                describeTab: "坐姿表情",
                quantity: 50,
              ),
              Behavior(
                turn: 1,
                player: 1,
                describeTab: "发言逻辑",
                quantity: 30,
              ),
            ],
          ),
          TurnRecord(
            turn: 2,
            behaviors: [
              Behavior(
                turn: 2,
                player: 1,
                describeTab: "坐姿表情",
                quantity: 60,
              ),
            ],
          ),
        ],
        behaviorRecords: [
          BehaviorRecord(
            behaviorTag: '坐姿表情',
            behaviorQuantity: 110,
          ),
          BehaviorRecord(
            behaviorTag: '发言逻辑',
            behaviorQuantity: 30,
          ),
        ],
      ),
      IndividualRecord(
        player: 11,
        indBehaviorTotal: 150,
        maxBehaviorTotal: 160,
        turnRecords: [
          TurnRecord(
            turn: 1,
            behaviors: [
              Behavior(
                turn: 1,
                describeTab: "坐姿表情2",
                quantity: 50,
              ),
              Behavior(
                turn: 1,
                describeTab: "发言逻辑2",
                quantity: 40,
              ),
            ],
          ),
          TurnRecord(
            turn: 2,
            behaviors: [
              Behavior(
                turn: 2,
                describeTab: "坐姿表情",
                quantity: 60,
              ),
            ],
          ),
        ],
        behaviorRecords: [
          BehaviorRecord(
            behaviorTag: '坐姿表情',
            behaviorQuantity: 110,
          ),
          BehaviorRecord(
            behaviorTag: '发言逻辑',
            behaviorQuantity: 40,
          ),
        ],
      ),
      IndividualRecord(
        player: 12,
        indBehaviorTotal: 150,
        maxBehaviorTotal: 160,
        turnRecords: [
          TurnRecord(
            turn: 1,
            behaviors: [
              Behavior(
                turn: 1,
                player: 1,
                describeTab: "坐姿表情",
                quantity: 40,
              ),
              Behavior(
                turn: 1,
                player: 1,
                describeTab: "发言逻辑",
                quantity: 50,
              ),
            ],
          ),
          TurnRecord(
            turn: 2,
            behaviors: [
              Behavior(
                turn: 2,
                player: 1,
                describeTab: "坐姿表情",
                quantity: 60,
              ),
            ],
          ),
        ],
        behaviorRecords: [
          BehaviorRecord(
            behaviorTag: '坐姿表情',
            behaviorQuantity: 100,
          ),
          BehaviorRecord(
            behaviorTag: '发言逻辑',
            behaviorQuantity: 50,
          ),
        ],
      ),
      IndividualRecord(
        player: 13,
        indBehaviorTotal: 140,
        maxBehaviorTotal: 160,
        turnRecords: [
          TurnRecord(
            turn: 1,
            behaviors: [
              Behavior(
                turn: 1,
                player: 1,
                describeTab: "坐姿表情",
                quantity: 50,
              ),
              Behavior(
                turn: 1,
                player: 1,
                describeTab: "发言逻辑",
                quantity: 30,
              ),
            ],
          ),
          TurnRecord(
            turn: 2,
            behaviors: [
              Behavior(
                turn: 2,
                player: 1,
                describeTab: "坐姿表情",
                quantity: 60,
              ),
            ],
          ),
        ],
        behaviorRecords: [
          BehaviorRecord(
            behaviorTag: '坐姿表情',
            behaviorQuantity: 110,
          ),
          BehaviorRecord(
            behaviorTag: '发言逻辑',
            behaviorQuantity: 30,
          ),
        ],
      ),
      IndividualRecord(
        player: 14,
        indBehaviorTotal: 150,
        maxBehaviorTotal: 160,
        turnRecords: [
          TurnRecord(
            turn: 1,
            behaviors: [
              Behavior(
                turn: 1,
                describeTab: "坐姿表情2",
                quantity: 50,
              ),
              Behavior(
                turn: 1,
                describeTab: "发言逻辑2",
                quantity: 40,
              ),
            ],
          ),
          TurnRecord(
            turn: 2,
            behaviors: [
              Behavior(
                turn: 2,
                describeTab: "坐姿表情",
                quantity: 60,
              ),
            ],
          ),
        ],
        behaviorRecords: [
          BehaviorRecord(
            behaviorTag: '坐姿表情',
            behaviorQuantity: 110,
          ),
          BehaviorRecord(
            behaviorTag: '发言逻辑',
            behaviorQuantity: 40,
          ),
        ],
      ),
      IndividualRecord(
        player: 15,
        indBehaviorTotal: 150,
        maxBehaviorTotal: 160,
        turnRecords: [
          TurnRecord(
            turn: 1,
            behaviors: [
              Behavior(
                turn: 1,
                player: 1,
                describeTab: "坐姿表情",
                quantity: 40,
              ),
              Behavior(
                turn: 1,
                player: 1,
                describeTab: "发言逻辑",
                quantity: 50,
              ),
            ],
          ),
          TurnRecord(
            turn: 2,
            behaviors: [
              Behavior(
                turn: 2,
                player: 1,
                describeTab: "坐姿表情",
                quantity: 60,
              ),
            ],
          ),
        ],
        behaviorRecords: [
          BehaviorRecord(
            behaviorTag: '坐姿表情',
            behaviorQuantity: 100,
          ),
          BehaviorRecord(
            behaviorTag: '发言逻辑',
            behaviorQuantity: 50,
          ),
        ],
      ),
      IndividualRecord(
        player: 16,
        indBehaviorTotal: 150,
        maxBehaviorTotal: 160,
        turnRecords: [
          TurnRecord(
            turn: 1,
            behaviors: [
              Behavior(
                turn: 1,
                describeTab: "坐姿表情2",
                quantity: 50,
              ),
              Behavior(
                turn: 1,
                describeTab: "发言逻辑2",
                quantity: 40,
              ),
            ],
          ),
          TurnRecord(
            turn: 2,
            behaviors: [
              Behavior(
                turn: 2,
                describeTab: "坐姿表情",
                quantity: 60,
              ),
            ],
          ),
        ],
        behaviorRecords: [
          BehaviorRecord(
            behaviorTag: '坐姿表情',
            behaviorQuantity: 110,
          ),
          BehaviorRecord(
            behaviorTag: '发言逻辑',
            behaviorQuantity: 40,
          ),
        ],
      ),
    ];
    return individualRecords;
  }

  List<Category> categories = [
    Category(
      id: 'c1',
      title: '湾区组局',
      color: Colors.purple,
      routeName: '/meetup',
    ),
    Category(
      id: 'c2',
      title: '玩家记录行为',
      color: Colors.pink,
      routeName: '/behavior-HomePage',
    ),
    Category(
      id: 'c3',
      title: '狼人杀小法官',
      color: Colors.red,
      routeName: '/game-judge',
    ),
    Category(
      id: 'c4',
      title: '狼人杀英雄榜',
      color: Colors.yellow,
      routeName: '/meetup',
    ),
  ];

  Map<int, Character> characterGroup = {
    1 : Character(
      seerSight: SeerSight.goodMan,
      identity: Special.seer,
      live: true,
    ),
    2 : Character(
      seerSight: SeerSight.goodMan,
      identity: Special.idiot,
      live: true,
      skillStatus: true,
    ),
    3 : Character(
      seerSight: SeerSight.goodMan,
      identity: Special.blackMarketer,
      live: true,
    ),
    4 : Character(
      seerSight: SeerSight.goodMan,
      identity: Special.witch,
      live: true,
      skillStatus: true,
    ),
    5 : Character(
      seerSight: SeerSight.goodMan,
      identity: Special.hunter,
      live: true,
      skillStatus: true,
    ),
    6 : Character(
      seerSight: SeerSight.goodMan,
      identity: Villager.ordinVillager,
      live: true,
    ),
    7 : Character(
      seerSight: SeerSight.goodMan,
      identity: Villager.ordinVillager,
      live: true,
    ),
    8 : Character(
      seerSight: SeerSight.goodMan,
      identity: Villager.ordinVillager,
      live: true,
    ), 
    9 : Character(
      seerSight: SeerSight.goodMan,
      identity: ThirdParty.bastard,
      live: true,
    ), 
    10 : Character(
      seerSight: SeerSight.goodMan,
      identity: Wolf.brotherOldWolf,
      live: true,
    ), 
    11 : Character(
      seerSight: SeerSight.goodMan,
      identity: Wolf.brotherYoungWolf,
      live: true,
    ), 
    12 : Character(
      seerSight: SeerSight.goodMan,
      identity: Wolf.ordinWolf,
      live: true,
    ), 
    13 : Character(
      seerSight: SeerSight.goodMan,
      identity: Wolf.ordinWolf,
      live: true,
    ), 
  };
}
