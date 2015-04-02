Given(/^I am on the homepage$/) do
  visit '/'
end

When(/^I fill in "([^"]*)" with "([^"]*)"$/) do |field, value|
  fill_in(field, :with => value)
end

When(/^I click "([^"]*)" button$/) do |arg1|
  click_button(arg1)
end

Then(/^I see "([^"]*)"$/) do |text|
  expect(page).to have_content(text)
end
