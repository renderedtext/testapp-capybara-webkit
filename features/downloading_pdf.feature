Feature: Downloading pdf

  @javascript
  Scenario: Downloading pdf file
    Given I have a product
    And I visit the products page
    When I try to download a pdf file
    Then I should download the pdf file
