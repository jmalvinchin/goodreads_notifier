class HomeController < ApplicationController
  def index
    # @books = current_user.books
    @books = Book.all
  end
end
