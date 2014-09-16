### Snakes and Ladders
To demonstrate Swift by example, we implemented a very simple version of the [Snakes and Ladders game](http://en.wikipedia.org/wiki/Snakes_and_Ladders)

#### Game rules
- the board plane is 5x5 big
- the goal is to reach the field number 25
- each turn the player roles a dice and moves by that number (1 - 6) of squares
- player wins only when standing on the square number 25*
- some squares are connected via "snake", meaning that the player falls back from
one to the other interconnected field, and "ladders", meaning that the player
jumps up from one to the other interconnected field. We have exactly 4 snakes and 4 ladders*
- on one square there is only one extra element (either a ladder or a snake)

- more rules to come...

#### Stuff you need
It works only with a beta version of XCode (we used XCode 6b6) as the XCode 6 GM version doesn't support Swift for OSX.

### Our idea
We show simple usage of following Swift features by doing TDD:

- functions & closures
- tupels
- let vs. var (especially with collections)
- collections (incl. + / map with clousure)
- switch with tupels
- testing with XCTest
