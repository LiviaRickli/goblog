Feature:
  As a visiter I want to manage my blog

  Scenario: Listing all blogs
    Given an existing blog with the title "livia"
    And an existing blog with the title "nieuwe blog"

    When I go to the blogs page

    Then I should see "livia"
    Then I should see "nieuwe blog"

  Scenario: Add a new blog

    When I go to the blogs page
    And I click on link "Add a new blog"

    Then I should see "Title"
    And I should see "Text"

    When I fill in "nieuwe blog" as "Title"
    And I fill in "Dit is mijn nieuwe blog" as "Text"
    And I click on link "Save Article"

    Then I should see "nieuwe blog"
    And I should see "Dit is mijn nieuwe blog"
