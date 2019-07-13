> This is in my opinion the best example of a counterintuitive result from a seemingly straightforward game.
>
> The name of the problem comes from the host for a game show called "Let's Make a Deal" and involves a part of the show where a contestant could potentially win a new car. The rules are this: The contestant is given the choice of 3 closed doors. Behind one of the doors is the new car, and behind the other two is a goat (the booby prize). The player chooses one door, after which the host, Monty Hall opens one of the other doors, always the one with a goat. Monty Hall then offers the contestant the option to switch doors to the other unopened door as their final play. Whether the contestant switches or not, the game ends with all three doors open. If the player's door has the car behind it, then they've won the game.

<a href="https://www.youtube.com/watch?v=4Lb-6rxZxx0" title="Monty Hall Problem">
    <img alt="Monty Hall Problem" src="https://github.com/bubnicbf/cda_learning/blob/master/bayes_classifier/img/monty_hall.png" width="500px" height="500px" />
</a>

So the counter-intuitive part of this comes from the second round of play–when Monty Hall offers you the chance to switch.  The intuitive path of thought here is that the player has a 50-50 chance between the two doors, but in reality the player doubles their chance by switching.  In case you missed it, Monty Hall has given you information about what's behind the doors: "The goat was never behind that particular door you didn't choose."  Having information changes the way the problem is described.  It's no longer 3 doors with a ⅓-⅓-⅓ probability.  It's not even a problem with 2 doors and a ½-½ probability, because now you have prior information.  Here's the actual situation:

Let's call the doors A, B, and C so that P(A) is the probability that the car is behind door A, P(B) is the probability that the car is behind door B, and so on.  Suppose you choose door A.  Now say x is the event where Monty Hall reveals the goat behind door B.  (The choice of door B is arbitrary, you can rework this with door C and get the same result).  Using Bayes' theorem, the probability of the car being behind door A is:

<img alt="Monty Hall Problem" src="https://github.com/bubnicbf/cda_learning/blob/master/bayes_classifier/img/stay.png" width="500px" height="200px" />

And the probability of the car being behind door C is:

<img alt="Monty Hall Problem" src="https://github.com/bubnicbf/cda_learning/blob/master/bayes_classifier/img/switch.png" width="500px" height="200px" />

The crucial difference making A and C unequal is that P(x|A) = ½, but P(x|C) = 1. If A will be has the car, then Monty Hall can tell the player that either B or C has the goat, and hence P(x|A) = ½; whereas if C has the car, then Monty Hall can only tell the contestant that B is has the goats, so P(x|C) = 1.  Monty Hall is giving the player information by revealing one of the doors that has the goat behind, so the player, if given the choice, should always switch doors to give themselves the higher chance of success.