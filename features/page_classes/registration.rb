require 'page-object'

class Registration
  include PageObject

  page_url 'http://localhost:8080/blog/user/signup'

  text_field(:user_field, :id => 'name')
  text_field(:user_password, :id => 'password')
  button(:submit, :id => 'registerNewUser')

end