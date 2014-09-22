### Snakes and Ladders
To demonstrate Swift by example, we implemented a very simple version of the [Snakes and Ladders game](http://en.wikipedia.org/wiki/Snakes_and_Ladders)

#### Game rules
- the board plane is 5x5 big
- the goal is to reach the field number 25
- each turn the player roles a dice and moves by that number (1 - 6) of squares
- player wins only when standing on the square number 25
- some squares are connected via "snake", meaning that the player falls back from
one to the other interconnected field, and "ladders", meaning that the player
jumps up from one to the other interconnected field.
- we start with only one snake and one ladder
- on one square there is only one extra element (either a ladder or a snake)

#### Stuff you need
It works only with a beta version of XCode (we used XCode 6b6) as the XCode 6 GM version doesn't support Swift for OSX.

#### Learning resources
If you feel like it, here are some Swift resources we used, to learn about the language:

- [Apple Swift resources](https://developer.apple.com/swift/resources/)
- [Free Swift book / by Apple](https://itunes.apple.com/us/book/the-swift-programming-language/id881256329?mt=11&ls=1)
- [Tutorial covering all Swift basic features by Thinkster.io](https://thinkster.io/ios-tutorial/a-better-way-to-learn-swift/)

### Our idea
We show simple usage of following Swift features by doing TDD:

- functions & closures
- tupels
- let vs. var (especially with collections)
- collections (incl. + / map with clousure)
- switch with tupels
- testing with XCTest
