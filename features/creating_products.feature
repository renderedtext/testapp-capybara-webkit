Feature: Creating products

  @javascript
  Scenario: Creating a product
    Given I visit the create product page
    When I create a product
    Then I should see that I created a product
