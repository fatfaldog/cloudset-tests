Feature: Profile menu
  In order to manage my profile info
  As a website user
  I need to be able to navigate by profile menu

  Background:
    Given I am logged in as Client
    Given I am on "/profile/"

  Scenario: Go to order history
    When I follow "заказы" in the ".userpage-aside__menu" element
    Then I should see "мои заказы" in the ".userpage__main" element

  Scenario: Go to bank cards management
    When I follow "финансы" in the ".userpage-aside__menu" element
    Then I should see "мои банковские карты" in the ".userpage__main" element

  Scenario: Go to transactions history
    When I follow "история операция" in the ".userpage-aside__menu" element
    Then I should see "история операций" in the ".userpage__main" element

  Scenario: Go to profile settings
    When I follow "настройки профиля" in the ".userpage-aside__menu" element
    Then I should see "настройки профиля" in the ".userpage__main" element

  Scenario: Go to bonus program
    When I follow "бонусная программа" in the ".userpage-aside__menu" element
    Then I should see "бонусная программа" in the ".userpage__main" element

  Scenario: Go to subscription
    When I follow "подписка" in the ".userpage-aside__menu" element
    Then I should see "подписка" in the ".userpage__main" element
