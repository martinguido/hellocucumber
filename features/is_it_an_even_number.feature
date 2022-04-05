Feature: Is it an Even number?
  Everybody wants to know if a number is even

  Scenario Outline: A number is or is not Even
    Given The number is "<number>"
    When I ask whether it's an even number
    Then I should be told "<answer>"

  Examples:
    | number            | answer |
    | 0                 | Yes, it is!   |
    | 1                 | No, it is an odd number   |
    | 2                 | Yes, it is!   |
    | 3                 | No, it is an odd number   |
    | 4                 | Yes, it is!   |
    | 5                 | No, it is an odd number   |
    | 10                | Yes, it is!   |