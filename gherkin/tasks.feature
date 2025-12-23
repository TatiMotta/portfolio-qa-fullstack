Feature: Tasks CRUD
  Scenario: Create a new task
    Given I am logged in
    When I create a task with title "Comprar pão"
    Then the task "Comprar pão" should appear in the list

  Scenario: Validate task title boundary
    Given I am logged in
    When I create a task with title "ab"
    Then I should see an error message "Title must be at least 3 characters"

  Scenario: Mark task as done
    Given I am logged in
    And I have a task "Estudar Playwright"
    When I mark "Estudar Playwright" as done
    Then the task should appear as completed
