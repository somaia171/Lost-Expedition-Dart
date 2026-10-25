import 'dart:io';
import 'story-messages.dart';
import 'end-messages.dart';

void clearScreen() {
  print('\x1B[2J\x1B[0;0H');
}

int team = 3;
int trust = 3;
int food = 3;

String? ch1Choice, ch2Choice, ch3Choice;

bool respectMemberChoice = false;

bool memberForcedToStay = false;

bool finishAllChapters = false;

void chapterSupplies() {
  clearScreen();
  print("Each chapter requires (1 food) to survive.");
  stdout.write("\nPress enter to take (1 food) and start the next chapter... ");
  stdin.readLineSync() ?? '';
}

void showResources() {
  print("\nResources:");
  print("Team: $team | Trust: $trust | Food: $food");
  stdout.write("\nPress Enter... ");
  stdin.readLineSync() ?? '';
}

void startChapterOne() {
  chapterOne();
  while (true) {
    stdout.write("\nChoose (1 or 2): ");
    ch1Choice = stdin.readLineSync() ?? '';

    if (ch1Choice == "1") {
      ch1River();
      team--;
      trust--;
      showResources();
      break;

    } else if (ch1Choice == "2") {
      ch1Mountain();
      trust+=1;
      food--;
      showResources();

      clearScreen();
      print("\n" + strangeTree);
      while (true) {
        stdout.write("\nChoose (1 or 2): ");
        String treeChoice = stdin.readLineSync() ?? '';
        if (treeChoice == "1") {
          clearScreen();
          food+=2;
          print("\n" + treeSupplies);
          showResources();
          break;

        } else if (treeChoice == "2") {
          break;

        } else {
          print("\nInvalid Input.");
        }

      }
      break;

    } else {
      print("\nInvalid Input.");
    }
  }
}

void startChapterTwo() {
  chapterTwo();
  while (true) {
    stdout.write("\nChoose (1, 2, or 3): ");
    ch2Choice = stdin.readLineSync() ?? '';

    if (ch2Choice == "1") {
      ch2TalkAndGiveChoice();
      trust++;
      respectMemberChoice = true;
      showResources();

      if (trust > 3) {
        clearScreen();
        print(stayMessage);

      } else {
        team--;
        clearScreen();
        print(leaveMessage);
      }
      break;

    } else if (ch2Choice == "2") {
      ch2ForceToStay();
      trust--;
      memberForcedToStay = true;
      break;

    } else if (ch2Choice == "3") {
      ch2LetGoWithNothing();
      team--;
      trust--;
      break;

    } else {
      print("\nInvalid Input.");
    }
  }
}

void startChapterThree() {
  chapterThree();
  while (true) {
    stdout.write("\nChoose (1 or 2): ");
    ch3Choice = stdin.readLineSync() ?? '';

    if (ch3Choice == "1") {
      ch3Carry();
      trust++;
      break;

    } else if (ch3Choice == "2") {
      ch3Leave();
      trust--;
      team--;
      break;

    } else {
      print("\nInvalid Input.");
    }
  }
}

void endOfTheStory() {

  if (finishAllChapters == false && food == 0) {
    starvationEnding();

  } else if (team == 0) {
    lonelinessEnding();

  } else if (trust == 0) {
    betrayalEnding();

  } else if (respectMemberChoice == true && team == 3) {
    trueVictoryEnding();
  
  } else if (respectMemberChoice == true && ch3Choice == "1" && ch1Choice == "1") {
    RiverMemoryEnding();

  } else if (respectMemberChoice == true && ch3Choice == "2") {
    brokenRespectEnding();

  } else if (memberForcedToStay == true && team == 3) {
    bitterVictoryEnding();

  } else if (memberForcedToStay == true && team < 3) {
    hollowObedienceEnding();

  } else if (ch2Choice == "3" && team == 2) {
    crueltyEnding();

  } else if (ch2Choice == "3" && team == 1) {
    heavyPriceEnding();

  } else {
    print("Error: No ending matched!\n");
  }

  stdout.write("Press Enter... ");
  stdin.readLineSync() ?? '';
}

void reset() {
  team = 3;
  trust = 3;
  food = 3;
  respectMemberChoice = false;
  memberForcedToStay = false;
  finishAllChapters = false;
}

void playLostExpedition() {
  intro();
  showResources();

  chapterSupplies();
  food--;
  clearScreen();
  startChapterOne();

  chapterSupplies();
  food--;
  clearScreen();
  startChapterTwo();
  showResources();

  if (trust > 0 && food > 0) {
    chapterSupplies();
    food--;
    clearScreen();
    startChapterThree();
    showResources();
    finishAllChapters = true;
  }

  endOfTheStory();

  reset();
}

