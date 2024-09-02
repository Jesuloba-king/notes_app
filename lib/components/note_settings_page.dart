import 'package:flutter/material.dart';

class NoteSettings extends StatefulWidget {
  const NoteSettings({super.key, this.onEditPressed, this.onDeletePressed});
  final void Function()? onEditPressed;
  final void Function()? onDeletePressed;

  @override
  State<NoteSettings> createState() => _NoteSettingsState();
}

class _NoteSettingsState extends State<NoteSettings> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [

        //edit
        InkWell(
          onTap: (){
            //pop
            Navigator.pop(context);
            widget.onEditPressed!();
          },
          child: Container(
            height: 50,
              color: Theme.of(context).colorScheme.surface,
            child: Center(child: Text("Edit", style: TextStyle(
              fontWeight: FontWeight.bold, color:  Theme.of(context).colorScheme.inversePrimary,
            ),),),
          ),
        ),

        //delete option
        InkWell(
          onTap: (){
            //pop
            Navigator.pop(context);
            widget.onDeletePressed!();
          },
          child: Container(
            height: 50,
            color: Theme.of(context).colorScheme.surface,
            child: Center(child: Text("Delete",style: TextStyle(
              fontWeight: FontWeight.bold, color:  Theme.of(context).colorScheme.inversePrimary,
            ),),),
          ),
        ),
      ],


    );
  }
}
