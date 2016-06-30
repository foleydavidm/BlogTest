require_relative 'PopulateBlog'
require 'watir-webdriver'

class RegisterAuthors

  popBlog = PopulateBlog.new
  popBlog.create_and_register_authors

end