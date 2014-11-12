When(/^I visit the blog page$/) do
  visit "/articles"
end

Given(/^an existing blog with the title "([^"]*)"$/) do |blog_title|
  create(:article, title: blog_title)
end

And(/^I go to the blogs page$/) do
  visit articles_path
end
