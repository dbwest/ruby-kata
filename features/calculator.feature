Feature:
  As a human being
  I want a calculator to do math for me
  So that I can reduce the errors that I make

  @add
  Scenario: it adds numbers
    Given I have entered 1
      And I have selected plus
      And I have entered 2
      And I have selected plus
      And I have entered 3
    When I select equals
    Then the display shows 6

  @subtract
  Scenario: it subtracts numbers
    Given I have entered 8
      And I have selected minus
      And I have entered 2
      And I have selected minus
      And I have entered 4
    When I select equals
    Then the display shows 2

  @add @subtract
  Scenario: it adds and subtracts numbers 
    Given I have entered 8
      And I have selected minus
      And I have entered 2
      And I have selected plus
      And I have entered 4
    When I select equals
    Then the display shows 10

