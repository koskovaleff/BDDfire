Given(/^I am login to Iconfirm "(.*?)"$/) do |url|
  visit(url)
  fill_in 'someone@example.com', with:'usqaex\rbass'
  fill_in 'Password', with:'Portal123!'
  find_by_id('submitButton').click
end

When(/^I select the "([^"]*)" button$/) do |button|
  click_button(button)
end

When(/^I fill in "([^"]*)" with the text "([^"]*)"$/) do |element, text|
  fill_in element, with:text
end

When(/^I select option "([^"]*)" from the dropdown "([^"]*)"$/) do |option, dropdown|
  select(option, from: dropdown)
end

When(/^I choose radio button "([^"]*)"$/) do |radiobutton|
  choose(radiobutton)
end

When(/^I press the css button "([^"]*)"$/) do |element|
	find_by_id(element).click


Then(/^I should see "(.*?)"$/) do |expectedText|
  page.has_content?(expectedText)
end


