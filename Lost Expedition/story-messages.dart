void clearScreen() {
  print('\x1B[2J\x1B[0;0H');
}

// Intro

void intro() {
  String message = '''
========================================
          THE LOST EXPEDITION
========================================

You are the leader of an expedition
sent to an unknown region.

After a violent storm, you find yourself
with 3 adult team members at the entrance
of a mysterious valley.

The path behind you has collapsed.
There is no going back... only forward.
''';

  clearScreen();
  print(message);
}

// Chapter One

void chapterOne() {
  String message = '''
========================================
        Chapter One: The Valley
========================================

You stand at a crossroads.
The river rushes on the left —
faster but dangerous.
The mountain is on the right —
longer but safer.

Your team waits for your decision...

What do you do?

[1] Cross the river
[2] Follow the mountain
''';

  print(message);
}

void ch1River() {
  String message = '''
You cross the river with difficulty.
The cold water sweeps away one of your
team members.

Team -1 | Trust -1 
''';

  clearScreen();
  print(message);
}

void ch1Mountain() {
String message = '''
You climb slowly. The team trusts you
because you chose safety.

Trust +1 | Food -1
''';

  clearScreen();
  print(message);
}

String strangeTree = '''
You notice a strange tree, It's not so far of your way.

[1] Go check it
[2] Ignore it
''';

String treeSupplies = '''
It's a special tree, it has a rare kind of fruit!

Food +2
''';

// Chapter Two

void chapterTwo() {
  String message = '''
========================================
        Chapter Two: The Parting
========================================

In the evening, one of your team says:
"I want to go back. I can't continue."

The team looks at you.
The decision is yours.

What do you do?

[1] Talk to him, let him decide,
    and give him his share of supplies if he leaves

[2] Force him to stay

[3] Let him leave with nothing
''';

  print(message);
}

void ch2TalkAndGiveChoice() {
  String message = '''
You sit with him and explain the risks:
the way back is uncertain, and staying
is also a risk.

"The decision is yours," you say.
"We will respect your choice."

He listens quietly...

Trust +1
''';

  clearScreen();
  print(message);
}

String stayMessage = '''
He decides to stay.
"I trust you," he says.
"Let's continue together."
''';

String leaveMessage = '''
He decides to leave.
"I'm sorry," he says.
"I have to try my own way."

You give him his share of supplies.

Team -1
''';

void ch2ForceToStay() {
  String message = '''
He walks with you in silence.
The others notice.

A leader who forces others
is not respected.

Trust -1
''';

  clearScreen();
  print(message);
}

void ch2LetGoWithNothing() {
  String message = '''
He walks away with nothing.

The team watches in silence.
Some of them look at you differently now.

Team -1 | Trust -1
''';

  clearScreen();
  print(message);
}

// Chapter Three

void chapterThree() {
  String message = '''
========================================
        Chapter Three: The Summit
========================================

You reach the summit of the valley.
From here you can see the way out!

But one of your team has fallen and
is badly injured. He cannot walk.

What do you do?

[1] Carry him
[2] Leave him
''';

  print(message);
}

void ch3Carry() {
  String message = '''
You carry him. You arrive.
exhausted... But satisfied you didn’t leave him behind.

Trust +1
''';

  clearScreen();
  print(message);
}

void ch3Leave() {
  String message = '''
"I'll catch up," he says.
You know he is lying.
You walk on.

Trust -1
''';

  clearScreen();
  print(message);
}

