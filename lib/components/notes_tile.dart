import 'package:flutter/material.dart';
import 'package:popover/popover.dart';

import 'note_settings_page.dart';

class NotesTile extends StatelessWidget {
  const NotesTile({super.key, required this.text, this.onEditPressed, this.onDeletePressed});
  final String text;
  final void Function()? onEditPressed;
  final void Function()? onDeletePressed;
  @override
  Widget build(BuildContext context) {
    return Container(

      padding: const EdgeInsets.all(12),
      margin:  const EdgeInsets.only(left: 25, right: 25, top: 10),
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.primary,
        borderRadius: BorderRadius.circular(8),
      ),
      child:ListTile(
        title: Text(text),
        trailing: Builder(builder: (context)=> IconButton(
            onPressed: () => showPopover(
              context: context,
              height: 100, width: 100,
              backgroundColor: Theme.of(context).colorScheme.surface,
              bodyBuilder: (context) => NoteSettings(
                onDeletePressed: onDeletePressed,
                onEditPressed: onEditPressed,
              ),
            ),
            icon: const Icon(Icons.more_vert, color: Colors.grey,),),)
      ),
    );
  }
}
