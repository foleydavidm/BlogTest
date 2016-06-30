require 'page-object'

class HomePage
  include PageObject

  page_url "localhost:8080/blog/"

  text_field(:name, :id => 'userName')
  text_field(:password, :id => 'userPassword')
  button(:submit, :id => 'loginButton')

  button(:createNewPost, :id => 'createNewPost')
end