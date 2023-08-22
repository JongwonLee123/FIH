// 3rd-party Packages
import 'package:flutter/material.dart';

// Local
import 'package:easy_tracker/utils/themes.dart';

// this thing returns true or false
// ===== WARNING =====
// handle delete from outside
// this does nothing inside

Future<bool> showConfirmDeleteDialog(BuildContext ctx, String s) async {
  return await showDialog(
    context: ctx,
    builder: (BuildContext context) {
      return ConfirmDeleteDialog(
        text: s,
      );
    }
  );
}

class ConfirmDeleteDialog extends StatelessWidget {
  final String text;

  const ConfirmDeleteDialog({
    super.key,
    required this.text
  });

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        Navigator.of(context).pop(false);
        return false;
      },
      child: Dialog(
        backgroundColor: Colors.white,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        elevation: 10,
        child: Container(
          padding: const EdgeInsets.symmetric(
            horizontal: 20,
            vertical: 10
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text(
                "This action can't be undone.",
                style: bodyMedium,
              ),
              Text(
                text,
                textAlign: TextAlign.center,
                style: bodyMedium,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  TextButton(
                    onPressed: () {
                      Navigator.of(context).pop(false);
                    },
                    style: txtBtnTheme,
                    child: const Text(
                      'Cancel',
                      style: bodySmall
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.of(context).pop(true);
                    },
                    style: txtBtnTheme,
                    child: const Text(
                      'Confirm',
                      style: bodySmallRed
                    ),
                  ),
                ],
              )
            ]
          )
        ),
      )
    );
  }
}