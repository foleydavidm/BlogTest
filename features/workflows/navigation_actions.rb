require 'page-object'
require_relative '../../create_fake_bloggers/CreateFakeBlogUtility'

module NavigationActions

  include PageObject::PageFactory

  def login_as_blogger
    visit_page HomePage

    on_page HomePage do |page|
      page.name = 'steve'
      page.password = 'steve'
      page.submit
    end
  end

  def create_new_post
    visit_page CreatePost
    on_page CreatePost do |page|
      blog_title = CreateFakeBlogPost.new.create_fake_title
      blog_body = CreateFakeBlogPost.new.create_fake_post
      page.title = blog_title
      page.body = blog_body
      page.submit
    end
  end






end