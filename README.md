# Bowling Dojo
Hi and welcome to the Bowling Dojo. This Dojo is inspired by the Bowling Dojo by Andreas Larsson. You can find the original dojo description [here](http://codingdojo.org/kata/Bowling/). The special thing here is, that we learn Behaviour Driven Development (BDD) by using [SpecFlow](http://specflow.org/). BDD can help to get the business and IT departments to provide shared language (domain specific language) about the features to be developed. For example, it enables the Product Owner to describe acceptance criteria, that can be tested automatically.

In order to get SpecFlow working, you have to install the Visual Studio Extension "SpecFlow for Visual Studio 2015" (in case you are using the 2015 version). Once you have installed the extension and checked out this repository, you can get started by following these steps:

* Open Solution in Visual Studio
* Call `Restore Nuget packages`
* Call `Run Unit Tests`
* Everything should be green - now follow the tasks 

## Scenario
We need a Bowling Score Calculator. We can calculate the Bowling Score by identifying the throws of a player. 

* X indicates a strike (all ten pins knocked down in first try)
* / indicates a spare (all ten pins knocked down in two tries)
* \- indicates a miss
* 1-9 indicates the normal score

Bowling is a round based game, which consists of ten rounds. In each round, a player has two tries to knock down every pin. The special thing in calculating the score of a bowling game is the point, that when the player handles to knock down all pins, he can run for extra points for that round. 

If a player strikes, the next two throws are added on top of the score for the round with the strike. When having a Spare, at least the next throw is added to the round score. This means for example, a player can have 12 strike throws in a row to gain a total sum of 300 points. 

Keep in mind, that your primary task is to calculate a score by given throws. It is not the purpose of this dojo to validate the throws or handle any exceptional cases. But make sure, your described scenarios contain valid throws.

## Task 1
Now have a look at the `BowlingScore.feature` file in the `lise.dojo.bowling.specs` project. This file describes the feature of the Bowling Score in general and defines one scenario. With this setup, you can get familiar with writing SpecFlow specifications. You should also read the [SpecFlow getting started docs on how to use Feature files](http://specflow.org/getting-started/#AddingFeature).

Think about possible (test) scenarios and try to describe them. You can reuse step definitions. When you are finished, let SpecFlow generate the `BowlingScoreSteps.cs` file, which will contain correlating code to your scenarios. You can do this by right clicking in the `BowlingScore.feature` file content and click `Generate Step Definitions` in the context menu.

Maybe you need more help or documentation, than the getting started doc provides, then you should have a look right here:
* [SpecFlow Documentation](http://specflow.org/documentation/)

## Task 2
Now that you have set up scenarios and generated the steps code, you should make the steps fulfill the desired action. There are two parts to consider, first you have to write tests, that get running, and second, you have to write the production code, that will let the running tests pass. The production code belongs into the `BowlingScoreCalculator.cs` file in the `lise.dojo.bowling` project. Your test code belongs into the `BowlingScoreSteps.cs` file in the `lise.dojo.bowling.specs` project.

This solution is set up with NUnit and FluentAssertions, here are some helpful links when using these libaries:
* [SpecFlow Documentation](http://specflow.org/documentation/)
* [NUnit Documentation](https://github.com/nunit/docs/wiki/NUnit-Documentation)
* [FluentAssertions Documentation](https://fluentassertions.com/documentation)

## Credits
written by [Steve Korzinetzki](https://twitter.com/skorzinetzki)
