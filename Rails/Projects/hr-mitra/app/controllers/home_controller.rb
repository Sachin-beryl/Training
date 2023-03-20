class HomeController < ActionController::Base
  def index
    @title_text = "Hello World"
    @subtitle_text = "I am using instance variable in Rails!"
  end
end