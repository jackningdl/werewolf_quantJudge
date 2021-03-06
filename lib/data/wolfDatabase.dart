import '../models/category.dart';
import '../models/gameIntroModel.dart';
import 'package:flutter/material.dart';

class WolfDataBase {
  // 玩家行为的标签
  List<String> describeTagList = [
    '站错预言家',
    '疑似冲票行为',
    '狼视角保好人',
    '票型与身份相悖',
    '发言与身份相悖',
    '掰发言',
    '忽视抗推位',
    '狼视角爆刀口',
  ];

  // App 主页面的选项
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
      routeName: '/score-list',
    ),
  ];

  // 小法官页面的选项
  List<Category> judgeCategories = [
    Category(
      id: 'jc1',
      title: '创建房间',
      color: Colors.teal[100],
      routeName: '/create-room',
    ),
    Category(
      id: 'jc2',
      title: '进入房间',
      color: Colors.teal[200],
      routeName: '/enter-room',
    ),
    Category(
      id: 'jc3',
      title: '返回当前房间',
      color: Colors.teal[300],
      routeName: '/return-to-room',
    ),
    Category(
      id: 'jc4',
      title: '查看游戏记录',
      color: Colors.teal[400],
      routeName: '/checking-history',
    ),
  ];

  // 角色配置对中文的map
  Map<Object, String> characterMap = {
    // 神队
    Special.seer: "预言家",
    Special.witch: "女巫",
    Special.hunter: "猎人",
    Special.idiot: "白痴",
    Special.guard: "守卫",
    Special.knight: "骑士",
    Special.witcher: "猎魔人",
    Special.blackMarketer: "黑市商人",
    Special.prohibiter: "禁票长老",
    // 狼队
    Wolf.brotherOldWolf: "狼兄弟（兄）",
    Wolf.brotherYoungWolf: "狼兄弟（弟）",
    Wolf.bloodMoonWolf: "血月使徒",
    Wolf.nightmareWolf: "梦魇",
    Wolf.gunWolf: "狼枪",
    Wolf.charmWolf: "狼美人",
    Wolf.ordinWolf: "狼人",
    // 民队
    Villager.ordinVillager: "普通村民",
    // 第三方未知站队
    ThirdParty.cupid: "丘比特",
    ThirdParty.robber: "盗贼",
    ThirdParty.shadow: "影子",
    ThirdParty.avenger: "复仇者",
    ThirdParty.bastard: "混子",
  };

  // GamePattern -> 板子中文 map
  Map<GamePattern, String> patternMap = {
    GamePattern.charmWolf_guard: '狼美守卫',
    GamePattern.blackmarket_wBros: '狼兄弟黑商',
    GamePattern.blood_witcher: '血月猎魔',
    GamePattern.cupid_robber: '丘比特盗贼',
    GamePattern.nightmare_guard: '梦魇守卫',
    GamePattern.shadow_avenger: '影子复仇者',
    GamePattern.s_w_h_i: '预女猎白(双边)',
    GamePattern.s_w_g_h_i3: '预女守猎白(5选3)'
  };

  // 角色配置 -> 根据玩家人数的具体配置
  List<CharacterConfiguration> characterConfigurations = [
    // 狼美守卫板子：12，13，15，16
    CharacterConfiguration(
      gameConfigName: GamePattern.charmWolf_guard,
      charConfigs: {
        12: CharacterSet(
          wolves: {
            Wolf.charmWolf: 1,
            Wolf.ordinWolf: 3,
          },
          specials: {
            Special.seer: 1,
            Special.witch: 1,
            Special.hunter: 1,
            Special.guard: 1,
          },
          villagers: {
            Villager.ordinVillager: 4,
          },
        ),
        13: CharacterSet(
          wolves: {
            Wolf.charmWolf: 1,
            Wolf.ordinWolf: 3,
          },
          specials: {
            Special.seer: 1,
            Special.witch: 1,
            Special.hunter: 1,
            Special.guard: 1,
          },
          villagers: {
            Villager.ordinVillager: 4,
          },
          thirdParties: {
            ThirdParty.bastard: 1,
          },
        ),
        15: CharacterSet(
          wolves: {
            Wolf.charmWolf: 1,
            Wolf.ordinWolf: 4,
          },
          specials: {
            Special.seer: 1,
            Special.witch: 1,
            Special.hunter: 1,
            Special.guard: 1,
            Special.prohibiter: 1
          },
          villagers: {
            Villager.ordinVillager: 5,
          },
        ),
        16: CharacterSet(
          wolves: {
            Wolf.charmWolf: 1,
            Wolf.ordinWolf: 4,
          },
          specials: {
            Special.seer: 1,
            Special.witch: 1,
            Special.hunter: 1,
            Special.guard: 1,
            Special.prohibiter: 1
          },
          villagers: {
            Villager.ordinVillager: 5,
          },
          thirdParties: {
            ThirdParty.bastard: 1,
          },
        ),
      },
      specialIntroPool: [Special.guard, Wolf.charmWolf],
    ),

    CharacterConfiguration(
      gameConfigName: GamePattern.blackmarket_wBros,
      charConfigs: {
        12: CharacterSet(
          wolves: {
            Wolf.brotherOldWolf: 1,
            Wolf.brotherYoungWolf: 1,
            Wolf.ordinWolf: 2,
          },
          specials: {
            Special.seer: 1,
            Special.witch: 1,
            Special.blackMarketer: 1,
            Special.idiot: 1,
          },
          villagers: {
            Villager.ordinVillager: 4,
          },
        ),
        13: CharacterSet(
          wolves: {
            Wolf.brotherOldWolf: 1,
            Wolf.brotherYoungWolf: 1,
            Wolf.ordinWolf: 2,
          },
          specials: {
            Special.seer: 1,
            Special.witch: 1,
            Special.blackMarketer: 1,
            Special.idiot: 1,
          },
          villagers: {
            Villager.ordinVillager: 4,
          },
          thirdParties: {
            ThirdParty.bastard: 1,
          },
        ),
        15: CharacterSet(
          wolves: {
            Wolf.brotherOldWolf: 1,
            Wolf.brotherYoungWolf: 1,
            Wolf.ordinWolf: 3,
          },
          specials: {
            Special.seer: 1,
            Special.witch: 1,
            Special.blackMarketer: 1,
            Special.idiot: 1,
            Special.hunter: 1,
          },
          villagers: {
            Villager.ordinVillager: 5,
          },
        ),
        16: CharacterSet(
          wolves: {
            Wolf.brotherOldWolf: 1,
            Wolf.brotherYoungWolf: 1,
            Wolf.ordinWolf: 3,
          },
          specials: {
            Special.seer: 1,
            Special.witch: 1,
            Special.blackMarketer: 1,
            Special.idiot: 1,
            Special.hunter: 1,
          },
          villagers: {
            Villager.ordinVillager: 5,
          },
          thirdParties: {
            ThirdParty.bastard: 1,
          },
        ),
      },
      specialIntroPool: [Special.blackMarketer, Wolf.brotherOldWolf],
    ),

    CharacterConfiguration(
      gameConfigName: GamePattern.nightmare_guard,
      charConfigs: {
        12: CharacterSet(
          wolves: {
            Wolf.nightmareWolf: 1,
            Wolf.ordinWolf: 3,
          },
          specials: {
            Special.seer: 1,
            Special.witch: 1,
            Special.hunter: 1,
            Special.guard: 1,
          },
          villagers: {
            Villager.ordinVillager: 4,
          },
        ),
        13: CharacterSet(
          wolves: {
            Wolf.nightmareWolf: 1,
            Wolf.ordinWolf: 3,
          },
          specials: {
            Special.seer: 1,
            Special.witch: 1,
            Special.hunter: 1,
            Special.guard: 1,
          },
          villagers: {
            Villager.ordinVillager: 4,
          },
          thirdParties: {
            ThirdParty.bastard: 1,
          },
        ),
      },
      specialIntroPool: [Special.guard, Wolf.nightmareWolf],
    ),

    CharacterConfiguration(
      gameConfigName: GamePattern.blood_witcher,
      charConfigs: {
        12: CharacterSet(
          wolves: {
            Wolf.bloodMoonWolf: 1,
            Wolf.ordinWolf: 3,
          },
          specials: {
            Special.seer: 1,
            Special.witch: 1,
            Special.witcher: 1,
            Special.idiot: 1,
          },
          villagers: {
            Villager.ordinVillager: 4,
          },
        ),
        13: CharacterSet(
          wolves: {
            Wolf.bloodMoonWolf: 1,
            Wolf.ordinWolf: 3,
          },
          specials: {
            Special.seer: 1,
            Special.witch: 1,
            Special.witcher: 1,
            Special.idiot: 1,
          },
          villagers: {
            Villager.ordinVillager: 4,
          },
          thirdParties: {
            ThirdParty.bastard: 1,
          },
        ),
      },
      specialIntroPool: [Special.witcher, Wolf.bloodMoonWolf],
    ),

    CharacterConfiguration(
      gameConfigName: GamePattern.cupid_robber,
      charConfigs: {
        12: CharacterSet(
          wolves: {
            Wolf.ordinWolf: 3,
          },
          specials: {
            Special.seer: 1,
            Special.witch: 1,
            Special.hunter: 1,
            Special.idiot: 1,
          },
          villagers: {
            Villager.ordinVillager: 5,
          },
          thirdParties: {
            ThirdParty.robber: 1,
            ThirdParty.cupid: 1,
          },
        ),
      },
      specialIntroPool: [ThirdParty.cupid, ThirdParty.robber],
    ),

    CharacterConfiguration(
      gameConfigName: GamePattern.shadow_avenger,
      charConfigs: {
        14: CharacterSet(
          wolves: {
            Wolf.ordinWolf: 4,
          },
          specials: {
            Special.seer: 1,
            Special.witch: 1,
            Special.hunter: 1,
            Special.guard: 1,
          },
          villagers: {
            Villager.ordinVillager: 4,
          },
          thirdParties: {
            ThirdParty.shadow: 1,
            ThirdParty.avenger: 1,
          },
        ),
        15: CharacterSet(
          wolves: {
            Wolf.ordinWolf: 4,
          },
          specials: {
            Special.seer: 1,
            Special.witch: 1,
            Special.hunter: 1,
            Special.guard: 1,
          },
          villagers: {
            Villager.ordinVillager: 4,
          },
          thirdParties: {
            ThirdParty.shadow: 1,
            ThirdParty.avenger: 1,
            ThirdParty.bastard: 1,
          },
        ),
        16: CharacterSet(
          wolves: {
            Wolf.ordinWolf: 5,
          },
          specials: {
            Special.seer: 1,
            Special.witch: 1,
            Special.hunter: 1,
            Special.guard: 1,
            Special.idiot: 1,
          },
          villagers: {
            Villager.ordinVillager: 4,
          },
          thirdParties: {
            ThirdParty.shadow: 1,
            ThirdParty.avenger: 1,
          },
        ),
      },
      specialIntroPool: [ThirdParty.shadow, ThirdParty.avenger],
    ),

    CharacterConfiguration(
      gameConfigName: GamePattern.s_w_h_i,
      charConfigs: {
        11: CharacterSet(
          wolves: {
            Wolf.ordinWolf: 4,
          },
          specials: {
            Special.seer: 1,
            Special.witch: 1,
            Special.hunter: 1,
            Special.idiot: 1,
          },
          villagers: {
            Villager.ordinVillager: 3,
          },
        ),
      },
      specialIntroPool: [Special.idiot],
    ),

    CharacterConfiguration(
      gameConfigName: GamePattern.s_w_g_h_i3,
      charConfigs: {
        9: CharacterSet(
          wolves: {
            Wolf.ordinWolf: 3,
          },
          specials: {
            Special.seer: 1,
            Special.witch: 1,
            Special.hunter: 1,
            Special.idiot: 1,
            Special.guard: 1,
          },
          villagers: {
            Villager.ordinVillager: 3,
          },
        ),
      },
      specialIntroPool: [Special.guard, Special.idiot],
    ),
  ];

  // 游戏人数限制选项
  List<String> playerAmounts = [
    '9',
    '11',
    '12',
    '13',
    '14',
    '15',
    '16',
  ];

  // 玩家人数 -> 根据角色配置的具体配置
  List<AmountConfiguration> amountConfigurations = [
    AmountConfiguration(
      playerAmount: 9,
      charConfigs: {
        GamePattern.s_w_g_h_i3: CharacterSet(
          wolves: {
            Wolf.ordinWolf: 3,
          },
          specials: {
            Special.seer: 1,
            Special.witch: 1,
            Special.hunter: 1,
            Special.idiot: 1,
            Special.guard: 1,
          },
          villagers: {
            Villager.ordinVillager: 3,
          },
        ),
      },
    ),
    AmountConfiguration(
      playerAmount: 11,
      charConfigs: {
        GamePattern.s_w_h_i: CharacterSet(
          wolves: {
            Wolf.ordinWolf: 4,
          },
          specials: {
            Special.seer: 1,
            Special.witch: 1,
            Special.hunter: 1,
            Special.idiot: 1,
          },
          villagers: {
            Villager.ordinVillager: 4,
          },
        ),
      },
    ),
    AmountConfiguration(
      playerAmount: 12,
      charConfigs: {
        GamePattern.charmWolf_guard: CharacterSet(
          wolves: {
            Wolf.nightmareWolf: 1,
            Wolf.ordinWolf: 3,
          },
          specials: {
            Special.seer: 1,
            Special.witch: 1,
            Special.hunter: 1,
            Special.guard: 1,
          },
          villagers: {
            Villager.ordinVillager: 4,
          },
        ),
        GamePattern.blackmarket_wBros: CharacterSet(
          wolves: {
            Wolf.brotherOldWolf: 1,
            Wolf.brotherYoungWolf: 1,
            Wolf.ordinWolf: 2,
          },
          specials: {
            Special.seer: 1,
            Special.witch: 1,
            Special.blackMarketer: 1,
            Special.idiot: 1,
          },
          villagers: {
            Villager.ordinVillager: 4,
          },
        ),
        GamePattern.blood_witcher: CharacterSet(
          wolves: {
            Wolf.bloodMoonWolf: 1,
            Wolf.ordinWolf: 3,
          },
          specials: {
            Special.seer: 1,
            Special.witch: 1,
            Special.witcher: 1,
            Special.idiot: 1,
          },
          villagers: {
            Villager.ordinVillager: 4,
          },
        ),
        GamePattern.nightmare_guard: CharacterSet(
          wolves: {
            Wolf.nightmareWolf: 1,
            Wolf.ordinWolf: 3,
          },
          specials: {
            Special.seer: 1,
            Special.witch: 1,
            Special.hunter: 1,
            Special.guard: 1,
          },
          villagers: {
            Villager.ordinVillager: 4,
          },
        ),
        GamePattern.cupid_robber: CharacterSet(
          wolves: {
            Wolf.ordinWolf: 3,
          },
          specials: {
            Special.seer: 1,
            Special.witch: 1,
            Special.hunter: 1,
            Special.idiot: 1,
          },
          villagers: {
            Villager.ordinVillager: 5,
          },
          thirdParties: {
            ThirdParty.robber: 1,
            ThirdParty.cupid: 1,
          },
        ),
      },
    ),
    AmountConfiguration(
      playerAmount: 13,
      charConfigs: {
        GamePattern.charmWolf_guard: CharacterSet(
          wolves: {
            Wolf.nightmareWolf: 1,
            Wolf.ordinWolf: 3,
          },
          specials: {
            Special.seer: 1,
            Special.witch: 1,
            Special.hunter: 1,
            Special.guard: 1,
          },
          villagers: {
            Villager.ordinVillager: 4,
          },
          thirdParties: {
            ThirdParty.bastard: 1,
          },
        ),
        GamePattern.blackmarket_wBros: CharacterSet(
          wolves: {
            Wolf.brotherOldWolf: 1,
            Wolf.brotherYoungWolf: 1,
            Wolf.ordinWolf: 2,
          },
          specials: {
            Special.seer: 1,
            Special.witch: 1,
            Special.blackMarketer: 1,
            Special.idiot: 1,
          },
          villagers: {
            Villager.ordinVillager: 4,
          },
          thirdParties: {
            ThirdParty.bastard: 1,
          },
        ),
      },
    ),
    AmountConfiguration(
      playerAmount: 14,
      charConfigs: {
        GamePattern.shadow_avenger: CharacterSet(
          wolves: {
            Wolf.ordinWolf: 4,
          },
          specials: {
            Special.seer: 1,
            Special.witch: 1,
            Special.hunter: 1,
            Special.guard: 1,
          },
          villagers: {
            Villager.ordinVillager: 4,
          },
          thirdParties: {
            ThirdParty.shadow: 1,
            ThirdParty.avenger: 1,
          },
        ),
      },
    ),
    AmountConfiguration(
      playerAmount: 15,
      charConfigs: {
        GamePattern.shadow_avenger: CharacterSet(
          wolves: {
            Wolf.ordinWolf: 4,
          },
          specials: {
            Special.seer: 1,
            Special.witch: 1,
            Special.hunter: 1,
            Special.guard: 1,
          },
          villagers: {
            Villager.ordinVillager: 4,
          },
          thirdParties: {
            ThirdParty.shadow: 1,
            ThirdParty.avenger: 1,
            ThirdParty.bastard: 1,
          },
        ),
        GamePattern.charmWolf_guard: CharacterSet(
          wolves: {
            Wolf.charmWolf: 1,
            Wolf.ordinWolf: 4,
          },
          specials: {
            Special.seer: 1,
            Special.witch: 1,
            Special.hunter: 1,
            Special.guard: 1,
            Special.prohibiter: 1
          },
          villagers: {
            Villager.ordinVillager: 5,
          },
        ),
        GamePattern.blackmarket_wBros: CharacterSet(
          wolves: {
            Wolf.brotherOldWolf: 1,
            Wolf.brotherYoungWolf: 1,
            Wolf.ordinWolf: 3,
          },
          specials: {
            Special.seer: 1,
            Special.witch: 1,
            Special.blackMarketer: 1,
            Special.idiot: 1,
            Special.hunter: 1,
          },
          villagers: {
            Villager.ordinVillager: 5,
          },
        ),
      },
    ),
    AmountConfiguration(
      playerAmount: 16,
      charConfigs: {
        GamePattern.shadow_avenger: CharacterSet(
          wolves: {
            Wolf.ordinWolf: 5,
          },
          specials: {
            Special.seer: 1,
            Special.witch: 1,
            Special.hunter: 1,
            Special.guard: 1,
            Special.idiot: 1,
          },
          villagers: {
            Villager.ordinVillager: 4,
          },
          thirdParties: {
            ThirdParty.shadow: 1,
            ThirdParty.avenger: 1,
          },
        ),
        GamePattern.charmWolf_guard: CharacterSet(
          wolves: {
            Wolf.charmWolf: 1,
            Wolf.ordinWolf: 4,
          },
          specials: {
            Special.seer: 1,
            Special.witch: 1,
            Special.hunter: 1,
            Special.guard: 1,
            Special.prohibiter: 1
          },
          villagers: {
            Villager.ordinVillager: 5,
          },
          thirdParties: {
            ThirdParty.bastard: 1,
          },
        ),
        GamePattern.blackmarket_wBros: CharacterSet(
          wolves: {
            Wolf.brotherOldWolf: 1,
            Wolf.brotherYoungWolf: 1,
            Wolf.ordinWolf: 3,
          },
          specials: {
            Special.seer: 1,
            Special.witch: 1,
            Special.blackMarketer: 1,
            Special.idiot: 1,
            Special.hunter: 1,
          },
          villagers: {
            Villager.ordinVillager: 5,
          },
          thirdParties: {
            ThirdParty.bastard: 1,
          },
        ),
      },
    ),
  ];
}
