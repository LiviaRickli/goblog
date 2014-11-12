When(/^I visit the blog page$/) do
  visit "/blogs"
end

Given(/^an existing blog with the title "([^"]*)"$/) do |blog_title|
  create(:blog, title: blog_title)
end

And(/^I go to the blogs page$/) do
  visit blogs_path
end
