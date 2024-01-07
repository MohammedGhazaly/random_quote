import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:quote_gen_clean_arc/core/utils/app_colors.dart';

class RandomQuotesBody extends StatelessWidget {
  const RandomQuotesBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: AppColors.primaryColor,
              borderRadius: BorderRadius.circular(
                16,
              ),
            ),
            child: Column(
              children: [
                Text(
                  "“Above all, don't lie to yourself. The man who lies to himself and listens to his own lie comes to a point that he cannot distinguish the truth within him, or around him, and so loses all respect for himself and for others. And having no respect he ceases to love.”",
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.white,
                  ),
                ),
                Text(
                  "ـــــ Fyodor Dostoevsky",
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          Align(
            alignment: Alignment.center,
            child: Container(
              padding: EdgeInsets.all(4),
              decoration: BoxDecoration(
                color: AppColors.primaryColor,
                borderRadius: BorderRadius.circular(50),
              ),
              child: IconButton(
                onPressed: () {},
                icon: Icon(
                  CupertinoIcons.restart,
                  color: Colors.white,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
