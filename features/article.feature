Feature:
  As a visiter I want to manage my blog

  Scenario: Listing all blogs
    Given an existing blog with the title "livia"
    And an existing blog with the title "nieuwe blog"

    When I go to the blogs page

    Then I should see "livia"
    And I should see "nieuwe blog"

  Scenario: Add a new blog
    When I go to the blogs page
    And I click on link "Add a new blog"

    Then I fill in "nieuwe blog" as "Title"
    And I fill in "Dit is mijn nieuwe blog" as "Text"
    And I click on link "Save Blog"

    Then I should see "nieuwe blog"
    And I should see "Dit is mijn nieuwe blog"

  Scenario: Edit an existing blog
    Given an existing blog with the title "livia"

    When I go to the blogs page
    And I click on link "Edit"

    Then I fill in "jankees" as "Title"
    And I click on link "Save Blog"

    Then I should see "jankees"

  Scenario: Delete an existing blog
    Given an existing blog with the title "jankees"

    When I go to the blogs page
    And I click on link "Delete"

    Then I should not see "jankees"
