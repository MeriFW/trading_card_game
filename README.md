# Code Kata: Trading Card Game

In this [Code Kata](http://en.wikipedia.org/wiki/Kata_\(programming\)) you will be implementing a two-player trading card game. The rules are loosely based on [Hearthstone - Heroes of Warcraft®](http://us.battle.net/hearthstone/en/).

## Rules

### Preparation

| Rule |
| --- |
| Each player starts the game with 30 _Health_ and 0 _Mana_ slots. |
| Each player starts with a deck of 20 cards with the following Mana costs: 0,0,1,1,2,2,2,3,3,3,3,4,4,4,5,5,6,6,7,8 |
| From the deck each player receives 3 random cards has his initial hand. |
| One player is randomly chosen to be the starting _active player_. The _other_ player draws a 4th card from his deck to compensate him for not playing the first turn. |

### Basic Gameplay

| Step | Rule |
| --- | --- |
| 1. | The active player receives 1 Mana slot up to a maximum of 10 total slots. |
| 2. | The active player's empty Mana slots are refilled. |
| 3. | The active player draws a random card from his deck. |
| 4. | The active player can play as many cards as he can afford. Any played card empties Mana slots and deals immediate damage  to the opponent player equal to its Mana cost. |
| 5. | If the opponent player's Health drops to or below zero the active player wins the game. |
| 6. | If the active player can't (by either having no cards left in his hand or lacking sufficient Mana to pay for any hand card) or simply doesn't want to play another card, the opponent player becomes active. |
