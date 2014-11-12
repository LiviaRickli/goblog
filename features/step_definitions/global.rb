And(/^I should see "([^"]*)"$/) do |text|
  expect(page).to have_content text
end


When(/^I click on link "([^"]*)"$/) do |link|
  click_on link
end


And(/^I fill in "([^"]*)" as "([^"]*)"$/) do |text, field_name|
  fill_in field_name, with: text
end
