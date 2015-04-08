Feature: Visitor views post

  Scenario: Visitor clicks on post title
    Given I am a visitor
    And a post exists
    And I visit the homepage
    When I click on the title of the post
    Then I see the show page for that post

  Scenario: Visitor clicks on 'next' and 'previous' arrows
    Given I am a visitor
    And three posts exist
    When I go to the most recent post
    Then I see only a left arrow
    When I click the left arrow
    Then I see the second most recent post
    And I see a right arrow and a left arrow
    When I click the left arrow
    Then I see the least recent post
    And I see only a right arrow
    When I click the right arrow
    Then I see the second most recent post