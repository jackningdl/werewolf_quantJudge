import 'package:flutter/material.dart';
import 'package:werewolf_quantjudge/3.gameJudge/gameIntroduction/configCardGroup/configCard/configCard.dart';
import '../../../data/wolfDatabase.dart';
import '../../../models/gameIntroModel.dart';

class ConfigCardGroup extends StatelessWidget {
  final List<CharacterConfiguration> configs =
      WolfDataBase().characterConfigurations;
  final Map<GamePattern, String> patternMap = WolfDataBase().patternMap;
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: configs.length,
      itemBuilder: (ctx, index) {
        // 每个card有一个配置名称，一组按人数配置的牌板.
        var gameConfigName = patternMap[configs[index].gameConfigName];
        var charConfigs = configs[index].charConfigs;
        var specialChars = configs[index].specialIntroPool;
        return Container(
          child: Card(
            margin: EdgeInsets.all(10),
            color: Colors.white10,
            child: Column(
              children: <Widget>[
                // 显示板子类型，比如 ”狼美守卫“
                Container(
                  padding: EdgeInsets.all(10),
                  child: Text(gameConfigName),
                ),
                // 显示板子的配置信息，1. 特殊身份介绍 2. 人数配置
                Container(
                  child: ConfigCard(gameConfigName, charConfigs, specialChars),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
