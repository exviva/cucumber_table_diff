Feature: table diffs

  Scenario:
    When my table looks like this:
      | |
    Then the diff should handle a single empty cell

  Scenario:
    When my table looks like this:
      | | |
    Then the diff should handle two empty cells
