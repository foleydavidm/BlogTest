require 'watir-webdriver'
require_relative 'CreateFakeBlogUtility'

class PopulateBlog

  @START_URL = ''
  @REGISTRATION_URL = 'http://localhost:8080/blog/user/signup'

  #sign_in
  @SIGN_IN_NAME_ID = 'name'
  @SIGN_IN_PASSWORD_ID = 'password'
  @SIGN_IN_BUTTON_ID = 'signup'

  #create Post
  @CREATE_POST_TITLE_ID = ''
  @CREATE_POST_TEXT_ID = ''
  @SUBMIT_POST_BUTTON_ID = ''

  #create Post
  @CREATE_COMMENT_TEXT_ID = ''
  @SUBMIT_COMMENT_BUTTON_ID = ''

  @UNIVERSAL_PASSWORD = '12345'


  def create_and_register_authors
    @browser = Watir::Browser.new :firefox
    @browser.goto 'http://localhost:8080/blog/user/signup'

    # On the registration page...
    authors_names = ['J.R.R Tolkien', 'C.S.Lewis', 'J.G Ballard', 'Any Rand', 'Ezra Pound', 'Walt Whitman', 'Boethius', 'St. Augustine', 'Virgil', 'Dante', 'Percival']



    #authors_names.each do |author_name|
      puts "assigning values..."
      # @browser.text_field(:id =>@SIGN_IN_NAME_ID).set author_name
      # @browser.text_field(:id => @SIGN_IN_PASSWORD_ID).set @UNIVERSAL_PASSWORD
      #@browser.button('submitButton', :id => @SIGN_IN_BUTTON_ID).click
    #end
  end

  def sign_in_fake_user
    @browser.goto(@START_URL)

    author_name = CreateFakeBlogPost.new.create_fake_author

    name_sign_in_field = browser.text_field(:id, @SIGN_IN_NAME_ID)
    password_sign_in_field = browser.text_field(:id, @SIGN_IN_PASSWORD_ID)
    sign_in_button = browser.button(:id, @SIGN_IN_BUTTON_ID)

    name_sign_in_field.set(author_name)
    password_sign_in_field.set(author_password)
    sign_in_button.click
  end

  def create_blog_post
      # On the new post page...
      new_post_title_field = browser.text_field(:id, @CREATE_POST_TITLE_ID)
      new_post_text_field = browser.text_field(:id, @CREATE_POST_TEXT_ID)
      submit_post_button = browser.button(:id, @SUBMIT_POST_BUTTON_ID)

      post_title = CreateFakeBlogPost.new.create_fake_title
      post_text = CreateFakeBlogPost.new.create_fake_post

      new_post_title_field.set(post_title)
      new_post_text_field.set(post_text)
      submit_post_button.click
  end



  def create_comment
    new_comment_field = browser.text_field(:id, @CREATE_COMMENT_TEXT_ID)
    submit_comment_button = browser.text_field(:id, @SUBMIT_COMMENT_BUTTON_ID)
    post_text = CreateFakeBlogPost.new.create_fake_author
    new_comment_field.set(post_text)
    submit_comment_button.click
  end

end






















