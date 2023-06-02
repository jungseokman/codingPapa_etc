import 'package:flutter/material.dart';

import 'fooderlich_theme.dart';

class Card3 extends StatelessWidget {
  const Card3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        constraints: const BoxConstraints.expand(width: 350, height: 450),
        decoration: BoxDecoration(
          image: const DecorationImage(
            image: AssetImage('assets/mag2.png'),
            fit: BoxFit.cover,
          ),
          borderRadius: BorderRadius.circular(16),
        ),
        child: Stack(
          // 아래쪽으로 갈수록 위에 나옴 (순서)
          children: [
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  color: Colors.black38),
            ),
            Positioned(
              top: 16,
              left: 16,
              bottom: 16,
              right: 16,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  const Icon(
                    Icons.book,
                    color: Colors.white,
                    size: 42,
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Text(
                    'Recipe Trend',
                    style: FooderlichTheme.darkTextTheme.headline6,
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  Wrap(
                    alignment: WrapAlignment.end,
                    spacing: 4,
                    children: [
                      Chip(
                        onDeleted: () {
                          print('on chip deleted');
                        },
                        label: Text(
                          '건강',
                          style: FooderlichTheme.darkTextTheme.bodyText1,
                        ),
                      ),
                      Chip(
                        label: Text(
                          '헬스',
                          style: FooderlichTheme.darkTextTheme.bodyText1,
                        ),
                      ),
                      Chip(
                        label: Text(
                          '다이어트',
                          style: FooderlichTheme.darkTextTheme.bodyText1,
                        ),
                      ),
                      Chip(
                        label: Text(
                          '채식',
                          style: FooderlichTheme.darkTextTheme.bodyText1,
                        ),
                      ),
                      Chip(
                        label: Text(
                          '육식',
                          style: FooderlichTheme.darkTextTheme.bodyText1,
                        ),
                      ),
                      Chip(
                        label: Text(
                          '일일 권장 칼로리',
                          style: FooderlichTheme.darkTextTheme.bodyText1,
                        ),
                      ),
                      Chip(
                        label: Text(
                          '고기 요리',
                          style: FooderlichTheme.darkTextTheme.bodyText1,
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
