Given(/^I am on "(.*?)"$/) do |url|
  visit(url)
end


When(/^I click on link having text "([^"]*)"$/) do |text|
  click_link(text)
end


When(/^I fill in "([^"]*)" with the text "([^"]*)"$/) do |element, text|
  fill_in element, with:text
end

When(/^I press the css button "([^"]*)"$/) do |element|
	find_by_id(element).click
end

Then(/^I should see "(.*?)"$/) do |expectedText|
  page.has_content?(expectedText)
end


