import 'package:flutter/material.dart';

class ProfileMenuButton extends StatelessWidget {
  const ProfileMenuButton({super.key, required this.icon, required this.text});

  final Icon icon;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5)),
                primary: Colors.white,
                padding: const EdgeInsets.all(10),
                fixedSize: Size(2, 15)),
            child: icon),
        const SizedBox(
          height: 5,
        ),
        Text(
          text,
          style: Theme.of(context)
              .textTheme
              .bodySmall
              ?.copyWith(fontSize: 12, color: Colors.white),
        )
      ],
    );
  }
}
