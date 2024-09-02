import 'package:big_jesu_note/theme/themeProvider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      appBar: AppBar(
        elevation: 0,
        // automaticallyImplyLeading: false,
        backgroundColor: Colors.transparent,
        foregroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal:25, vertical: 20),
        margin:  EdgeInsets.only(left: 25, right: 25, top: 10),
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.primary,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            //
            Text("Dark Mode", style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Theme.of(context).colorScheme.inversePrimary,

            ),),

            //switch
            CupertinoSwitch(value: Provider.of<ThemeProvider>(context, listen: false).isDarkMode,
                onChanged: (value)=> Provider.of<ThemeProvider>(context, listen: false).toggleTheme()),
          ],
        ),
      ),
    );
  }
}


