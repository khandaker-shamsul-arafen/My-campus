import 'package:flutter/material.dart';

class EightPageView extends StatelessWidget {
  const EightPageView({super.key});

  // const Dropdown1Widget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 80,
      height: 40,
      child: DropdownButton(
        value: 0,
        isDense: true,
        isExpanded: true,
        enableFeedback: true,
        iconDisabledColor: const Color(0xFF7F7F7F),
        dropdownColor: Colors.white,
        focusColor: Colors.white,
        borderRadius: BorderRadius.zero,
        onChanged: (value) {},
        items: const [
          DropdownMenuItem(
            value: 0,
            child: Text(
              'Item 0',
              style: TextStyle(
                color: Colors.black,
                fontSize: 16,
                fontFamily: 'Poppins',
              ),
            ),
          ),
          DropdownMenuItem(
            value: 1,
            child: Text(
              'Item 1',
              style: TextStyle(
                color: Colors.black,
                fontSize: 16,
                fontFamily: 'Poppins',
              ),
            ),
          ),
          DropdownMenuItem(
            value: 2,
            child: Text(
              'Item 2',
              style: TextStyle(
                color: Colors.black,
                fontSize: 16,
                fontFamily: 'Poppins',
              ),
            ),
          )
        ],
        selectedItemBuilder: (context) => [
          Container(
            constraints: const BoxConstraints(
              maxWidth: 56,
            ),
            child: const Text(
              'Item 0',
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                color: Colors.black,
                fontSize: 16,
                fontFamily: 'Poppins',
              ),
            ),
          ),
          Container(
            constraints: const BoxConstraints(
              maxWidth: 56,
            ),
            child: const Text(
              'Item 1',
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                color: Colors.black,
                fontSize: 16,
                fontFamily: 'Poppins',
              ),
            ),
          ),
          Container(
            constraints: const BoxConstraints(
              maxWidth: 56,
            ),
            child: const Text(
              'Item 2',
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                color: Colors.black,
                fontSize: 16,
                fontFamily: 'Poppins',
              ),
            ),
          )
        ],
      ),
    );
  }
}
