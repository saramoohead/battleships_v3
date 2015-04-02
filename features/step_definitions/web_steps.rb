Given(/^I am on the homepage$/) do
  visit '/'
end

When(/^I fill in "([^"]*)" with "([^"]*)"$/) do |field, value|
  fill_in(field, :with => value)
end

When(/^I click "([^"]*)" button$/) do |arg1|
  click_button(arg1)
end

When(/^I do not fill in my "([^"]*)"$/) do |field|
  fill_in(field, :with => "")
end

Then(/^I see "([^"]*)"$/) do |text|
  expect(page).to have_content(text)
end

Given(/^I am on the play game page$/) do
  visit '/play_game'
end

Then(/^I can see "([^"]*)" on the board$/) do |text|
  steps %{ Given I am on the homepage
    And I click "Register" button
    }
  expect(page).to have_content(text)
end
