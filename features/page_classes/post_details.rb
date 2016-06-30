require 'page-object'

class PostDetails
  include PageObject

  url = 'localhost:8080/Blog/view/title'

  text_field(:comment, :id => 'newComment')
  button(:submit, :id => 'submitBottom')

end