void clearScreen() {
  print('\x1B[2J\x1B[0;0H');
}

void starvationEnding() {
  String message = '''
========================================
        🍂 THE STARVATION ENDING
========================================

Your supplies ran out at the worst
possible moment.

No one survived, you all died.

========================================
''';

  clearScreen();
  print(message);
}


void betrayalEnding() {
  String message = '''
========================================
        🗡️ THE BETRAYAL ENDING
========================================

The team turns against you
at the final moment.
No one trusts you anymore.

========================================
''';

  clearScreen();
  print(message);
}


void lonelinessEnding() {
  String message = '''
========================================
        👤 THE LONELINESS ENDING
========================================

You arrive alone. A bitter victory.

No one is there to share the end
with you.

========================================
''';

  clearScreen();
  print(message);
}


void trueVictoryEnding() {
  String message = '''
========================================
          🌟 THE TRUE VICTORY
========================================

You arrive together. The expedition
survives.

You made hard choices, and you
respected the choices of others.

The sun sets on a great leader.

========================================
''';

  clearScreen();
  print(message);
}


void RiverMemoryEnding() {
  String message = '''
========================================
        🌊 THE RIVER'S MEMORY
========================================

You arrive... but not whole.

The river took one of your own.

You respected every choice after that.
You forced no one.
You carried the wounded to the end.

But the river does not care
about honor.

You carry the memory of the one
it took — and the weight of
what could have been.

Victory casts a shadow.

========================================
''';

  clearScreen();
  print(message);
}


void bitterVictoryEnding() {
  String message = '''
========================================
        ⚔️ THE BITTER VICTORY
========================================

You arrive. The whole team is alive.
The expedition succeeds.

But no one celebrates.

They remember that you forced
one of them to stay.

They look at the path behind them
and think: "We survived this time...
but what if the path was wrong?"

========================================
''';

  clearScreen();
  print(message);
}


void hollowObedienceEnding() {
  String message = '''
========================================
        ⛓️ THE HOLLOW OBEDIENCE
========================================

You arrive... but not whole.

You forced one of them to stay.
And still, another was lost.

They look at the path behind them
and think: "We obeyed... and we
still lost someone. What was it for?"

They will not follow you again.

========================================
''';

  clearScreen();
  print(message);
}


void crueltyEnding() {
  String message = '''
========================================
            🪨 THE CRUELTY
========================================

You arrive... with the team you have left.

You let one of them walk away
with nothing.

You do not know if he survived.
You may never know.

They obey you.
But they do not trust you.

========================================
''';

  clearScreen();
  print(message);
}


void heavyPriceEnding() {
  String message = '''
========================================
          💔 THE HEAVY PRICE
========================================

You arrive... but at a cost.

You let one of them walk away
with nothing.
And another was lost along the way.

Your harshness saved no one.

The team is smaller, and quieter.
They follow you — but they no longer
look you in the eye.

========================================
''';

  clearScreen();
  print(message);
}


void brokenRespectEnding() {
  String message = '''
========================================
        🥀 THE BROKEN RESPECT
========================================

You arrive... but not whole.

You respected his choice to stay.
You did not force anyone.

But at the summit, you left the wounded
behind.

The team walks in silence.

You led with honor once.
But honor is fragile.

========================================
''';
  clearScreen();
  print(message);
}

