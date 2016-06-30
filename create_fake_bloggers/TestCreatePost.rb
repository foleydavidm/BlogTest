require 'watir-webdriver'
require 'page-object'
require_relative 'CreateFakeBlogUtility'

class TestCreatePost


  BLOG_TEXT_AREA_ID = 'id: blogpost'
  BLOG_TITLE_AREA_ID = 'id: blogtitle'


  for i in 0...10
    # fake_author = CreateFakeBlogPost.new.create_fake_author
    # puts fake_author + ':'
    a = i

    fake_title = CreateFakeBlogPost.new.create_fake_title
    puts fake_title

    fake_post = CreateFakeBlogPost.new.create_fake_post
    puts fake_post

    puts 'Comments:'
    fake_comment = CreateFakeBlogPost.new.create_fake_comment
    puts fake_comment

    puts ''

  end



  # fake_author = CreateFakeBlogPost.new.create_fake_author
  # puts fake_author


  # create_fake_blog_post = CreateFakeBlogPost.new
  # fake_author = create_fake_blog_post.create_fake_author
  # puts fake_author

  # def create_blog_posts
  #   browser = Watir::Browser.new
  #   browser = Watir::Browser.start("http://...")
  #
  #
  #
  #   #somehow get to page for creating blogpost
  #   blog_text_area = browser.text_field(:name, BLOG_TEXT_AREA_ID)
  #   blog_title_area = browser.text_field(:name, BLOG_TITLE_AREA_ID)
  #
  #
  #
  # end

end