# Code Kata: Trading Card Game

In this [Code Kata](http://en.wikipedia.org/wiki/Kata_\(programming\)) you will be implementing a two-player trading card game. The rules are loosely based on [Hearthstone - Heroes of Warcraft®](http://us.battle.net/hearthstone/en/).

## Rules

### Preparation

| Rule |
| --- |
| Each player starts the game with 30 Health and 0 Mana slots. |
| Each player starts with a deck of 20 cards with all mana costs, between 0 and 8 |
| From the deck each player receives 4 cards as his initial hand. |
| Cards have Mana cost and Damage points. |

### Basic Gameplay

| Step | Rule |
| --- | --- |
| 1. | The active player receives 1 Mana slot up to a maximum of 10 total slots. |
| 2. | The active player's empty Mana slots are refilled. |
| 3. | The active player receives 1 card from the deck. |
| 3. | The active player can play as many cards as he can afford. Each card empties Mana slots equal to its Mana cost. Each card deals immediate damage to the opponent equal to its Damage points. |
| 5. | If the opponent player's Health drops to or below zero the active player wins the game. |
| 6. | The active player's turn ends when he hits the "end turn" button. |
