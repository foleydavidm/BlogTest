require 'page-object'

class CreatePost
  include PageObject

  page_url 'localhost:8080/blog/post/create'

  text_field(:title, :id => 'title')
  text_field(:body, :id => 'postText')
  button(:submit, :id => 'submitButton')

end