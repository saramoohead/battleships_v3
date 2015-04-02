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

Given(/^I am on the new game page$/) do
  visit '/new_game'
end

Then(/^I can see a board$/) do
  expect(page).to have_selector('table tr')
end