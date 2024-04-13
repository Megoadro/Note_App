import 'package:flutter/material.dart';

void SnakkBar(BuildContext context, String messegeForUser) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        backgroundColor: Colors.amberAccent,
        content: Text(
          messegeForUser,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
      ),
    );
  }