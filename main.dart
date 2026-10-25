import 'dart:io';
import './Lost Expedition/play.dart';

void clearScreen() {
  print('\x1B[2J\x1B[0;0H');
}

void main() {
  while (true) {
    clearScreen();
    print("*** Welcome To Story Games ***\n");
    print("1. Lost Expedition");
    print("2. Exit");
    stdout.write("\nEnter your choice (1 or 2): ");
    String userInput = stdin.readLineSync() ?? '';

    if (userInput == "1") {
      playLostExpedition();
      
    } else if (userInput == "2") {
      print("\nGoodbye..");
      break;
      
    } else {
      print("\nInvalid Input.");
      stdout.write("\nPress Enter..");
      stdin.readLineSync() ?? '';
    }
  }
}
