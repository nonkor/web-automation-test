Feature: Shop groceries
  As a user
  I should be able to observe and order organic food
  So that I get food delivery to my home

  Scenario Outline: User observes organic food shops
    Given a visitor
    When the user specifies postcode
    Then available shops and products should be displayed

  Scenario Outline: User add products the a basket
    Given a <user_type>
    When the user adds next items to the basket:
      | lobster oil | Organic Hass Avocado |
      | 2           | 3                    |
    Then the user navigates to the basket preview
    And next items should be displayed:
      | lobster oil | Organic Hass Avocado |
      | 2           | 3                    |
    Examples:
      | user_type       |
      | registered user |
      | visitor         |

  Scenario Outline: User confirms the order
    Given a <user_type>
    And next items are added to the basket:
      | lobster oil | Organic Hass Avocado |
      | 2           | 3                    |
    When the user navigates to the basket preview
      | lobster oil | Organic Hass Avocado |
      | 2           | 3                    |
    And the user proceeds to the checkout
    And the user specifies delivery information and payment details
    Then the order should be confirmed
    Examples:
      | user_type       |
      | registered user |
      | visitor         |

