Feature: BowlingScore
	In order to display bowling scores
	As a bowling game host
	I want to have a bowling score calculator

@strike
Scenario: Play two rounds with strike in first round
	Given I scored a strike
	When I score a 7
	And I score a 2
	Then the score of the first round should be 19
	And the score of the second round should be 9
	And the total score should be 28