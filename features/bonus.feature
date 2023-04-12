Feature: Using bonuses of user to reduce the cost of the product
  In order to check the usage of bonuses in check out
  As a website user
  I need to be able to see the price's change

  Scenario: Using bonuses of user to reduce the cost of the product
   Given I am on "/"
   Then I click on css selector ".js-userSignin"
   Then I wait element ".js-phoneInput" appear
   Then I save screenshot to "overlay.png"
   Then I fill in "username" with "+79638155809"
   Then I save screenshot to "username.png"
   Then I submit "username"
   Then I save screenshot to "submit.png"
   Then I click on the ".js-formCode" with the text "Submit"
   Then I save screenshot to "confirm.png"
   Then I wait element ".js-userMenuContent .c-nav" appear
   Given I am on "/product/belie-shirokie-bryuki-5150/"
   Then I click on css selector ".js-cartButton"
   Then I save screenshot to "cartadding.png"
   Then I wait for ".js-cartCounter" to be visible
   Then I save screenshot to "cartcounter.png"
   Then I click on css selector ".js-cartModalOpen"
   Then I wait element ".js-updateCart" appear
   Then I save screenshot to "cartbonus.png"
   Then I click on element inside ".js-updateCart" with tag "label"
   Then I save screenshot to "withbonus.png"
   Then I wait for element with class "l-column -width6 u-marginBottomX025" to be visible
   Then I should see "Bonus points" in element with class "l-column -width6 u-marginBottomX025"
   Then I should see "-1674" in element with class "c-amount__amount"