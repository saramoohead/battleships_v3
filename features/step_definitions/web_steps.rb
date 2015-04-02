Given(/^I am on the homepage$/) do
  visit '/'
end

When(/^I fill in "([^"]*)" with "([^"]*)"$/) do |field, value|
  fill_in(field, :with => value)
end

Then(/^I see "([^"]*)"$/) do |text|
  expect(page).to have_content(text)
end
