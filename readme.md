# Hangman or Save the Snowman

Hangman is a paper and pencil guessing game for two or more players. One player thinks of a word, phrase or sentence and the other tries to guess it by suggesting letters or numbers, within a certain number of guesses.

The word to guess is represented by a row of dashes, representing each letter of the word. In most variants, proper nouns, such as names, places, and brands, are not allowed. If the guessing player suggests a letter which occurs in the word, the other player writes it in all its correct positions. If the suggested letter or number does not occur in the word, the other player draws one element of a hanged man stick figure as a tally mark.

Rather than depict the hangman's gallows, I chose to use Olaf from the movie Frozen.  Every incorrect guess makes a part of Olaf dissapear.

  - I was tasked with creating an app wherein two players could play hangman.  Initially, this was to be played within the ruby console.  Once that task was complete, we were challenged to use the logic from the console version and using html, css, and javascript, create a front-end.  The most challenging portion of this endeavor proved to be ensuring the correctly guessed letter appears in the proper spot in the hidden word and allowing for multiple instances of the correctly guessed letter.
  - Were this to be deployed, I still need to let the user know if they have already guessed a letter and clean up the image of Olaf after an incorrect letter is guessed.
  - I did try my hand at adding sound to the app and was successful.  When you lose, one mp3 plays and when you win, another mp3 plays.  In the end, adding sound was both simple and satisfying.
