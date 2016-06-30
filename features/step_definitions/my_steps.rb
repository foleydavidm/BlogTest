require_relative '../workflows/navigation_actions'

include NavigationActions



#creating_blog_entries.feature
#Scenario: New Blog Post
Given(/^I am logged in as a blogger$/) do
  login_as_blogger
  sleep 5
end
When(/^I publish a new blog post$/) do
  visit_page CreatePost
  create_new_post
end
Then(/^I am notified that the blog post was successfully added$/) do
  pending
end
And(/^the newly added blog post is at the top of the recent posts list$/) do
  pending
end



#Scenario: Register New Blogger
Given(/^I goto the registration page$/) do
 visit_page Registration
end

When(/^I enter a user name and password$/) do
 on_page Registration do |page|
   page.user_field = 'Orson Scott Card'
   page.user_password = '12345'
 end
end
And(/^click submit$/) do
  #on_page Registration do |page|
   # page.submit
  #end
end
Then(/^I am prompted with a notification of account creation$/) do
  pending
end



#reading_blog_features

#Scenario: View Recent Blot Posts
Given(/^my favorite blogger has been very active$/) do
  pending
end
When(/^I visit the blog for my favorite blogger$/) do
  pending
end
Then(/^then I should see a summary of my favorite blogger's (\d+) most recent posts in reverse order$/) do |arg|
  pending
end

#Scenario: View Blog Post
When(/^I choose a blog post$/) do
  pending
end
Then(/^I should see the blog post$/) do
  pending
end

#Scenario: Search for Blog Post
When(/^I search for a blog post$/) do
  pending
end
Then(/^I should see posts with that value in the title$/) do
  pending
end

#blog_comments

#Scenario: View Blog Comments
Then(/^I should see comments left by other readers$/) do
  pending
end

#Scenario: Leave A Comment

Given(/^I am reading a blog post from my favorite blogger$/) do
  pending
end
When(/^I add my genius comment to the blog post$/) do
  pending
end
Then(/^my genius comment is at the top of the blog post comments$/) do
  pending
end

